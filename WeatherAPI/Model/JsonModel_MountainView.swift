//
//  JsonModel_MountainView.swift
//  WeatherAPI
//
//  Created by Admin on 9/18/18.
//  Copyright © 2018 MobileAppsCompany. All rights reserved.
//


import Foundation
import SwiftyJSON

struct JsonModel_MountainView{
    var min_Temp: Int = 999
    var max_Temp: Int = 999
    var weatherTypeAbrev: String = "Error!!, Did not get weather_state_abbr from JSON"
    var weatherTypeName: String = "Error!!, Did not get weather_state_name from JSON"
    var applicableDate: String = "Error!!, Did not get applicable_date from JSON"
    var humidity: Float = 999.0
    
    init() {}
    
    init(json: JSON) {
        min_Temp = json["consolidated_weather"][1]["min_temp"].intValue
        max_Temp = json["consolidated_weather"][1]["max_temp"].intValue
        weatherTypeAbrev = json["consolidated_weather"][1]["weather_state_abbr"].stringValue
        weatherTypeName = json["consolidated_weather"][1]["weather_state_name"].stringValue
        applicableDate = json["consolidated_weather"][1]["applicable_date"].stringValue
        humidity = json["consolidated_weather"][1]["humidity"].floatValue
    }
}
