//
//  jsonModel.swift
//  SometimesTravelers
//
//  Created by Preuttipan Janpen on 6/8/2561 BE.
//  Copyright © 2561 Preuttipan Janpen. All rights reserved.
//

import ObjectMapper

class jsonBodyResponse: Mappable
{
    var id : String?
    var chain: String?
    var telephone: String?
    var fax: String?
    var email: String?
    var firstAddress: String?
    var secondAddress: String?
    var postCode: String?
    var latitude: Int?
    var longtitude: Int?
    var code: String?
    var name: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        chain <- map["chain"]
        telephone <- map["telephone"]
        fax <- map["fax"]
        email <- map["email"]
        firstAddress <- map["firstAddress"]
        secondAddress <- map["secondAddress"]
        postCode <- map["postCode"]
        latitude <- map["latitude"]
        longtitude <- map["longtitude"]
        code <- map["code"]
        name <- map["name"]
    }
}


class CoreResponse: Mappable
{
    var data:[jsonBodyResponse]?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        data <- map["data"]
    }
}

