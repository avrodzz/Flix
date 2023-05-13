//
//  MovieViewController.swift
//  Flix
//
//  Created by Alexis Rodriguez on 5/13/23.
//

import UIKit

class MovieViewController: UIViewController {
    var movieTitle: String?
    var movieSynopsis: String?
    var moviePosterUrl: URL?
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var synopsisLabel: UILabel!
    @IBOutlet var movieImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let validatedTitle = movieTitle {
            titleLabel.text = validatedTitle
        }
        
        if let validatedSynopsis = movieSynopsis {
            synopsisLabel.text = validatedSynopsis
        }
        
        if let validatedUrl = moviePosterUrl {
            movieImageView.af.setImage(withURL: validatedUrl)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
