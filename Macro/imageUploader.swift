//
//  imageUploader.swift
//  Macro
//
//  Created by sumayah on 13/12/1443 AH.
//

import Firebase
import FirebaseStorage

import UIKit

struct imageUploader{
    static func uploadImage(image:UIImage,completion:@escaping(String)->Void){
        guard let imageData = image.jpegData(compressionQuality: 0.5)else{return}
        
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profilr_image/\(filename)")
        
        ref.putData(imageData, metadata: nil) { _, err in
            if let err = err {return}
        }
        ref.downloadURL { imageUrl, _ in
            guard let imageUrl = imageUrl?.absoluteString else {return}
            completion(imageUrl)
        }
    }
}

