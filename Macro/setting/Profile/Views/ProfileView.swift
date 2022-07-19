//
//  ProfileView.swift
//  Macro
//
//  Created by Buthaina Albassam on 16/07/2022.
//

import SwiftUI
import Firebase
struct ProfileView: View {
    @State private var showingImagePicker = false
    @State private var providedProfiViewActive = false
    @ObservedObject private var viewModel = ProviderProdileVM()
    @State private var inputImage: UIImage?
    var storageManager = StorageManager()
    var body: some View {
    
        ZStack {
            Color.black.ignoresSafeArea()


                ScrollView(.vertical,showsIndicators:false,content: {

                    ZStack {
                        VStack(spacing:30) {
                            HStack(spacing:15) {
                                VStack(spacing:10) {
                                    AsyncImage(url:  URL(string:viewModel.user?.profilePic ?? "")){ image in
                                        image.resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width:70,height: 70)
                                            .clipShape(Circle())
                                    }placeholder: {
                                        Image("profile33")
                    
                                    }
                                    
                                    Button(action: {
                                        showingImagePicker = true
                                    }, label: {
                                        Text("Edit")
                                    })
                                }
                             
                                VStack(alignment:.leading) {
                                    Text(viewModel.user?.fullName ?? "")
                                        .foregroundColor(.white)
                                    
                                }
                                Spacer()
                            }.padding(.leading)
                            
                            VStack(spacing:25) {
                                HStack() {
                                    HStack(spacing:55){
                                        Image(systemName: "square.text.square")
                                            .foregroundColor(.white)
                                        Text("Number of orders")
                                            .foregroundColor(.white)
                                    }
                                    .padding(.leading)
                                    Spacer()
                                    Text("13 requests")
                                        .foregroundColor(.white)
                                }
                                HStack() {
                                    HStack(spacing:55) {
                                        Image(systemName: "envelope")
                                            .foregroundColor(.white)
                                        Text(viewModel.user?.email ?? "")
                                            .foregroundColor(.white)
                                    }
                                    .padding(.leading)
                                    Spacer()
//                                    Button(action: {
//                                        providedProfiViewActive = true
//                                    }, label: {
//                                        Image(systemName: "chevron.right")
//                                            .foregroundColor(.white)
//                                    })
                                }
                                
//                                HStack() {
//                                    HStack(spacing:55) {
//                                        Image(systemName: "star")
//                                        Text("Service provider ratings")
//                                    }
//                                    .padding(.leading)
//
//                                    Spacer()
//                                    Text("23")
//                                    Button(action: {
//                                        providedProfiViewActive = true
//                                    }, label: {
//                                        Image(systemName: "chevron.right")
//                                    })
//                                }
                                
                            }
                            .frame(maxWidth:.infinity,maxHeight: .infinity)
                            .padding(.trailing)
                        }.onLoad{
                            viewModel.fetchUserData()
                        }
                        .padding(.top,20)
                    }
                })
            NavigationLink(
                destination:ProviderProfileView(),
                isActive: $providedProfiViewActive,
                label: {
                    EmptyView()
                })
            .navigationBarTitle("Profile", displayMode: .inline)
                
                .toolbar {
                    ToolbarItem(placement: .automatic, content: {
                        Text("Profile")
                            .offset(x:-100)
                    })
                }

        }
        .onChange(of: inputImage) {_ in
                loadImage()
            }
            .sheet(isPresented: $showingImagePicker) {
                ImagePicker(image: $inputImage)
            }
        
        
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        requesUploadImage(image: inputImage)
    
        }
    
    func requesUploadImage(image:UIImage){
        
        guard let uid = Auth.auth().currentUser?.uid else {return}
        storageManager.uploadImage(image:image){ error,url  in
            if let err = error {
                print("Error:  \(err)")
            }else {
                let params:[String:Any] = ["profilePic":url ?? ""]
                
                Firestore.firestore().collection("user").document(uid).updateData(params)
                
            }
        }
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
