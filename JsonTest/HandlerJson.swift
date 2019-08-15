//
//  HandlerJson.swift
//  JsonTest
//
//  Created by Nathalia Melare on 13/08/19.
//  Copyright © 2019 Nathalia Melare. All rights reserved.
//

import Foundation
import UIKit

struct HandlerJson : Codable {
    var nome: String?
    var idade: String?
    var animal: String?
}

class Intern: NSObject {
   static func getAllJson() -> [HandlerJson] {
        var allJson: [HandlerJson] = []
        do {
            if let path = Bundle.main.path(forResource: "JsonData", ofType: ".json")
            {
                let url = URL(fileURLWithPath: path)
                let data = try Data(contentsOf: url)
                allJson = try JSONDecoder().decode([HandlerJson].self, from: data)
                return allJson
            }
        } catch {
            print("Erro")
        }
        return allJson
    }
}

//class Intern : NSObject {
//    static func getAllJson() -> [HandlerJson] {
//        var allJson: [HandlerJson] = []
//        do {
//            if let path = Bundle.main.path(forResource: "JsonData", ofType: ".json", inDirectory: nil) {
//                let url = URL(fileURLWithPath: path)
//                let JsonData = try Data(contentsOf: url)
//                allJson = try JSONDecoder().decode([HandlerJson].self, from: JsonData)
//                return allJson
//            }
//        } catch {
//            print("Erro")
//        }
//        return allJson
//    }
//}

