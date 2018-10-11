//
//  ViewController.swift
//  WeatherAPI
//
//  Created by Admin on 9/17/18.
//  Copyright © 2018 MobileAppsCompany. All rights reserved.
//

import UIKit
import SwiftyJSON
import Kingfisher

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var refreshButtonVar: UIBarButtonItem!
    @IBOutlet weak var cityNameTable: UITableView!
    
    var arrData_GothenBurg = [JsonModel_GothenBurg]()
    var arrData_Stockholm = [JsonModel_Stockholm]()
    var arrData_MountainView = [JsonModel_MountainView]()
    var arrData_London = [JsonModel_London]()
    var arrData_NewYork = [JsonModel_NewYork]()
    var arrData_Berlin = [JsonModel_Berlin]()
    
    var url_Image_GothenBurg: URL?
    var url_Image_Stockholm: URL?
    var url_Image_MountainView: URL?
    var url_Image_London: URL?
    var url_Image_NewYork: URL?
    var url_Image_Berlin: URL?
    
    var finalFlag_GothenBurg: Bool = false
    var finalFlag_Stockholm: Bool = false
    var finalFlag_MountainView: Bool = false
    var finalFlag_London: Bool = false
    var finalFlag_NewYork: Bool = false
    var finalFlag_Berlin: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        jsonParsing_GothenBurg()
        jsonParsing_Stockholm()
        jsonParsing_MountainView()
        jsonParsing_London()
        jsonParsing_NewYork()
        jsonParsing_Berlin()
        
    }
    @IBAction func refreshButtonPressed(_ sender: Any) {
        finalFlag_GothenBurg = false
        finalFlag_Stockholm = false
        finalFlag_MountainView = false
        finalFlag_London = false
        finalFlag_NewYork = false
        finalFlag_Berlin = false
        
        jsonParsing_GothenBurg()
        jsonParsing_Stockholm()
        jsonParsing_MountainView()
        jsonParsing_London()
        jsonParsing_NewYork()
        jsonParsing_Berlin()
        cityNameTable.reloadData()
    }
    func jsonParsing_GothenBurg() {
        let url_GothenBurg = URL(string: "https://www.metaweather.com/api/location/890869/")
        URLSession.shared.dataTask(with: url_GothenBurg!) { (data, response, error) in
            guard let data = data else {return}
            do {
                let json = try JSON(data:data)
                self.arrData_GothenBurg.append(JsonModel_GothenBurg(json: json))
                self.url_Image_GothenBurg = URL(string: "https://www.metaweather.com/static/img/weather/png/64/\(self.arrData_GothenBurg[0].weatherTypeAbrev).png")!
                DispatchQueue.main.async {
                    self.cityNameTable.reloadData()
                }
                self.finalFlag_GothenBurg = true
            }
            catch {
                print("Error was \(error.localizedDescription)")
            }
            
            }.resume()
    }
    func jsonParsing_Stockholm() {
        let url_Stockholm = URL(string: "https://www.metaweather.com/api/location/906057/")
        URLSession.shared.dataTask(with: url_Stockholm!) { (data, response, error) in
            guard let data = data else {return}
            do {
                let json = try JSON(data:data)
                self.arrData_Stockholm.append(JsonModel_Stockholm(json: json))
                self.url_Image_Stockholm = URL(string: "https://www.metaweather.com/static/img/weather/png/64/\(self.arrData_Stockholm[0].weatherTypeAbrev).png")!
                DispatchQueue.main.async {
                    self.cityNameTable.reloadData()
                }
                self.finalFlag_Stockholm = true
            }
            catch {
                print("Error was \(error.localizedDescription)")
            }
            
            }.resume()
    }
    func jsonParsing_MountainView() {
        let url_MountainView = URL(string: "https://www.metaweather.com/api/location/2455920/")
        URLSession.shared.dataTask(with: url_MountainView!) { (data, response, error) in
            guard let data = data else {return}
            do {
                let json = try JSON(data:data)
                self.arrData_MountainView.append(JsonModel_MountainView(json: json))
                self.url_Image_MountainView = URL(string: "https://www.metaweather.com/static/img/weather/png/64/\(self.arrData_MountainView[0].weatherTypeAbrev).png")!
                DispatchQueue.main.async {
                    self.cityNameTable.reloadData()
                }
                self.finalFlag_MountainView = true
            }
            catch {
                print("Error was \(error.localizedDescription)")
            }
            
            }.resume()
    }
    func jsonParsing_London() {
        let url_London = URL(string: "https://www.metaweather.com/api/location/44418/")
        URLSession.shared.dataTask(with: url_London!) { (data, response, error) in
            guard let data = data else {return}
            do {
                let json = try JSON(data:data)
                self.arrData_London.append(JsonModel_London(json: json))
                self.url_Image_London = URL(string: "https://www.metaweather.com/static/img/weather/png/64/\(self.arrData_London[0].weatherTypeAbrev).png")!
                DispatchQueue.main.async {
                    self.cityNameTable.reloadData()
                }
                self.finalFlag_London = true
            }
            catch {
                print("Error was \(error.localizedDescription)")
            }
            
            }.resume()
    }
    func jsonParsing_NewYork() {
        let url_NewYork = URL(string: "https://www.metaweather.com/api/location/2459115/")
        URLSession.shared.dataTask(with: url_NewYork!) { (data, response, error) in
            guard let data = data else {return}
            do {
                let json = try JSON(data:data)
                self.arrData_NewYork.append(JsonModel_NewYork(json: json))
                self.url_Image_NewYork = URL(string: "https://www.metaweather.com/static/img/weather/png/64/\(self.arrData_NewYork[0].weatherTypeAbrev).png")!
                DispatchQueue.main.async {
                    self.cityNameTable.reloadData()
                }
                self.finalFlag_NewYork = true
            }
            catch {
                print("Error was \(error.localizedDescription)")
            }
            
            }.resume()
    }
    func jsonParsing_Berlin() {
        let url_Berlin = URL(string: "https://www.metaweather.com/api/location/638242/")
        URLSession.shared.dataTask(with: url_Berlin!) { (data, response, error) in
            guard let data = data else {return}
            do {
                let json = try JSON(data:data)
                self.arrData_Berlin.append(JsonModel_Berlin(json: json))
                self.url_Image_Berlin = URL(string: "https://www.metaweather.com/static/img/weather/png/64/\(self.arrData_Berlin[0].weatherTypeAbrev).png")!
                DispatchQueue.main.async {
                    self.cityNameTable.reloadData()
                }
                self.finalFlag_Berlin = true
            }
            catch {
                print("Error was \(error.localizedDescription)")
            }
            
            }.resume()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(finalFlag_NewYork && finalFlag_London && finalFlag_MountainView && finalFlag_Berlin && finalFlag_Stockholm && finalFlag_GothenBurg) {
            return 6
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MyTableViewCell
        if(finalFlag_NewYork && finalFlag_London && finalFlag_MountainView && finalFlag_Berlin && finalFlag_Stockholm && finalFlag_GothenBurg) {
            switch indexPath.row {
            case 0:
                cell.cityLabel.text = "GothenBurg"
                cell.minTempLabel.text = "Min " + String(Double((self.arrData_GothenBurg[indexPath.row].min_Temp)) * 1.8 + 32.0) + "F"
                cell.maxTempLabel.text = "Max " + String(Double((self.arrData_GothenBurg[indexPath.row].max_Temp)) * 1.8 + 32.0) + "F"
                cell.humidityLabel.text = "Humidity " + String(self.arrData_GothenBurg[indexPath.row].humidity) + "%"
                cell.weatherImage.kf.setImage(with: url_Image_GothenBurg)
            case 1:
                cell.cityLabel.text = "Stockholm"
                cell.minTempLabel.text = "Min " + String(Double((self.arrData_Stockholm[0].min_Temp)) * 1.8 + 32.0) + "F"
                cell.maxTempLabel.text = "Max " + String(Double((self.arrData_Stockholm[0].max_Temp)) * 1.8 + 32.0) + "F"
                cell.humidityLabel.text = "Humidity " + String(self.arrData_Stockholm[0].humidity) + "%"
                cell.weatherImage.kf.setImage(with: url_Image_Stockholm)
            case 2:
                cell.cityLabel.text = "Mountain View"
                cell.minTempLabel.text = "Min " + String(Double((self.arrData_MountainView[0].min_Temp)) * 1.8 + 32.0) + "F"
                cell.maxTempLabel.text = "Max " + String(Double((self.arrData_MountainView[0].max_Temp)) * 1.8 + 32.0) + "F"
                cell.humidityLabel.text = "Humidity " + String(self.arrData_MountainView[0].humidity) + "%"
                cell.weatherImage.kf.setImage(with: url_Image_MountainView)
            case 3:
                cell.cityLabel.text = "London"
                cell.minTempLabel.text = "Min " + String(Double((self.arrData_London[0].min_Temp)) * 1.8 + 32.0) + "F"
                cell.maxTempLabel.text = "Max " + String(Double((self.arrData_London[0].max_Temp)) * 1.8 + 32.0) + "F"
                cell.humidityLabel.text = "Humidity " + String(self.arrData_London[0].humidity) + "%"
                cell.weatherImage.kf.setImage(with: url_Image_London)
            case 4:
                cell.cityLabel.text = "New York"
                cell.minTempLabel.text = "Min " + String(Double((self.arrData_NewYork[0].min_Temp)) * 1.8 + 32.0) + "F"
                cell.maxTempLabel.text = "Max " + String(Double((self.arrData_NewYork[0].max_Temp)) * 1.8 + 32.0) + "F"
                cell.humidityLabel.text = "Humidity " + String(self.arrData_NewYork[0].humidity) + "%"
                cell.weatherImage.kf.setImage(with: url_Image_NewYork)
            case 5:
                cell.cityLabel.text = "Berlin"
                cell.minTempLabel.text = "Min " + String(Double((self.arrData_Berlin[0].min_Temp)) * 1.8 + 32.0) + "F"
                cell.maxTempLabel.text = "Max " + String(Double((self.arrData_Berlin[0].max_Temp)) * 1.8 + 32.0) + "F"
                cell.humidityLabel.text = "Humidity " + String(self.arrData_Berlin[0].humidity) + "%"
                cell.weatherImage.kf.setImage(with: url_Image_Berlin)
            default:
                cell.cityLabel.text = "add new city via CODE BRO"
            }
        }
        return cell
    }
    
}


