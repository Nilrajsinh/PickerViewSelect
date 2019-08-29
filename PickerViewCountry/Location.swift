//
//  Location.swift
//  PickerViewCountry
//
//  Created by Nilrajsinh Vaghela on 29/08/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class Location: NSObject {
}
struct CountryClass {
    var countryId:Int?
    var CountryName:String?
}
struct StateClass {
    var StateId:Int?
    var StateName:String?
    var RefCountryId:Int?
    
    
}
struct CityClass {
    var CityId:Int?
    var CityName:String?
    var RefStateId:Int?
    
}

