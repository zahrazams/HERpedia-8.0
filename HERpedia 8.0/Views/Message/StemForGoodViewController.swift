//
//  StemForGoodViewController.swift
//  HERpedia 8.0
//
//  Created by Zahra Zams on 19/01/23.
//

import UIKit

class StemForGoodViewController: UIViewController {
    
    var goodNames: [String] = ["Hii for those in jkt, I'm hosting a cleanup at Ancol. Come join if you'd like! Can be used for service hours :)","that sounds amazing!","I'd love to helpp","I just trained an AI model to predict depression, which you can check out using this link: www.test.com","woww","so cool! would it be ok to feature your project in a post for our organization? lmk if you're interested, i'll send detail!","That sounds great! vv much interested"]

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
        goodNames.append(data)
        myTable.reloadData()
        myData.text = ""
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

extension StemForGoodViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goodNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell? = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell?.textLabel?.text = goodNames[indexPath.row]
        cell?.textLabel?.numberOfLines = 0
        return cell!
    }
    
    
}
