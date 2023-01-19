//
//  CareerChatViewController.swift
//  HERpedia 8.0
//
//  Created by Zahra Zams on 19/01/23.
//

import UIKit

class CareerChatViewController: UIViewController {
    
    var careerNames: [String] = ["anyone know what they're going to take as their major??","samee im so lost help","There are a couple of explorer camps and programs to look through on the app's discover page that could help narrow your search!","ill do that! thankss"]


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
        careerNames.append(data)
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

extension CareerChatViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return careerNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell? = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell?.textLabel?.text = careerNames[indexPath.row]
        cell?.textLabel?.numberOfLines = 0
        return cell!
    }
    
    
}
