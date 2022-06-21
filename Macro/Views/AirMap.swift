//
//  ContentView.swift
//  Weather
//
//  Created by Arwa Alfuraih on 11/06/2022.
//

import SwiftUI
import MapKit

struct AirMap: View {
    
    @ObservedObject var weatherVM = WeatherViewModel()
//    @ObservedObject var locationManager = LocationManager.shared
  //  @State var cardShown = false
    @State var isPresented = false

//    @State var bottomSheetPosition: BottomSheetPosition = .middle

    
    var body: some View {
        
//        Group{
//        if locationManager.userLocation == nil{
//            LocationRequest()
//        }else if let location = locationManager.userLocation{
//        Text ("\(location)")
//            //to print lat and log
//        }
//        }
        ZStack {
            MapView()
            if !isPresented {
                VStack {
                    Spacer()
                    Button(action: {
                        isPresented.toggle()
                    }, label: {
                        VStack{
                            Text(Image(systemName: "cloud.sun"));
                           //Text("Weather")
                        }
                        
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(.black)
                                    .opacity(0.5)
                                    .frame(maxWidth: .infinity, idealHeight: 32, alignment: .center)
                            )
                    })
                    .frame(maxWidth: .infinity, idealHeight: 32, alignment: .center)
                    .position(x: 350, y: 650)
                }
            } else {
                EmptyView()
            }

        }

            .sheetWithDetents(isPresented: $isPresented, detents: [.medium(),.large()], onDismiss: {
                
            }, content: {
    
            ZStack(alignment: .bottom){


                VStack(spacing : 30){
                MenuHeaderView(weatherVM: weatherVM)
                ScrollView(showsIndicators: false){
                    WeatherView(weatherVM: weatherVM)

                }
            }.padding(.top, 45)

            } .background(
                LinearGradient(
                        gradient: Gradient(
                            colors:
                            [
                              //  Color(red: 0.18, green: 0.50, blue: 0.56),
                                Color.black
                        ])
                                         , startPoint: .topLeading, endPoint: .bottomTrailing))
        })
    }//body
}//view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AirMap()
    }
}




struct maps : View{
    var body: some View{
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            
        })
    }
}

//-----------------

struct SheetPresentationForSwiftUI<Content>: UIViewRepresentable where Content: View {
    
    @Binding var isPresented: Bool
   let onDismiss: (() -> Void)?
    let detents: [UISheetPresentationController.Detent]
    let content: Content
    
    
    init(
        _ isPresented: Binding<Bool>,
       onDismiss: (() -> Void)? = nil,
        detents: [UISheetPresentationController.Detent] = [.medium()],
        @ViewBuilder content: () -> Content
    ) {
        self._isPresented = isPresented
        self.onDismiss = onDismiss
        self.detents = detents
        self.content = content()
    }
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
        // Create the UIViewController that will be presented by the UIButton
        let viewController = UIViewController()
        
        // Create the UIHostingController that will embed the SwiftUI View
        let hostingController = UIHostingController(rootView: content)
        
        // Add the UIHostingController to the UIViewController
        viewController.addChild(hostingController)
        viewController.view.addSubview(hostingController.view)
        
        // Set constraints
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        hostingController.view.leftAnchor.constraint(equalTo: viewController.view.leftAnchor).isActive = true
        hostingController.view.topAnchor.constraint(equalTo: viewController.view.topAnchor).isActive = true
        hostingController.view.rightAnchor.constraint(equalTo: viewController.view.rightAnchor).isActive = true
        hostingController.view.bottomAnchor.constraint(equalTo: viewController.view.bottomAnchor).isActive = true
        hostingController.didMove(toParent: viewController)
        
        // Set the presentationController as a UISheetPresentationController
        if let sheetController = viewController.presentationController as? UISheetPresentationController {
            sheetController.detents = detents
            sheetController.prefersGrabberVisible = true
            sheetController.prefersScrollingExpandsWhenScrolledToEdge = false
            sheetController.largestUndimmedDetentIdentifier = .medium
        }
        
        // Set the coordinator (delegate)
        // We need the delegate to use the presentationControllerDidDismiss function
        viewController.presentationController?.delegate = context.coordinator
//        viewController.isModalInPresentation = true

        
        if isPresented {
            // Present the viewController
            uiView.window?.rootViewController?.present(viewController, animated: true)
        } else {
            // Dismiss the viewController
            uiView.window?.rootViewController?.dismiss(animated: true)
        }
        
    }
    
    /* Creates the custom instance that you use to communicate changes
    from your view controller to other parts of your SwiftUI interface.
     */
    func makeCoordinator() -> Coordinator {
        Coordinator(isPresented: $isPresented)
    }
    
    class Coordinator: NSObject, UISheetPresentationControllerDelegate {
        @Binding var isPresented: Bool
        let onDismiss: (() -> Void)?
        
        init(isPresented: Binding<Bool>, onDismiss: (() -> Void)? = nil) {
            self._isPresented = isPresented
            self.onDismiss = onDismiss
        }
        
        func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
            isPresented = false
            if let onDismiss = onDismiss {
                onDismiss()
            }
        }
        
    }
    
}



// 2 - Create the SwiftUI modifier conforming to the ViewModifier protocol
struct sheetWithDetentsViewModifier<SwiftUIContent>: ViewModifier where SwiftUIContent: View {
    
    @Binding var isPresented: Bool
    let onDismiss: (() -> Void)?
    let detents: [UISheetPresentationController.Detent]
    let swiftUIContent: SwiftUIContent
    
    init(isPresented: Binding<Bool>, detents: [UISheetPresentationController.Detent] = [.medium()] , onDismiss: (() -> Void)? = nil, content: () -> SwiftUIContent) {
        self._isPresented = isPresented
        self.onDismiss = onDismiss
        self.swiftUIContent = content()
        self.detents = detents
    }
    
    func body(content: Content) -> some View {
        ZStack {
            SheetPresentationForSwiftUI($isPresented, detents: detents) {
                swiftUIContent
            }.fixedSize()
            content
        }
    }
}




// 3 - Create extension on View that makes it easier to use the custom modifier
extension View {
    
    func sheetWithDetents<Content>(
        isPresented: Binding<Bool>,
        detents: [UISheetPresentationController.Detent],
        onDismiss: (() -> Void)?,
        content: @escaping () -> Content) -> some View where Content : View {
            modifier(
                sheetWithDetentsViewModifier(
                    isPresented: isPresented,
                    detents: detents,
                    onDismiss: onDismiss,
                    content: content)
            )
        }
}
