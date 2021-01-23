//
//  MovieDetailViewController.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//  
//

import Foundation
import UIKit
import Kingfisher

class MovieDetailViewController: UIViewController, StoryboardLoadable {

    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var textView: UITextView!
    // MARK: Properties

    var presenter: IMovieDetailPresenter?
    var result: Result?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        imageView.kf.setImage(with: URL(string: Constants.shared.imageURL + (result?.posterPath ?? "")))
        textView.text = result?.overview
    }
}

extension MovieDetailViewController: IMovieDetailView {
}
