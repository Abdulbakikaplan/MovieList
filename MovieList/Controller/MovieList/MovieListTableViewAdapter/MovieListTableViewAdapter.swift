//
//  MovieListTableViewAdapter.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//

import Foundation
import UIKit

class MovieListTableViewAdapter: NSObject {

    private let presenter: IMovieListPresenter
    private let view: IMovieListView

    init(presenter: IMovieListPresenter, view: IMovieListView) {
        self.presenter = presenter
        self.view = view
    }
}

extension MovieListTableViewAdapter: IBaseAdapter {
    func itemCount() -> Int {
        return 5
    }
}

extension MovieListTableViewAdapter: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return setupMovieTableViewCell(tableView: tableView)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    private func setupMovieTableViewCell(tableView: UITableView) -> UITableViewCell {
        let identifier = MovieTableViewCell.nameOfClass
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        if let cell = cell as? MovieTableViewCell {
            return cell
        }
        return UITableViewCell()
    }
}
