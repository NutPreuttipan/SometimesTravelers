//
//  ViewController.swift
//  SometimesTravelers
//
//  Created by Preuttipan Janpen on 6/8/2561 BE.
//  Copyright © 2561 Preuttipan Janpen. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let loadingView = LoadingView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        loadingView.center = self.view.center
        //        let errorView = ErrorView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        //        self.view.addSubview(loadingView)
        //        self.view.addSubview(errorView)
        
        
        
        //        let animationView = LOTAnimationView(name: "loading_rainbow")
        //        animationView.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        //        animationView.center = self.view.center
        //        animationView.contentMode = .scaleAspectFill
        //        view.addSubview(animationView)
        //        animationView.play()
        
    }
    
    @IBAction func onClickCallJsonService(_ sender: UIButton) {
        let loadingView = LoadingView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        loadingView.center = self.view.center
        self.view.addSubview(loadingView)
        
        jsonService.instance.jsonBody { (result:CoreResponse?)  in
            loadingView.removeFromSuperview()
            if (result == nil)
            {
                print("Error")
            }
            else
            {
                for i in 0...result!.data!.count-1
                {
                    print(result!.data![i].id!)
                }
            }
        }
    }
}





