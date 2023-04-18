//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Kuchi,Yudu Eswar Vinay Pratap Kumar on 4/13/23.
//

import UIKit

class Product{
    var prodName : String?
    var prodCategory : String?
    
    init(prodName: String, prodCategory: String) {
        self.prodName = prodName
        self.prodCategory = prodCategory
    }
    
}




class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return the number of rows. i.e., Number of Products
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        
        var myCell =
        tableViewOutlet.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //populate a cell
        myCell.textLabel?.text = products[indexPath.row].prodName
        
        //return the cell
        
        return myCell
    }
    
    
    
 

    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOutlet.delegate = self;
        tableViewOutlet.dataSource = self;
        
        let p1 = Product(prodName: "MacBookAir", prodCategory: "Laptop")
        products.append(p1)
        let p2 = Product(prodName: "iPhone", prodCategory: "Phone")
        products.append(p2)
        let p3 = Product(prodName: "Airpods", prodCategory: "Accessories")
        products.append(p3)
        let p4 = Product(prodName: "iPad Pro", prodCategory: "Ipad")
        products.append(p4)
        let p5 = Product(prodName: "Case", prodCategory: "Protectors")
        products.append(p5)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "detailsSegue"{
            let destination = segue.destination as! ResultViewController
            
            destination.product = products[(tableViewOutlet.indexPathForSelectedRow?.row)!]
        }
        
        
    }

}

