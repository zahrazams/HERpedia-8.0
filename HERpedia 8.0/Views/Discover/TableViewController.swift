//
//  TableViewController.swift
//  HERpedia 8.0
//
//  Created by Zahra Zams on 15/01/23.
//

import UIKit

var opportunityList = [Opportunity]()
var filteredOpportunity = [Opportunity]()

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate, UISearchResultsUpdating {
    
    let searchController = UISearchController()

    @IBOutlet weak var opportunityTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initList()
        initSearchController()
        // Do any additional setup after loading the view.
    }
    
    func initSearchController() {
        searchController.loadViewIfNeeded()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.enablesReturnKeyAutomatically = false
        searchController.searchBar.returnKeyType = UIReturnKeyType.done
        definesPresentationContext = true
        
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.searchBar.scopeButtonTitles = ["All","Program","Recruiting","Scholarship"]
        searchController.searchBar.delegate = self
    }
    
    func initList() {
        let ai4all = Opportunity(name: "AI4ALL Program", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "ai4all", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(ai4all)
        
        let bytespiece = Opportunity(name: "Bytes & Pieces Workshop Mentor (Recruiting)", desc: " The future is in our hands. From the minute we get up in the morning until we go to bed at night, we make decisions that influence whether or not we support sustainable lives. The amount of water we use when showering or brushing our teeth, the source of the cereal we put in our bowls, and the mode of transportation we use to get to work are all little but crucial considerations. To me, sustainability implies living in such a way that what we consume does not substantially surpass what we contribute. To preserve a sustainable planet, it is critical to raise sustainable awareness. ", imageName: "bytes", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(bytespiece)
        
        let ewgis = Opportunity(name: "Ewgis Research Program", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "ewgis", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(ewgis)
        
        let first = Opportunity(name: "FIRST Robotics Program", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "first", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(first)
        
        let gwcclub = Opportunity(name: "Girls Who Code Club Leader (Recruiting)", desc: "Girls Who Code Clubs are free, after-school programs that introduce young women to computer science in a welcoming and encouraging setting and are open to students in grades 3 through 12. Students can join a club in person or online to learn more about computer science, improve their communities, and become part of a sisterhood of supportive peers and role models.", imageName: "gwc club", extra: "- Have access to internet and hardware, \n- Have a nonprofit host organization like a school, library, community center, or faith-based organization, \n- Must be 18 years or older")
        opportunityList.append(gwcclub)
        
        let gisambass = Opportunity(name: "GIS Ambassadors (Recruiting)", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "gis ambass", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(gisambass)
        
        let gischap = Opportunity(name: "GIS Chapter President (Recruiting)", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "gis chap", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(gischap)
        
        let giswrites = Opportunity(name: "GIS Writing Team (Recruiting)", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "gis writes", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(giswrites)
        
        let afsacad = Opportunity(name: "Global STEM Acadamies Scholarship", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "afs acad", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(afsacad)
        
        let afsaccel = Opportunity(name: "Global STEM Accelerators Scholarship", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "afs accel", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(afsaccel)
        
        let afsinnov = Opportunity(name: "Global STEM Innovators Scholarship", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "afs innov", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(afsinnov)
        
        let grow = Opportunity(name: "GROW Program", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "grow", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(grow)
        
        let gwcloop = Opportunity(name: "GWC College Loops Program", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "gwc loop", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(gwcloop)
        
        let gwcsum = Opportunity(name: "GWC Summer Program", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "gwc sum", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(gwcsum)
        
        let gwctech = Opportunity(name: "GWC Technical Interview Prep Program", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "gwc tech", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(gwctech)
        
        let hfs = Opportunity(name: "Her For STEM Team (Recruiting)", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "hfs", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(hfs)
        
        let kwkcamp = Opportunity(name: "KWK Coding Program", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "kwk camp", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(kwkcamp)
        
        let kwkassist = Opportunity(name: "KWK Instructor Assistant (Recruiting)", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "kwk assist", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(kwkassist)
        
        let desfilles = Opportunity(name: "Girls Coding Club Program", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "desfilles", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(desfilles)
        
        let mitsea = Opportunity(name: "MIT Sea Grant Intern (Recruiting)", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "mitsea", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(mitsea)
        
        let pixel = Opportunity(name: "PixelHacks Program", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "pixel", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(pixel)
        
        let mint = Opportunity(name: "MINT Program For Girls", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "mint", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(mint)
        
        let rise = Opportunity(name: "Rise Scholarship", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "rise", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(rise)
        
        let techgirls = Opportunity(name: "TechGirls Program", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "techgirls", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(techgirls)
        
        let technov = Opportunity(name: "Technovation Girls Program", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "technov", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(technov)
        
        let wecan = Opportunity(name: "We Can Team (Recruiting)", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "wecan", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(wecan)
        
        let wisci = Opportunity(name: "WiSci Program", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "wisci", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(wisci)
        
        let monashwise = Opportunity(name: "WISE Program Monash University", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "monashwise", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(monashwise)
        
        let binorweg = Opportunity(name: "Women in Finance and Tech Bachelor Scholarship", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "binorweg", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(binorweg)
        
        let csiro = Opportunity(name: "Young Indigenous Women's STEM Academy Program", desc: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.", imageName: "csiro", extra: "At school, I am involved in several interest clubs, including the French Club and Mentari's Consulting Group, which is a club that aims to expose STEM-oriented students to research opportunities and pair them with business-minded students who are capable of turning the results of research into sustainable enterprises. While outside of school, some of my extra-curricular activities include coding and animation.")
        opportunityList.append(csiro)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(searchController.isActive) {
            return filteredOpportunity.count
        }
        return opportunityList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "tableViewCellID") as! TableViewCell
        
        let thisOpportunity: Opportunity!
        
        if(searchController.isActive) {
            thisOpportunity = filteredOpportunity[indexPath.row]
        } else {
            thisOpportunity = opportunityList[indexPath.row]
        }
        
        tableViewCell.opportunityName.text = thisOpportunity.name
        tableViewCell.opportunityImage.image = UIImage(named: thisOpportunity.imageName)
        
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "detailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "detailSegue") {
            let indexPath = self.opportunityTableView.indexPathForSelectedRow!
            
            let tableViewDetail = segue.destination as? TableViewDetail
            
            let selectedOpportunity: Opportunity!
            
            if(searchController.isActive) {
                selectedOpportunity = filteredOpportunity[indexPath.row]
            } else {
                selectedOpportunity = opportunityList[indexPath.row]
            }
            
            tableViewDetail!.selectedOpportunity = selectedOpportunity
            
            self.opportunityTableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        let scopeButton = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        let searchText = searchBar.text!
        
        filterForSearchTextAndScopeButton(searchText: searchText, scopeButton: scopeButton)
    }
    
    func filterForSearchTextAndScopeButton(searchText: String, scopeButton: String = "All") {
        filteredOpportunity = opportunityList.filter {
            opportunity in
            let scopeMatch = (scopeButton == "All" || opportunity.name.lowercased().contains(scopeButton.lowercased()))
            if (searchController.searchBar.text != "") {
                let searchTextMatch = opportunity.name.lowercased().contains(searchText.lowercased())
                
                return scopeMatch && searchTextMatch
            } else {
                return scopeMatch
            }
        }
        opportunityTableView.reloadData()
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
