//
//  MovieListContract.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//  
//

import Foundation

protocol IMovieListView: IBaseView {
    func reloadData()
}

protocol IMovieListPresenter: class {
    func fetchMovie() -> [Result]
    func getMovieList()
    func navigateDetail(result: Result)
}

protocol IMovieListInteractor: class {
    func getMovieList()
}

protocol IMovieListInteractorToPresenter: class {
    func getMovieList(movieList: [Result])
}

protocol IMovieListRouter: class {
    func navigateDetail(result: Result)
}
