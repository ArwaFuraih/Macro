//
//  StorageManager.swift
//  Macro
//
//  Created by Irfan-IOS on 16/07/2022.
//

import Foundation
import Foundation
import SwiftUI
import Firebase
import FirebaseStorage

public class StorageManager: ObservableObject {
    let storage = Storage.storage()
    @Published var imagesList = [String]()
    
    func upload(image: UIImage) {
        // Create a storage reference
        let storageRef = storage.reference().child("App/Image/\( UUID().uuidString).jpg")

        // Resize the image to 200px with a custom extension
         let data = image.jpegData(compressionQuality: 1)

        // Convert the image into JPEG and compress the quality to reduce its size
        

        // Change the content type to jpg. If you don't, it'll be saved as application/octet-stream type
        let metadata = StorageMetadata()
        metadata.contentType = "image/jpg"

        // Upload the image
        if let data = data {
            storageRef.putData(data, metadata: metadata) { (metadata, error) in
                if let error = error {
                    print("Error while uploading file: ", error)
                }

                if let metadata = metadata {
                    print("Metadata: ", metadata)
                    self.listAllFiles()
                }
            }
        }
    }
    
    func uploadImage(image:UIImage,completion: @escaping ( _ error: String?,  _ url: String?) -> Void) {
          guard let uid = Auth.auth().currentUser else {return}
           let storageRef = Storage.storage().reference().child("\(uid).png")
           if let uploadData = image.jpegData(compressionQuality: 0.5) {
               storageRef.putData(uploadData, metadata: nil) { (metadata, error) in
                   if error != nil {
                       print("error")
                       completion(error?.localizedDescription,nil)
                   } else {
                       storageRef.downloadURL(completion: { (url, error) in
                           completion(nil,url?.absoluteString)
                       })
                     //  completion((metadata?.downloadURL()?.absoluteString)!))
                       // your uploaded photo url
                   }
               }
           }
       }

    func listAllFiles() {
        // Create a reference
        let storageRef = storage.reference().child("App/Image")

        // List all items in the images folder
        storageRef.listAll { (result, error) in
          if let error = error {
            print("Error while listing all files: ", error)
          }

            for item in result?.items ?? [] {
                print("Item in images folder: ", item)
                self.imagesList.append("\(item)")
                let storageLocation = String(describing: item)
                           let gsReference = Storage.storage().reference(forURL: storageLocation)
                           
                           // Fetch the download URL
                           gsReference.downloadURL { url, error in
                             if let error = error {
                               // Handle any errors
                               print(error)
                             } else {
                               // Get the download URL for each item storage location
                               print(url!)
                                 if let urll = url{
                                     self.imagesList.append("\(urll)")

                                 }
                             }
                           }
          }
        }
    }
    

    func listItem() {
        // Create a reference
        let storageRef = storage.reference().child("images")

        // Create a completion handler - aka what the function should do after it listed all the items
        let handler: (StorageListResult, Error?) -> Void = { (result, error) in
            if let error = error {
                print("error", error)
            }

            let item = result.items
            print("item: ", item)
        }

        // List the items
       // storageRef.list(maxResults: 1, completion: handler)
    }

        // You can use the listItem() function above to get the StorageReference of the item you want to delete
    func deleteItem(item: StorageReference) {
        item.delete { error in
            if let error = error {
                print("Error deleting item", error)
            }
        }
    }
}
