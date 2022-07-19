//
//  ProviderProfileView.swift
//  Macro
//
//  Created by Irfan-IOS on 16/07/2022.
//

import SwiftUI
import Firebase
struct ProviderProfileView: View {
    @State private var edit: Bool = false
    @State private var video: Bool = false
    @State private var photos: Bool = true
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    enum imagePickerType{
        case profile
        case photos
    }
    var storageManager = StorageManager()
    @State private   var imageType:imagePickerType = .photos
    
    @ObservedObject private var vm = ProviderProdileVM()
    
    var body: some View {
      
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false) {
                    ZStack {
                        VStack(alignment:.center,spacing:20) {
                            VStack(spacing:10) {
                                AsyncImage(url:  URL(string:vm.user?.profilePic ?? "")){ image in
                                    image.resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width:70,height: 70)
                                        .clipShape(Circle())
                                        
                                }placeholder: {
                                    ProgressView()
                                }
                                
                                Button(action: {
                                    showingImagePicker = true
                                    self.imageType = .profile
                                }, label: {
                                    Text("Edit")
                                })
                                
                                    .foregroundColor(.white)
                                    .padding([.leading,.bottom],0)
                            }
                          
                            
                            Text(vm.user?.fullName ?? "")
                                .foregroundColor(.white)
                            
//                            RatingView(rating:.constant( vm.user?.rating ?? 0))
                            Text(vm.user?.profileDesc ?? "")
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .font(.title3)
                                .font(.system(size: 20))
                            Spacer(minLength: 30)
                            Spacer()
                          
                            ZStack {
                                Color.white
                                    .opacity(0.2)
                                    .frame(height:550)
                                    
                                VStack {
                                    Button(action: {
                                        withAnimation(.easeInOut) {
                                            photos = true
                                            video = false
                                        }
                                        
                                    }, label: {
                                        VStack(spacing:1) {
                                            Text("Photos")
                                                .foregroundColor(photos ? .white : .gray)
                                            if photos {
                                                withAnimation(.linear) {
                                                    Rectangle()
                                                        .frame(width:120,height: 5)
                                                        .offset(y:18)
                                                        .foregroundColor(.white)
                                                }
                                               
                                                
                                            }
                                        }
                                    })
//                                    HStack(spacing:100) {
////                                        Button(action: {
////                                            withAnimation(.easeInOut) {
////                                                video = true
////                                                photos = false
////                                            }
////
////                                        }, label: {
////                                            VStack(spacing:1) {
////                                                Text("Videos")
////                                                    .foregroundColor(video ? .white : .gray)
////                                                if video {
////                                                    withAnimation(.linear) {
////                                                        Rectangle()
////                                                            .frame(width:120,height: 5)
////                                                            .offset(y:18)
////                                                            .foregroundColor(.white)
////                                                    }
////                                                }
////                                            }
////                                        })
//                                       // .padding(.trailing)
//                                        Button(action: {
//                                            withAnimation(.easeInOut) {
//                                                photos = true
//                                                video = false
//                                            }
//
//                                        }, label: {
//                                            VStack(spacing:1) {
//                                                Text("Photos")
//                                                    .foregroundColor(photos ? .white : .gray)
//                                                if photos {
//                                                    withAnimation(.linear) {
//                                                        Rectangle()
//                                                            .frame(width:120,height: 5)
//                                                            .offset(y:18)
//                                                            .foregroundColor(.white)
//                                                    }
//
//
//                                                }
//                                            }
//                                        })
//                                    }
                                    .offset(y:-20)
                                    .foregroundColor(.gray)
                                    ZStack {
                                        Rectangle()
                                            .frame(height:1)
                                            .offset(y:-15)
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
//                                    if video {videoView}
                                    if photos {photoView}
                                    Spacer()
                                    
                                }
                                
                            }
                        
                        }.onLoad{
                            vm.fetchUserData()
                        }
                        .padding(.top,20)
                    }.onLoad{
                        storageManager.listAllFiles()
                    }
                    
                }
                .frame(maxWidth:.infinity,maxHeight: .infinity)
                
            }
            .navigationBarTitle("Provided Profile", displayMode: .inline)
            .toolbar{
                Button(edit ? "Done" : "Edit" ) {
                    withAnimation(.linear) {
                        edit.toggle()
                    }
                    
              }
            }
        
        .onChange(of: inputImage) {_ in
            loadImage()
        }
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker(image: $inputImage)
        }
            
       
    }
    func requesUploadImage(image:UIImage){
        
        guard let uid = Auth.auth().currentUser?.uid else {return}
        storageManager.uploadImage(image:image){ error,url  in
            if let err = error {
                print("Error:  \(err)")
            }else {
                let params:[String:Any] = ["profilePic":url ?? ""]
                let user =
                Firestore.firestore().collection("user").document(uid).updateData(params)
                
            }
        }
    }
    func loadImage() {
        guard let inputImage = inputImage else { return }
        switch imageType {
        case .profile:
            requesUploadImage(image: inputImage)
        case .photos:
            storageManager.upload(image:inputImage)
            storageManager.listAllFiles()
        }
      
    }
    //MARK: - photoView
    var photoView:some View{
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 7), count: 3),spacing: 15, content: {
            if edit {
                VStack {
                    Button(action: {
                        print("tapped")
                        showingImagePicker = true
                    }, label: {
                        GeometryReader { proxy in
                            let width = proxy.frame(in: .global).width
                            VStack {
                                Text("Upload")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .bold()
                                Text("+")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .bold()
                            }
                            .frame(width:width,height: 100)
                            .cornerRadius(3)
                            .background(Color.white)
                            .opacity(0.5)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            
                            
                        }
                    })
                }
                .foregroundColor(.white)
            }
            ForEach(storageManager.imagesList,id:\.self) {item in
                GeometryReader {proxy in
                    let width = proxy.frame(in: .global).width
                    ZStack {
                        
                        AsyncImage(url:  URL(string:item)){ image in
                            image.resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:width,height: 100)
                                .cornerRadius(3)
                        }placeholder: {
                            ProgressView()
                        }.padding(.leading,50)
                        
//                        Button(action: {}, label: {
//                            Image(systemName:edit ?  "trash.fill" : "")
//                                .foregroundColor(.red)
//                                .font(.system(size: 20))
//                        })
//                        .offset(x:45,y: 30)
                        
                    }
                }
                .frame(height:100)
                
            }.onAppear(){
                storageManager.imagesList.removeAll()
                storageManager.listAllFiles()
            }
        })
    }
    var videoView:some View {
        LazyVGrid(columns:Array(repeating: GridItem(.flexible(),spacing: 7), count: 3),spacing:15, content: {
            if edit {
                VStack {
                    Button(action: {}, label: {
                        GeometryReader { proxy in
                            let width = proxy.frame(in: .global).width
                            VStack {
                                Text("Upload")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .bold()
                                Text("+")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .bold()
                            }
                            .frame(width:width,height: 100)
                            .cornerRadius(3)
                            .background(Color.white)
                            .opacity(0.5)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            
                            
                        }
                    })
                }
                .foregroundColor(.white)
            }
            ForEach(1...10,id:\.self) {index in
                GeometryReader {proxy in
                    let width = proxy.frame(in: .global).width
                    ZStack {
                        
                        Image("nature-\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:width,height: 100)
                            .cornerRadius(3)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        Circle()
                            .frame(width:40,height: 40)
                            .foregroundColor(.white.opacity(0.5))
                        Circle()
                            .frame(width:10,height: 10)
                            .foregroundColor(.black)
                        Button(action: {}, label: {
                            Image(systemName:edit ?  "trash.fill" : "")
                                .foregroundColor(.red)
                                .font(.system(size: 20))
                        })
                        .offset(x:45,y: 30)
                        
                    }
                }
                .frame(height:100)
                
            }
            
        })
    }
}

struct ProviderProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProviderProfileView()
    }
}


extension View {

    func onLoad(perform action: (() -> Void)? = nil) -> some View {
        modifier(ViewDidLoadModifier(perform: action))
    }

}
struct ViewDidLoadModifier: ViewModifier {

    @State private var didLoad = false
    private let action: (() -> Void)?

    init(perform action: (() -> Void)? = nil) {
        self.action = action
    }

    func body(content: Content) -> some View {
        content.onAppear {
            if didLoad == false {
                didLoad = true
                action?()
            }
        }
    }

}
