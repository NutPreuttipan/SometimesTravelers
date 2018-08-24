//
//  ErrorView.swift
//  SometimesTravelers
//
//  Created by Preuttipan Janpen on 16/8/2561 BE.
//  Copyright © 2561 Preuttipan Janpen. All rights reserved.
//

import UIKit

class ErrorView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
