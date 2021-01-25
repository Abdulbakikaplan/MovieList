//
//  MovieDetailInteractor.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//  
//

import Foundation

class MovieDetailInteractor {

    // MARK: Properties

    weak var output: IMovieDetailInteractorToPresenter?
}

extension MovieDetailInteractor: IMovieDetailInteractor {
}
