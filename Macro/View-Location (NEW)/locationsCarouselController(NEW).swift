//
//  locationsCarouselController.swift
//  NewAirMap
//
//  Created by Arwa Alfuraih on 14/07/2022.
//

import UIKit
import LBTATools
import MapKit


class locationCell:LBTAListCell<MKMapItem>{
    override var item:MKMapItem!{
        didSet{
            lable.text = item.name
            text.text = item.phoneNumber
            address.text = item.address()
       //     item.placemark.coordinate.longitude
        }
    }
    
    let lable = UILabel(font: .boldSystemFont(ofSize: 30), textColor: .white, textAlignment: .left , numberOfLines: 3)
    let text = UILabel( font: .systemFont(ofSize: 15),textColor: .systemMint, textAlignment: .left, numberOfLines: 0)
    let address = UILabel(text: "Address", textColor: .white, textAlignment: .left, numberOfLines: 0)
  //  let long = UILabel(text: "Long", textColor: .white, textAlignment: .left, numberOfLines: 0)

    
    
        override func setupViews() {
                backgroundColor = .black
                setupShadow(opacity: 0.7, radius: 3 , color: .systemMint)
                layer.cornerRadius = 12
            stack(lable , text).withMargins(.allSides(16))
        }
}



class locationsCarouselController: LBTAListController<locationCell, MKMapItem> {
        
    weak var mainController: MainController?
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
            let annotations = mainController?.mapView.annotations
            annotations?.forEach({  (annotation) in
                
//                if annotation.title == self.items[indexPath.item].name{
//                    mainController?.mapView.selectAnnotation(annotation, animated: true)
//                }

        })
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        
    }
        
        override func viewDidLoad() {
                super.viewDidLoad()
                collectionView.backgroundColor = .clear
                collectionView.clipsToBounds = false

            let placemark = MKPlacemark(coordinate: .init(latitude: 10, longitude: 55))
                let mapItem1 = MKMapItem(placemark: placemark)
            mapItem1.name = """
                            King Khalid Airport
                            Riyadh
                            """
            mapItem1.phoneNumber = "Resreicted - Fly - Zone"
                        
            let mapItem2 = MKMapItem(placemark: placemark)
            mapItem2.name = """
                            Ministry Of Defense
                            Riyadh
                            """
            mapItem2.phoneNumber = "Resreicted - Fly - Zone"
            
            let mapItem3 = MKMapItem(placemark: placemark)
            mapItem3.name = """
                            Royal Air Defense Forces
                            Riyadh
                            """
            mapItem3.phoneNumber = "Resreicted - Fly - Zone"
            
            let mapItem4 = MKMapItem(placemark: placemark)
            mapItem4.name = """
                            Ministry of Interior
                            Riyadh
                            """
            mapItem4.phoneNumber = "Resreicted - Fly - Zone"
            
            let mapItem5 = MKMapItem(placemark: placemark)
            mapItem5.name = """
                            The Ritz-Carlton
                            Riyadh
                            """
            mapItem5.phoneNumber = "Resreicted - Fly - Zone"
            
            
            
            
            
            self.items=[mapItem1 , mapItem2 , mapItem3 , mapItem4 , mapItem5]
        }
}


extension locationsCarouselController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return .init(width: view.frame.width - 71, height: view.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 16
    }

}
