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
    var movieList: [Result]?
}

extension MovieListPresenter: IMovieListPresenter {
    func fetchMovie() -> [Result] {
        return movieList ?? []
    }
    
    func getMovieList() {
        interactor?.getMovieList()
    }
}

extension MovieListPresenter: IMovieListInteractorToPresenter {
    func getMovieList(movieList: [Result]) {
        self.movieList = movieList
        view?.reloadData()
    }
}
