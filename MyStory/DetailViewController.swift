//
//  DetailViewController.swift
//  MyStory
//
//  Created by Dev Patel on 1/20/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var contextItem: ContextItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        if let contextItem = contextItem {
            self.title = contextItem.title
            contextItemDesc.text = contextItem.description
            contextItemImage.image = contextItem.image
        }
    }
    
    @IBOutlet weak var contextItemDesc: UILabel!
    @IBOutlet weak var contextItemImage: UIImageView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
