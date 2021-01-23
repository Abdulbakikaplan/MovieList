//
//  MovieDetailPresenter.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//  
//

import Foundation

class MovieDetailPresenter {

    // MARK: Properties

    weak var view: IMovieDetailView?
    var router: IMovieDetailRouter?
    var interactor: IMovieDetailInteractor?
}

extension MovieDetailPresenter: IMovieDetailPresenter {
    // TODO: implement presentation methods
}

extension MovieDetailPresenter: IMovieDetailInteractorToPresenter {
    // TODO: implement interactor output methods
}
