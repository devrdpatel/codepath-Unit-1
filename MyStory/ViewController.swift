//
//  ViewController.swift
//  MyStory
//
//  Created by Dev Patel on 1/20/23.
//

import UIKit

class ViewController: UIViewController {

    let myBackStory = ContextItem(title: "My Back Story", image: UIImage(named: "BackStory")!, description: "Barry Allen was a normal boy who was raised in the suburbs of Central City. One day while he was working at his forensics lab, he is struck by lightning. Nine months later, he wakes up from a coma to find out that he has super speed.")
    let myGreatestWeakness = ContextItem(title: "My Greatest Weakness", image: UIImage(named: "Weakness")!, description: "The Flash's greatest weakness is the cold. More specifically, as the temperature becomes colder, molecules move less and less, preventing The Flash from reaching his normal speed levels.")
    let myQuickestSpeed = ContextItem(title: "My Fastest Speed", image: UIImage(named: "Fastest Speed")!, description: "While the Flash's speeds varied from season to season, in Season 8 of The Flash, he was stated to be able to go at 4,000mph. However, later in the season, he reached Mach 20 in 2 minutes, which is a speed of about 15,000 mph.")
    
    var contextItems: [ContextItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        contextItems = [myBackStory, myGreatestWeakness, myQuickestSpeed]
    }


    @IBAction func backStoryAction(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
        if segue.identifier == "detailSegue",
           let button = sender as? UIButton, let detailViewController = segue.destination as? DetailViewController {
            if button.tag == 0 {
                detailViewController.contextItem = contextItems[0]
            } else if button.tag == 1 {
                detailViewController.contextItem = contextItems[1]
            } else if (button.tag == 2) {
                detailViewController.contextItem = contextItems[2]
            } else {
                print("Not the right tag")
            }
        }
    }
}

