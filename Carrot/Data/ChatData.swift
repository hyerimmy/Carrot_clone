//
//  ChatData.swift
//  Carrot
//
//  Created by 황혜림 on 2022/07/17.
//

import Foundation

class ChatData{
    var imagenameProfile : String
    var imagenameProduct : String

    
    var nickname : String
    var location : String
    var time : String
    var content : String
    
    init(_ imagenameProfile : String, _ imagenameProduct : String, _ nickname : String,_ location : String, _ time : String, _ content : String) {
        self.imagenameProfile = imagenameProfile
        self.imagenameProduct = imagenameProduct
        self.nickname = nickname
        self.location = location
        self.time = time
        self.content = content
    }
}
