//
//  SplashContract.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//  
//

import Foundation

protocol ISplashView: IBaseView {
}

protocol ISplashPresenter: class {
    func navigateMovieList()
}

protocol ISplashInteractor: class {
}

protocol ISplashInteractorToPresenter: class {
}

protocol ISplashRouter: class {
    func navigateMovieList()
}
