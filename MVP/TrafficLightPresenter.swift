//
//  TrafficLightPresenter.swift
//  MVP
//
//  Created by member on 5/29/19.
//  Copyright © 2019 member. All rights reserved.
//

import Foundation
//
//protocol TrafficLightViewDelegate: NSObjectProtocol {
//    func displayTrafficLight(description:(String))
//}
//
//class TrafficLightPresenter {
//    private let trafficLightService:TrafficLightService
//    weak private var trafficLightViewDelegate : TrafficLightViewDelegate?
//
//    init(trafficLightService:TrafficLightService){
//        self.trafficLightService = trafficLightService
//    }
//
//    func setViewDelegate(_ trafficLightViewDelegate:TrafficLightViewDelegate?){
//        self.trafficLightViewDelegate = trafficLightViewDelegate
//    }
//
//    func trafficLightColorSelected(colorName:(String)){
//
//        trafficLightService.getTrafficLight(colorName: colorName) { [weak self] traficLight in
//
//            if let traficLight = traficLight {
//                self?.trafficLightViewDelegate?.displayTrafficLight(description: traficLight.description)
//            }
//        }
//    }
//}

protocol TrafficLightViewDelegate: NSObjectProtocol {
    func displayTrafficLight(description:(String))
}

class TrafficLightPresenter{
    let trafficLightService : TrafficLightService
    weak private var trafficLightViewDelegate : TrafficLightViewDelegate?

    init(TrafficLightServie :TrafficLightService ){
        self.trafficLightService = TrafficLightServie
    }
    
    func setViewDelegate(_ trafficLightViewDelegate:TrafficLightViewDelegate?){
        self.trafficLightViewDelegate = trafficLightViewDelegate
    }
    
    func trafficLightColorSelect(_ colorName: (String)){
        trafficLightService.getTrafficLight(colorName){[weak self] trafficeLi in
            if let trafficLight = trafficeLi{
                self?.trafficLightViewDelegate?.displayTrafficLight(description: trafficLight.description)
            }
        }
    }
}
