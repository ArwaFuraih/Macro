//
//  profileView.swift
//  Macro
//
//  Created by sumayah on 13/12/1443 AH.
//

import SwiftUI

struct profileView: View {
    @State private var showImagePicker =  false
    @State private var image :  UIImage?
    @State private var profileImage :  Image?
    @StateObject var registrationViewModel: RegistrationViewModel = RegistrationViewModel()

    

    var body: some View {
        VStack{
            Button {
                showImagePicker.toggle()
                
            } label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .modifier(profileImageModifier())

                }else{
                
                Image("addaphoto")
                        .renderingMode(.template)
                        .modifier(profileImageModifier())
                }
            }
                .sheet(isPresented: $showImagePicker , onDismiss: loadImage) {
                ImagePicker(image: $image)
            }.padding(.top,44)
            
            
            if let image = image {
                Button {
                    registrationViewModel.uploadProfileImage(image)
                } label: {
                    Text("SAVE")
                        .background(.gray)
                        .foregroundColor(.white)
                }

            }

            Spacer()
        }.ignoresSafeArea()
    }
    
    
    func loadImage(){
        guard let selectedImage = image else{return}
        
        profileImage = Image(uiImage: selectedImage)
        
        
    }
}

private struct profileImageModifier : ViewModifier{
    
    
    func body(content: Content) -> some View {
        content
        .foregroundColor(Color(.systemBlue))
            .scaledToFit()
            .frame(width: 180, height: 180)
            .clipShape(Circle())

    }

}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView()
    }
}
