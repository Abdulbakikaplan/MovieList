//
//  SplashPresenter.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//  
//

import Foundation

class SplashPresenter {

    // MARK: Properties

    weak var view: ISplashView?
    var router: ISplashRouter?
    var interactor: ISplashInteractor?
}

extension SplashPresenter: ISplashPresenter {
    func navigateMovieList() {
        router?.navigateMovieList()
    }
}

extension SplashPresenter: ISplashInteractorToPresenter {
}
