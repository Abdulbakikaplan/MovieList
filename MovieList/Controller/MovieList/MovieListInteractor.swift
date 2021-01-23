//
//  MovieListInteractor.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//  
//

import Foundation

class MovieListInteractor {

    // MARK: Properties

    weak var output: IMovieListInteractorToPresenter?
}

extension MovieListInteractor: IMovieListInteractor {
}
