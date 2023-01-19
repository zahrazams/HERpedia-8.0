//
//  TechTipsViewController.swift
//  HERpedia 8.0
//
//  Created by Zahra Zams on 19/01/23.
//

import UIKit

class TechTipsViewController: UIViewController {
    
    var tipNames: [String] = ["hii does anyone know any free coding courses?","check out Brain4Code Learning, Code With Cal, and Kamyrn Ohly on yt","CodeCademy!!","you can try out udemy!","great, thanks a lott!!"]

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
        tipNames.append(data)
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

extension TechTipsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tipNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell? = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell?.textLabel?.text = tipNames[indexPath.row]
        cell?.textLabel?.numberOfLines = 0
        return cell!
    }
    
    
}
