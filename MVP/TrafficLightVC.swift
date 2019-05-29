//
//  TrafficLightVC.swift
//  MVP
//
//  Created by member on 5/29/19.
//  Copyright © 2019 member. All rights reserved.
//

import UIKit

class TrafficLightVC: UIViewController{
    
    
    @IBOutlet weak var lblDesc: UILabel!
    //    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())
   private let trafficLightPresenter = TrafficLightPresenter(TrafficLightServie: TrafficLightService())
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightPresenter.setViewDelegate(self)
    }

    @IBAction func redAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelect("Red")
    }
    @IBAction func yelloaction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelect("Yellow")

        
    }
    
    @IBAction func greenAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelect("Green")

        
    }
}
extension TrafficLightVC: TrafficLightViewDelegate {
    
    func displayTrafficLight(description: (String)) {
        lblDesc.text = description
    }
}
