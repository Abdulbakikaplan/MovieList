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
        presenter?.navigateMovieList()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}

extension SplashViewController: ISplashView {
}
