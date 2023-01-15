//
//  MessageViewController.swift
//  HERpedia 8.0
//
//  Created by Zahra Zams on 16/01/23.
//

import UIKit

class MessageViewController: UIViewController {
    
    var peerNames: [String] = ["Hi! Does anyone know any free coding resources?","Yes!! CodeCademy is free!","there r yt tutorials avail","Khan Academy i think","idk"]

    @IBOutlet weak var myData: UITextField!
    
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func AddNewData(_ sender: Any) {
        guard let data = myData.text
        else {
            return
        }
        peerNames.append(data)
        myTable.reloadData()
        myData.text = ""
    }
    
}

extension MessageViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peerNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell? = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell?.textLabel?.text = peerNames[indexPath.row]
        return cell!
    }
    
    
}
