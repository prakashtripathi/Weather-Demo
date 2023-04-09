//
//  CityModel.swift
//  Weather Demo
//
//  Created by Prakash Tripathi on 09/04/23.
//

import Foundation

class CityModel {
    
    var cities: [CityObject]?
    
    static let shared = CityModel()
    private init () {}
    
    func getCity() {
       let queue = DispatchQueue(label: "com.mphasis.whetherdemo.cityResponse")
       queue.async {
          CityManager.shared.getCity { [weak self] newCity in
              self?.cities = newCity
          }
       }
    }
}
