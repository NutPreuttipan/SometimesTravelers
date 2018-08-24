//
//  jsonService.swift
//  SometimesTravelers
//
//  Created by Preuttipan Janpen on 6/8/2561 BE.
//  Copyright © 2561 Preuttipan Janpen. All rights reserved.
//

import Foundation
import AlamofireObjectMapper
import Alamofire

class jsonService {
    static let instance = jsonService()
    
    func jsonBody(complete: @escaping(_ result: CoreResponse?)->())
    {
        let parameters:Parameters = ["apiRequest": ["action": "get_all"]]
        
        print(parameters)
        Alamofire.request("http://pms.thamming.com/papi/configuration/hoteldetail",method: .post, parameters: parameters, encoding: JSONEncoding.default).responseObject { (response: DataResponse<CoreResponse>) in
            switch(response.result)
            {
            case .success(let value):
                //print(value)
                let coreApiResponse = value;
                complete(coreApiResponse)
            case .failure(let error):
                print(error)
                complete(nil)
            }
        }
    }
}
