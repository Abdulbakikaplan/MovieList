//
//  SplashViewController.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//  
//

import Foundation
import UIKit

class SplashViewController: UIViewController, StoryboardLoadable {

    // MARK: Properties

    var presenter: ISplashPresenter?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SplashViewController: ISplashView {
    // TODO: implement view output methods
}
