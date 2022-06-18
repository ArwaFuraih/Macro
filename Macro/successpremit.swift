//
//  successpremit.swift
//  Macro
//
//  Created by najat ali on 18/11/1443 AH.
//

import SwiftUI
import RiveRuntime

struct successpremit: View {
    @State private var isShareSheetPresented = false
    @State private var isPresented = false

    var body: some View {
        NavigationView{
 
            VStack{
            RiveViewModel(fileName: "file2").view()
                    Text("Success!")
                       .font(.largeTitle)
                       .fontWeight(.heavy)
                       .foregroundColor(Color.white)

                        .padding(.bottom, 39.801)
                  
//            Text("Thank you!")
//                       .font(.title)
//                       .fontWeight(.bold)
//                       .background(Color.white)

                   Text("Your invoice has been successfuly sent")
                       .font(.subheadline)
                       .fontWeight(.semibold)
                       .foregroundColor(Color.white)

                   NavigationLink {
                       Viewpermit()
                       } label: {
                        Text("Download your premit")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 342, height: 41.31)
                        .cornerRadius(8)
                        .background(Color("btnColor"))
                        .cornerRadius(8)

                    }
                    .padding()

                    Button(action: {
                                      self.isShareSheetPresented.toggle()
                                  }) {
                                      Text("Share")
                                      Image(systemName: "square.and.arrow.up")
                                  }

                  }
    

               .padding(.bottom, 139.801)
               .navigationTitle("")

}



    .sheet(isPresented: $isShareSheetPresented) {
         ShareSheetView(activityItems: ["Hello World"]) }
     
}
}
            
    


struct successpremit_Previews: PreviewProvider {
    static var previews: some View {
        successpremit()
            .preferredColorScheme(.dark)
    }
}

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
