//
//  LoadingView.swift
//  SometimesTravelers
//
//  Created by Preuttipan Janpen on 16/8/2561 BE.
//  Copyright © 2561 Preuttipan Janpen. All rights reserved.
//

import UIKit
import Lottie

final class LoadingView: UIView{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        animationInit()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func animationInit() {
        self.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        let animationView = LOTAnimationView(name: "loading_rainbow")
        animationView.frame = CGRect(x: 0, y: 0, width: 75, height: 75)
        animationView.loopAnimation = true
        animationView.center = self.center
        animationView.contentMode = .scaleAspectFill
        animationView.play()
        self.addSubview(animationView)
    }
    
    
//    ------------Handle View from xib file------------
//    class func instanceFromNib() -> UIView {
//        return UINib(nibName: "View", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
//    }
//    var view = MyClass.instanceFromNib()
//    self.view.addSubview(view)
    
}


