//
//  MovieListViewController.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//  
//

import Foundation
import UIKit

class MovieListViewController: UIViewController, StoryboardLoadable {

    @IBOutlet weak var tableView: UITableView!
    var adapter: MovieListTableViewAdapter?
    // MARK: Properties

    var presenter: IMovieListPresenter?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.getMovieList()
        prepareTableView()
    }

    private func prepareTableView() {
        tableView.delegate = adapter
        tableView.dataSource = adapter
        tableView.registerCells([MovieTableViewCell.self])
    }
}

extension MovieListViewController: IMovieListView {
    func reloadData() {
        tableView.reloadData()
    }
}
