//
//  MovieListPresenter.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//  
//

import Foundation

class MovieListPresenter {

    // MARK: Properties

    weak var view: IMovieListView?
    var router: IMovieListRouter?
    var interactor: IMovieListInteractor?
}

extension MovieListPresenter: IMovieListPresenter {
}

extension MovieListPresenter: IMovieListInteractorToPresenter {
}
