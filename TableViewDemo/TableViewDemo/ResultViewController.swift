//
//  ResultViewController.swift
//  TableViewDemo
//
//  Created by Kuchi,Yudu Eswar Vinay Pratap Kumar on 4/13/23.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    var product : Product
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        descriptionLabel.text = "The product \(product.prodName) is of \(product.prodCategory)"
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
