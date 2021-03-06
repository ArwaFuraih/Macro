//
//  imagePicker.swift
//  Macro
//
//  Created by sumayah on 13/12/1443 AH.
//



import UIKit
import SwiftUI

struct ImagePicker  : UIViewControllerRepresentable{
    @Binding var image : UIImage?
    @Environment(\.presentationMode) var mode
    
    
    func makeCoordinator() -> Coordinator{Coordinator(self)}
    
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let picker = UIImagePickerController()
        picker.delegate=context.coordinator
        picker.allowsEditing = true
        return picker
    }
    
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}


extension ImagePicker{
    class Coordinator:NSObject,UINavigationControllerDelegate
                      ,UIImagePickerControllerDelegate{
        let parent : ImagePicker
        init(_ parent:ImagePicker){self.parent=parent}
        
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            guard let image = info[.editedImage] as? UIImage  else {
                return
            }
            parent.image=image
            picker.dismiss(animated:true)
        }
    }
}
