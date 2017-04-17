//
//  Location.swift
//  dineTexas
//
//  Created by Hyun Joong Kim on 4/5/17.
//  Copyright © 2017 Hyun Joong Kim. All rights reserved.
//

import Foundation

class Location {
    
    private var key:Int
    private var name:String
    private var address:String
    private var hours:String
    private var type:String
    private var lineCount:Int
    private var outlets:Int
    private var food:Int
    private var coffee:Int
    private var alcohol:Int
    private var averageRating:Int
    private var webSite:String
    private var longitude:Double
    private var latitude:Double
    
    init (key:Int, name:String, address:String, hours:String, type:String, lineCount:Int, outlets:Int, food:Int, coffee:Int, alcohol:Int, averageRating:Int, webSite:String, longitude:Double, latitude:Double
    ){
        self.key = key
        self.name = name
        self.address = address
        self.hours = hours
        self.type = type
        self.lineCount = lineCount
        self.outlets = outlets
        self.food = food
        self.coffee = coffee
        self.alcohol = alcohol
        self.averageRating = averageRating
        self.webSite = webSite
        self.longitude = longitude
        self.latitude = latitude

    }

}
