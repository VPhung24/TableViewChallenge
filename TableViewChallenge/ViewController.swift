//
//  ViewController.swift
//  TableViewChallenge
//
//  Created by Vivian Phung on 6/21/18.
//  Copyright © 2018 Vivian Phung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var x: Int = 0
    var y: Int = 0
    var voteCountArray =  ["Taylor Swift: 0", "Swift: 0"]
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    let taylorSwiftImage = UIImage(named: "taylorSwift")
    let swiftImage = UIImage(named: "swift")
    
    @IBAction func buttonOneAction(_ sender: Any) {
        x += 1
        updateArrayOfPoints()
        tableView.reloadData()

    }
    
    @IBAction func buttonTwoAction(_ sender: Any) {
        y += 1
        updateArrayOfPoints()
        tableView.reloadData()

    }
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = voteCountArray[indexPath.row]
        return cell
    }
    
    func updateArrayOfPoints(){
        voteCountArray =  ["Taylor Swift: \(x)", "Swift: \(y)"]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Taylor Swift or Swift?"
        updateArrayOfPoints()
        buttonOne.setImage(taylorSwiftImage, for: UIControlState.normal)
        buttonTwo.setImage(swiftImage, for: UIControlState.normal)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

