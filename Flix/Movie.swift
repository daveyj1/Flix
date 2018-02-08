//
//  Movie.swift
//  Flix
//
//  Created by Joseph Davey on 2/7/18.
//  Copyright © 2018 Joseph Davey. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var posterPathString: String
    var backdropPathString: String
    var overview: String
    var releaseDate: String
    var backdropURL: URL!
    var posterURL: URL!
    var baseURLString = "https://image.tmdb.org/t/p/w500"
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        overview = dictionary["overview"] as? String ?? "No overview"
        releaseDate = dictionary["release_date"] as? String ?? "No release date"
        posterPathString = dictionary["poster_path"] as? String ?? "No poster path"
        backdropPathString = dictionary["backdrop_path"] as? String ?? "No backdrop path"
        backdropURL = URL(string : baseURLString + backdropPathString)!
        posterURL = URL(string : baseURLString + posterPathString)!
    }
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }
}
