//
//  MovieDetailRouter.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//  
//

import Foundation
import UIKit

class MovieDetailRouter {

    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func setupModule(result: Result) -> MovieDetailViewController {
        let viewController = UIStoryboard.loadViewController() as MovieDetailViewController
        let presenter = MovieDetailPresenter()
        let router = MovieDetailRouter()
        let interactor = MovieDetailInteractor()

        viewController.presenter =  presenter
        viewController.result = result
        viewController.modalPresentationStyle = .fullScreen

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension MovieDetailRouter: IMovieDetailRouter {
    // TODO: Implement wireframe methods
}
