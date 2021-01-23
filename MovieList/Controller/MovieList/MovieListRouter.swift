//
//  MovieListRouter.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//  
//

import Foundation
import UIKit

class MovieListRouter {

    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func setupModule() -> MovieListViewController {
        let viewController = UIStoryboard.loadViewController() as MovieListViewController
        let presenter = MovieListPresenter()
        let router = MovieListRouter()
        let interactor = MovieListInteractor()
        let adapter = MovieListTableViewAdapter(presenter: presenter, view: viewController)

        viewController.presenter =  presenter
        viewController.adapter = adapter
        viewController.modalPresentationStyle = .fullScreen

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension MovieListRouter: IMovieListRouter {
}
