//
//  DetailViewController.swift
//  Flix
//
//  Created by Joseph Davey on 1/18/18.
//  Copyright © 2018 Joseph Davey. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var backdropImageVIew: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        posterImageView.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        posterImageView.layer.borderWidth = 2
        
        if let movie = movie {
            /*
            titleLabel.text = movie["title"] as? String
            releaseDateLabel.text = movie["release_date"] as? String
            overviewLabel.text = movie["overview"] as? String
            overviewLabel.adjustsFontSizeToFitWidth = true
            titleLabel.adjustsFontSizeToFitWidth = true
            
            let backdropPathString = movie["backdrop_path"] as! String
            let posterPathString = movie["poster_path"] as! String
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            
            let backdropURL = URL(string : baseURLString + backdropPathString)!
            backdropImageVIew.af_setImage(withURL: backdropURL)
            let posterURL = URL(string: baseURLString + posterPathString)!
            posterImageView.af_setImage(withURL: posterURL)
            */
            
            titleLabel.text = movie.title
            releaseDateLabel.text = movie.releaseDate
            overviewLabel.text = movie.overview
            overviewLabel.adjustsFontSizeToFitWidth = true
            backdropImageVIew.af_setImage(withURL: movie.backdropURL)
            posterImageView.af_setImage(withURL: movie.posterURL)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
