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
    @State var isAnimating: Bool = false

    var body: some View {
        NavigationView{
 
            VStack{
            RiveViewModel(fileName: "file2").view()
                
                
   .frame(width: 400, height: 400)
   .opacity(isAnimating ? 0 : 1)
   .scaleEffect(isAnimating ? 3 : 1)
   .animation(.easeInOut(duration: 2.5)
       .repeatForever(autoreverses: false).speed(1).delay(0.5), value: isAnimating)
                
                
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
                        Text("View your premit")
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
                                        Image(systemName: "square.and.arrow.up")
                                      Text("Download your premit")
//                                      Text("Share")
                                          .bold()
                                  }
                                  .foregroundColor(.white)
                                   .frame(width: 342, height: 41.31)
                                  .cornerRadius(8)
                                  .background(Color("btnColor"))
                                  .cornerRadius(8)

                  }
    
               .padding(.bottom, 139.801)
               .navigationTitle("")

}



    .sheet(isPresented: $isShareSheetPresented) {
         ShareSheetView(activityItems: ["Permit Detiles.pdf"]) }
     
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
