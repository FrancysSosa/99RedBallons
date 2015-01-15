//
//  ViewController.swift
//  99RedBallons
//
//  Created by Vacano on 12/30/14.
//  Copyright (c) 2014 Vacano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myToolbar: UIToolbar!
    @IBOutlet weak var myImage: UIImageView!
    
    var currentIndex = 0
    var allBallons: [Ballon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.createBalloons()

       
//       var myBallon = Ballons()
//        
//        myBallon.ballonNumber = 1
//        myBallon.ballonImage = UIImage(named: "RedBalloon1.jpg")
//        
//        allBallons.append(myBallon)
//        
//        var myBallon2 = Ballons()
//        
//        myBallon2.ballonNumber = 2
//        myBallon2.ballonImage  = UIImage(named: "RedBalloon2.jpg")
//        
//        var myBallon3 = Ballons()
//        
//        myBallon3.ballonNumber = 3
//        myBallon3.ballonImage  = UIImage(named: "RedBalloon3.jpg")
//        
//        var myBallon4 = Ballons()
//        
//        myBallon4.ballonNumber = 4
//        myBallon4.ballonImage = UIImage(named: "RedBalloon4.Jpg")
//        
//        
//        
//        allBallons += [myBallon2, myBallon3, myBallon4]
//

   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func barButtonItemPressed(sender: UIBarButtonItem) {
        
       let balloon = allBallons[currentIndex]
        
        myLabel.text = "\(balloon.ballonNumber) Balloon"
        myImage.image = balloon.ballonImage
        
        currentIndex += 1
    }
    
    func createBalloons () {
        for var balloonCount = 0; balloonCount <= 99; ++balloonCount {
            var balloon = Ballon()
            balloon.ballonNumber = balloonCount
            
            let randomNumber = Int(arc4random_uniform(UInt32(4)))
            
            switch randomNumber{
            case 1: balloon.ballonImage = UIImage(named: "RedBalloon1.jpg")
            case 2: balloon.ballonImage = UIImage(named: "RedBalloon2.jpg")
            case 3: balloon.ballonImage = UIImage(named: "RedBalloon3.jpg")
            default: balloon.ballonImage = UIImage(named: "RedBalloon4.jpg")
            }
            
            self.allBallons.append(balloon)
        }
        
    }
    

}

