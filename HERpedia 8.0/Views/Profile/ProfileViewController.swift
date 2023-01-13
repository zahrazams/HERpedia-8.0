//
//  ProfileViewController.swift
//  HERpedia 8.0
//
//  Created by Zahra Zams on 13/01/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var aboutNames: [String] = ["My name is Siti Zahradinar Zams and I am a 20-year-old college student who is working toward a bachelor's degree in computer science. I was born and raised in Jakarta, Indonesia. I am passionate about STEM, specifically topics within the area of technology which is reflect by the range of projects I've developedusing different programming languages, specifically Python. I have also taken part in several math competitions, making it to the preliminary round and even winning a bronze medal in the final round of the Southeast Asian Mathematical Olympiad in 2019 and the World Mathematics Invitational in 2022. As a student, I am diligent and devoted to my studies. I consistently give my all to everything I do, whether it is schoolwork, a community service project, or the pursuit of a goal."]
    
    var experienceNames: [String] = ["Data Scientist at Deloitte","SDE Intern at Amazon"]
    
    var skillNames: [String] = ["Leadership","Management"]

    var accomplishmentNames: [String] = ["Forbes 30 Under 30","Jardin Scholarship Awardee"]
    
    @IBOutlet weak var myTable: UITableView!
    
    @IBOutlet weak var myData1: UITextField!
    
    @IBOutlet weak var myTable1: UITableView!
    
    @IBOutlet weak var myData2: UITextField!
    
    @IBOutlet weak var myTable2: UITableView!
    
    @IBOutlet weak var myTable3: UITableView!
    
    @IBOutlet weak var myData3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.delegate = self
        myTable.dataSource = self
        myTable1.delegate = self
        myTable1.dataSource = self
        myTable2.delegate = self
        myTable2.dataSource = self
        myTable3.delegate = self
        myTable3.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func AddNewData1(_ sender: Any) {
        guard let data = myData1.text
        else {
            return
        }
        experienceNames.append(data)
        let alertTitle = "Saving Data"
        let alertMessage = "Data has been added successfully"
        let alertBox = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertBox.addAction(alertAction)
        present(alertBox, animated: true, completion: nil)
        myTable1.reloadData()
        myData1.text = ""
    }
    
    @IBAction func AddNewData2(_ sender: Any) {
        guard let data = myData2.text
        else {
            return
        }
        skillNames.append(data)
        let alertTitle = "Saving Data"
        let alertMessage = "Data has been added successfully"
        let alertBox = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertBox.addAction(alertAction)
        present(alertBox, animated: true, completion: nil)
        myTable2.reloadData()
        myData2.text = ""
    }
    
    @IBAction func AddNewData3(_ sender: Any) {
        guard let data = myData3.text
        else {
            return
        }
        accomplishmentNames.append(data)
        let alertTitle = "Saving Data"
        let alertMessage = "Data has been added successfully"
        let alertBox = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertBox.addAction(alertAction)
        present(alertBox, animated: true, completion: nil)
        myTable3.reloadData()
        myData3.text = ""
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

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 0 {
            return aboutNames.count
        }
        else if tableView.tag == 1 {
            return experienceNames.count
        }
        else if tableView.tag == 2 {
            return skillNames.count
        }
        else {
            return accomplishmentNames.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView.tag == 0 {
            let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = aboutNames[indexPath.row]
            return cell
        }
        else if tableView.tag == 1 {
            let cell = myTable1.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = experienceNames[indexPath.row]
            return cell
        }
        else if tableView.tag == 2 {
            let cell = myTable2.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = skillNames[indexPath.row]
            return cell
        }
        else {
            let cell = myTable3.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = accomplishmentNames[indexPath.row]
            return cell
        }
    }
}
