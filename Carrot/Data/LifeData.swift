//
//  LifeData.swift
//  Carrot
//
//  Created by 황혜림 on 2022/07/17.
//

import Foundation

class LifeData{
    var content : String
    var imagename : String

    var nickname : String
    var location : String
    var time : String
    
    init(_ content : String, _ imagename : String, _ nickname : String,_ location : String, _ time : String) {
        self.content = content
        self.imagename = imagename
        self.nickname = nickname
        self.location = location
        self.time = time
    }
}
