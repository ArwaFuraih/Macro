//
//  share.swift
//  Macro
//
//  Created by najat ali on 19/11/1443 AH.
//

import SwiftUI

struct share: View {
    @State private var isShareSheetPresented = false
    @State private var isPresented = false
   
    struct ShareSheetView: UIViewControllerRepresentable {
        typealias Callback = (_ activityType: UIActivity.ActivityType?, _ completed: Bool, _ returnedItems: [Any]?, _ error: Error?) -> Void
        let activityItems: [Any]
        let applicationActivities: [UIActivity]? = nil
        let excludedActivityTypes: [UIActivity.ActivityType]? = nil
        let callback: Callback? = nil
        func makeUIViewController(context: Context) -> UIActivityViewController {
            let controller = UIActivityViewController(
                activityItems: activityItems,
                applicationActivities: applicationActivities)
            controller.excludedActivityTypes = excludedActivityTypes
            controller.completionWithItemsHandler = callback
            return controller
        }
        func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
            // nothing to do here
        }
    }

    var body: some View {
        Button(action: {
                            self.isShareSheetPresented.toggle()
                        }) {
//                            Text("Share")
//                            Image(systemName: "square.and.arrow.up")
                        }
              


            .sheet(isPresented: $isShareSheetPresented) {
            ShareSheetView(activityItems: ["Hello World"])
        }
}
}
    
struct share_Previews: PreviewProvider {
    static var previews: some View {
        share()
    }
}

 
