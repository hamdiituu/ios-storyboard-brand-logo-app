//
//  ViewController.swift
//  StoryBoardFirstApp
//
//  Created by Hamdi on 28.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var brandImage: UIImageView!
    
    var currentBrandId = 0
    
    let brandImages = ["bmw.png","mercedes.png","porsche.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBrandButton(_ sender: Any) {
        
        if(brandImages.count == currentBrandId + 1){
            currentBrandId = 0
        }else{
            currentBrandId += 1
        }
        
        brandImage.image = UIImage(named: brandImages[currentBrandId])
    }
    
}

