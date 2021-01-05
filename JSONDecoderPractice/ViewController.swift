//
//  ViewController.swift
//  JSONDecoderPractice
//
//  Created by Tai Chin Huang on 2021/1/4.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let decoder = JSONDecoder()
        do {
            let weatherData = try decoder.decode([WeatherData].self, from: data)
            print(weatherData.count)
        } catch {
            print(error)
        }
//        let decoder = JSONDecoder()
//        do {
//            let songs = try decoder.decode([Song].self, from: data)
//            print(songs.count)
//        } catch {
//            print(error)
//        }
    }
    let data = """
    [
    {
    "cityName": "Toronto",
     "weather": {
                "main": "Clouds",
                "description": "scattered clouds"
                },
     "detail": {
               "temp": 0.14,
               "temp_min": -0.56,
               "temp_max": 1
                },
     "cityCoord": {
                  "lon": -79.42,
                  "lat": 43.7
                  }
    },
    {
    "cityName": "Berlin",
     "weather": {
                "main": "Clouds",
                "description": "overcast clouds"
                },
     "detail": {
               "temp": 1.18,
               "temp_min": -2.61,
               "temp_max": 1.67
                },
     "cityCoord": {
                  "lon": 13.41,
                  "lat": 52.52
                  }
    },
    {
    "cityName": "Tokyo",
     "weather": {
                "main": "Clouds",
                "description": "broken clouds"
                },
     "detail": {
               "temp": 4.2,
               "temp_min": 3.89,
               "temp_max": 5
                },
     "cityCoord": {
                  "lon": 139.69,
                  "lat": 35.69
                  }
    }
    ]
    """.data(using: .utf8)!
    
//    let data = """
//    {
//    "cityName": "Toronto",
//    "weather": "Clouds",
//    "temp": 0.14,
//    "cityCoord": -79.42
//    }
//    """.data(using: .utf8)!

    struct WeatherData: Codable {
        let cityName: String
//        let weather: String
//        let temp: Double
//        let cityCoord: Double
        let weather: Weather
        let detail: Detail
        let cityCoord: CityCoord

        struct Weather: Codable {
            let main: String
            let description: String
        }
        struct Detail: Codable {
            let temp: Double
            let temp_min: Double
            let temp_max: Double
        }
        struct CityCoord: Codable {
            let lon: Double
            let lat: Double
        }
    }
//    func fetchData() {
//        let decoder = JSONDecoder()
//        do {
//            let weatherData = try decoder.decode(WeatherData.self, from: data)
//            print(weatherData.cityName)
//        } catch {
//            print(error)
//        }
//    }
    //let decoder = JSONDecoder()
    //do {
    //    let weatherData = try decoder.decode(WeatherData.self, from: data)
    //    print(weatherData.cityName)
    //} catch {
    //    print(error)
    //}
    
//    let data = """
//    [
//    {
//    "movie": "我的少女時代",
//    "name": "小幸運"
//    },
//    {
//    "movie": "擺渡人",
//    "name": "十年"
//    }
//    ]
//    """.data(using: .utf8)!
//    struct Song: Codable {
//       let name: String
//       let movie: String
//    }
}

