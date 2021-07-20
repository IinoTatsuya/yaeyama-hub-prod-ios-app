//
//  DataType.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/07/02.
//

import Foundation
import SwiftUI

struct User {
    var id = UUID().uuidString
    var email = String()
    var env = String()
    
    var username = String()
    var birthday = String()
    var gender = Int()
    var prefectures = Int()
    var university = String()
    var type : [Int]? = []
    var interests : [Int]? = []
    var interestsString = String()
    var introduction = String()
    var skill = String()

    var points = Int()
    var iconExist = Bool()
    var icon = UIImage()
    
    var idToken = String()
    var refreshToken = String()
    
    var session = Bool()
    
}

var user = User()
