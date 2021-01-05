//
//  Test.swift
//  JSONDecoderPractice
//
//  Created by Tai Chin Huang on 2021/1/4.
//

import Foundation

let data = """
{"cityName": "Toronto",
"weather": {"main": "Clouds",
            "description": "scattered clouds"},
"detail": {"temp": 0.14,
           "temp_min": -0.56,
           "temp_max": 1},
"cityCoord": {"lon": -79.42,
              "lat": 43.7},
""".data(using: .utf8)!

struct WeatherData: Codable {
    let cityName: String
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
func fetchData() {
    let decoder = JSONDecoder()
    do {
        let weatherData = try decoder.decode(WeatherData.self, from: data)
        print(weatherData.cityName)
    } catch {
        print(error)
    }
}
//let decoder = JSONDecoder()
//do {
//    let weatherData = try decoder.decode(WeatherData.self, from: data)
//    print(weatherData.cityName)
//} catch {
//    print(error)
//}
