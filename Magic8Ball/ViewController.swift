//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Elijah Molloy on 11/9/17.
//  Copyright © 2017 Bye Book App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainImage: UIImageView!
    
    let imageList = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func askButtonAction(_ sender: Any) {
        updateImage()
    }
    
    func updateImage() {
        mainImage.image = imageList[Int(arc4random_uniform(5))]
    }
    

}

