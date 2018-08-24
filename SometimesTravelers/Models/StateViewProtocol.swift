//
//  StateViewProtocol.swift
//  SometimesTravelers
//
//  Created by Preuttipan Janpen on 16/8/2561 BE.
//  Copyright © 2561 Preuttipan Janpen. All rights reserved.
//

import Foundation
import UIKit

protocol DataLoading {
    associatedtype Content
    var state: ViewState<Content> { get set }
    var loadingView: LoadingView { get }
    var errorView: ErrorView { get }
    
    func update()
}
enum ViewState<T> {
    case loading
    case loaded(data: T)
    case error(message: String)
}
extension DataLoading where Self: UIView {
    func update() {
        switch state {
        case .loading:
            loadingView.isHidden = false
            errorView.isHidden = true
        case .error(let error):
            loadingView.isHidden = true
            errorView.isHidden = false
            print(error)
        case .loaded:
            loadingView.isHidden = true
            errorView.isHidden = true
        }
    }
}

