//
//  ViewController.swift
//  Coin Toss
//
//  Created by Paul Wochnick on 12/7/15.
//  Copyright © 2015 Paul Wochnick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let coinModel = CoinModel()
    
    var coinImageHeads: UIImage = UIImage(named: "Quarter-Heads.png")!
    
    var coinImageTails: UIImage = UIImage(named: "Quarter-Tails.png")!
    
    var counterHeads: Int = 0
    
    var counterTails: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var coinLabel: UILabel!

    @IBOutlet weak var counterHeadsLabel: UILabel!

    @IBOutlet weak var counterTailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        flipCoinButton()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func flipCoinButton() {
        
        coinLabel.text = coinModel.getRandomCoinToss()
        
        if coinLabel.text == "Heads" {
        
            imageView.image = coinImageHeads
            
            counterHeads = ++counterHeads
            
            counterHeadsLabel.text = "\(counterHeads)"
            
        } else {
        
           imageView.image = coinImageTails
            
            counterTails = ++counterTails
            
            counterTailsLabel.text = "\(counterTails)"
        
        }
        
       self.imageView.rotate360Degrees()
        
    }

}

