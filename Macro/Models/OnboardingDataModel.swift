//
//  OnboardingDataModel.swift
//  Drone
//
//  Created by Irfan-IOS on 13/07/2022.
//

import Foundation

struct OnboardingDataModel:Identifiable {
    var image: String
    var heading: String
    var text: String
    var id: Int
    var isLast = false
}

extension OnboardingDataModel {
    static var steps: [OnboardingDataModel] = [
        OnboardingDataModel(image: "drone_image_1", heading: "Make The First\n Move!", text: "DRONES is the first place to collects the drone services for both the owner and the user in need of drone services.", id: 0),
        OnboardingDataModel(image: "drone_image_2", heading: "Quality\n is our top priority!", text: "With high quality, satisfactory price and high guarantee, in cooperation with the competent authorities for the Drones.", id: 1 ),
        OnboardingDataModel(image: "drone_image_3", heading: "Anywhere, Anytime", text: "We are always ready to serve you in different ways and at any time.", id: 2, isLast: true),
       
    ]
}
