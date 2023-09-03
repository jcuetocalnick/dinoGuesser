//
//  DetailViewController.swift
//  DGStarter
//
//  Created by Jane Calnick on 8/31/23.
//

import UIKit

class DetailViewController: UIViewController {

    var dinosaur: Dinosaur?
    // IBOutlets

    @IBOutlet weak var dinosaurImage: UIImageView!
    @IBOutlet weak var dinoNameLbel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var factData1: UILabel!
    @IBOutlet weak var factData2: UILabel!
    @IBOutlet weak var factData3: UILabel!
    @IBOutlet weak var factData4: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
           if let dinosaur = dinosaur {
               print(dinosaur.name)
           }
        
        if let dinosaur = dinosaur {
            // Configure the dinosaur image and dynamic labels
            dinosaurImage.image = dinosaur.image
            dinoNameLbel.text = dinosaur.name
            typeLabel.text = dinosaur.type
            weightLabel.text = String(dinosaur.weight) + " KG"
            heightLabel.text = String(dinosaur.height) + " M"
            factData1.text = String(dinosaur.diet)
            factData2.text = String(dinosaur.era)
            factData3.text = String(dinosaur.region)
            factData4.text = String(dinosaur.speed) + " mph"
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

