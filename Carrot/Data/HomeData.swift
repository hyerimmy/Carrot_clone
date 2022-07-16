//
//  HomeData.swift
//  Carrot
//
//  Created by 황혜림 on 2022/07/17.
//

import Foundation

class HomeData{
    
    var imagename : String
    
    var title : String
    var location : String
    var time : String
    var price : Int
    
    var chatcount : Int?
    var heartcount : Int?
    
    init(_ imagename : String, _ title : String, _ location : String,_ time : String, _ price : Int) {
        self.imagename = imagename
        self.title = title
        self.location = location
        self.time = time
        self.price = price
    }
}
