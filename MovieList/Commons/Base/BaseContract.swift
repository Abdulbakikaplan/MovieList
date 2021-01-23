//
//  BaseContract.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//

import Foundation
import UIKit

// MARK: - View
@objc protocol IBaseView: class {
    func showProgressHUD()
    func hideProgressHUD()
}

extension UIViewController: IBaseView {

    func showProgressHUD() {
//        LoadingManager.shared.showLoading()
    }

    func hideProgressHUD() {
  //      LoadingManager.shared.hideLoading()
    }

}

// MARK: - Presenter
@objc protocol IBasePresenter: class {
    @objc optional func viewDidLoad()
    @objc optional func viewWillAppear()
    @objc optional func viewDidAppear()
}

protocol IBaseInteractorToPresenter: class {
    func wsErrorOccurred(message: String)
}

// MARK: - Interactor
protocol IBaseInteractor: class {}

protocol IBaseAdapter: class {
    func isLastItem(_ index: Int) -> Bool
    func itemCount() -> Int
}

extension IBaseAdapter {
    func isLastItem(_ index: Int) -> Bool {
        itemCount() == index
    }
}
