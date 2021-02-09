//
//  MovieDetailsViewController.swift
//  flixster
//
//  Created by Sara Fryzlewicz on 2/8/21.
//

import UIKit
import Alamofire

class MovieDetailsViewController: UIViewController {
    //variables
    
    @IBOutlet weak var Backdrop: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var fadeView: UIImageView!
    
    var movie: [String: Any]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        descriptionLabel.text = movie["overview"] as? String
        descriptionLabel.sizeToFit()
        
        
        //front poster display
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseURL + posterPath)
        posterView.af_setImage(withURL: posterUrl!)
        //backdrop display
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        //faded image
        let fadeUrl = URL(string: "https://www.pngkey.com/png/full/894-8944883_black-gradient-overlay-stress-editing-background-download-monochrome.png")
        
        Backdrop.af_setImage(withURL: backdropUrl!)
        fadeView.af_setImage(withURL: fadeUrl!)
        

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
