//
//  ViewController.swift
//  PickerViewCountry
//
//  Created by Nilrajsinh Vaghela on 29/08/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    //step 1
    var countryList = [CountryClass]()
    var StateList = [StateClass]()
    var CityList = [CityClass]()
    
    //step 2
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return countryList.count
        }
        else if component == 1 {
            return selectedStates.count
        }
        
        else if component == 2 {
            return selectedCity.count
        }
        return 0
    }
   

    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return countryList[row].CountryName
        }
        else if component == 1 {
            return selectedStates[row].StateName
        }
        else if component == 2 {
            return selectedCity[row].CityName
        }
        return " "
    }
    
    var selectedStates = [StateClass]()
    
    var selectedCity = [CityClass]()
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            selectedStates = StateList.filter({ (stateObj) -> Bool in
                if stateObj.RefCountryId == countryList[row].countryId{
                    return true
                }
                return false
            })
            pickerView.reloadComponent(1)
        }
        else if component == 1 {
             selectedCity = CityList.filter({ (cityObj) -> Bool in
                if cityObj.RefStateId == selectedStates[row].StateId{
                    
                    return true
                }
                
                return false
            })
            
            pickerView.reloadComponent(2)
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       //step 3
        var country = CountryClass()
        country.countryId = 1
        country.CountryName = "India"
        countryList.append(country)
        
        country.countryId = 2
        country.CountryName = "America"
        countryList.append(country)
        
        var State = StateClass()
        State.RefCountryId = 1
        State.StateId = 1
        State.StateName = "Gujarat"
        StateList.append(State)
        
        State.RefCountryId = 2
        State.StateId = 2
        State.StateName = "Atlanta"
        StateList.append(State)
        
        var City = CityClass()
        City.RefStateId = 1
        City.CityId = 1
        City.CityName = "gandhinagar"
        CityList.append(City)
        
        City.RefStateId = 2
        City.CityId = 2
        City.CityName = "L.a"
        CityList.append(City)
        
        
    
    }


}

