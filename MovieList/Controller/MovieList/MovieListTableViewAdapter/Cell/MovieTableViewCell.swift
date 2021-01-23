//
//  MovieTableViewCell.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var ratingLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
