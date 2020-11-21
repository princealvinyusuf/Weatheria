//
//  WeatherModel.swift
//  Weatheria
//
//  Created by Prince Alvin Yusuf on 24/04/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionalId : Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionalId {
        case 801...804:
            return "cloud.bolt"
        case 800:
            return "sun.max"
        case 701...781:
            return "cloud.fog"
        case 600...622:
            return "cloud.snow"
        case 500...531:
            return "cloud.rain"
        case 300...321:
            return "cloud.drizzle"
        case 200...232:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    
    
}
