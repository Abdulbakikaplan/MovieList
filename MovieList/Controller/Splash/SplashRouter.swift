//
//  SplashRouter.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//  
//

import Foundation
import UIKit

class SplashRouter {

    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func setupModule() -> SplashViewController {
        let viewController = UIStoryboard.loadViewController() as SplashViewController
        let presenter = SplashPresenter()
        let router = SplashRouter()
        let interactor = SplashInteractor()

        viewController.presenter =  presenter
        viewController.modalPresentationStyle = .fullScreen

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension SplashRouter: ISplashRouter {
    func navigateMovieList() {
        let viewController = MovieListRouter.setupModule()
        let navigationController = UINavigationController(rootViewController: viewController)
        AppRouter.window.rootViewController = navigationController
        AppRouter.window.makeKeyAndVisible()
    }
}
