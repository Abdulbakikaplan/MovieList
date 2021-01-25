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
}

extension MovieDetailPresenter: IMovieDetailInteractorToPresenter {
}
