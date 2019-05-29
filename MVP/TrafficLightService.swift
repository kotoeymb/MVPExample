//
//  TrafficLightService.swift
//  MVP
//
//  Created by member on 5/29/19.
//  Copyright © 2019 member. All rights reserved.
//

import Foundation

class TrafficLightService{
    func getTrafficLight(_ colorName: (String),callBack: (TrafficLight?) -> Void) {
        let trafficLights = [TrafficLight(colorName: "Red",description: "Stop"), TrafficLight(colorName: "Green", description: "Go"),
                             TrafficLight(colorName: "Yellow", description: "About to change to red")]
        
        if let foundTrafficLight = trafficLights.first(where: {$0.colorName == colorName}) {
            callBack(foundTrafficLight)
        } else {
            callBack(nil)
        }
    }
}

