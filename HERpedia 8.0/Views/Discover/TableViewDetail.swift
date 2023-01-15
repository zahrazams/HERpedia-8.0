//
//  TableViewDetail.swift
//  HERpedia 8.0
//
//  Created by Zahra Zams on 15/01/23.
//

import UIKit

class TableViewDetail: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var desc: UITextView!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var extra: UITextView!
    
    @IBOutlet weak var linkButton: UIButton!
    
    var selectedOpportunity: Opportunity!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text = selectedOpportunity.name
        desc.text = selectedOpportunity.desc
        image.image = UIImage(named: selectedOpportunity.imageName)
        extra.text = selectedOpportunity.extra
        
        linkButton.layer.cornerRadius = linkButton.frame.height / 2
        linkButton.setTitleColor(UIColor.white, for: .normal)
         
        linkButton.layer.shadowColor = UIColor.black.cgColor
        linkButton.layer.shadowRadius = 50
        linkButton.layer.shadowOpacity = 0.5
        linkButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func link(_ sender: UIButton) {
        if selectedOpportunity.name == "AI4ALL Program" {
            UIApplication.shared.open(URL(string: "https://ai-4-all.org/")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "Bytes & Pieces Workshop Mentor (Recruiting)" {
            UIApplication.shared.open(URL(string: "https://bytesandpieces.techno-jules.repl.co/involved.html")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "Ewgis Research Program" {
            UIApplication.shared.open(URL(string: "https://www.girlsinstem.org/research-program")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "FIRST Robotics Program" {
            UIApplication.shared.open(URL(string: "https://www.firstinspires.org/")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "Girls Who Code Club Leader (Recruiting)" {
            UIApplication.shared.open(URL(string: "https://girlswhocode.com/get-involved/start-a-club")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "GIS Ambassadors (Recruiting)" {
            UIApplication.shared.open(URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSereSmDitljeJPOy_3aWInZ9wv-HhUVHt8rB3EiqXcZdirkSg/viewform")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "GIS Chapter President (Recruiting)" {
            UIApplication.shared.open(URL(string: "https://docs.google.com/document/d/1wt1x1INDwdq9jdj2cBJdrzMXnTrRdBiDUynmZYSOPCI/edit")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "GIS Writing Team (Recruiting)" {
            UIApplication.shared.open(URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSeUoZPpA4dQ8r_o38V6ndHygC4s12Rff-TRGSbY4U9gxLWd-Q/viewform")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "Global STEM Acadamies Scholarship" {
            UIApplication.shared.open(URL(string: "https://afs.org/global-stem/academies/")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "Global STEM Accelerators Scholarship" {
            UIApplication.shared.open(URL(string: "https://afs.org/global-stem/accelerators/")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "Global STEM Innovators Scholarship" {
            UIApplication.shared.open(URL(string: "https://afs.org/global-stem/innovators/")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "GROW Program" {
            UIApplication.shared.open(URL(string: "https://www.bu.edu/lernet/grow/about.html")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "GWC College Loops Program" {
            UIApplication.shared.open(URL(string: "https://girlswhocode.com/college-loops")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "GWC Summer Program" {
            UIApplication.shared.open(URL(string: "https://girlswhocode.com/programs/summer-immersion-program")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "GWC Technical Interview Prep Program" {
            UIApplication.shared.open(URL(string: "https://www.theforage.com/virtual-internships/prototype/oRMGnryabd3zopfbW/Technical%20Interview%20Prep?ref=sT5aWs9zcsBLtN4fw")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "Her For STEM Team (Recruiting)" {
            UIApplication.shared.open(URL(string: "https://www.instagram.com/herforstem/")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "KWK Coding Program" {
            UIApplication.shared.open(URL(string: "https://www.kodewithklossy.com/apply")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "KWK Instructor Assistant (Recruiting)" {
            UIApplication.shared.open(URL(string: "https://www.kodewithklossy.com/instructor-assistants")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "Girls Coding Club Program" {
            UIApplication.shared.open(URL(string: "https://www.epfl.ch/education/education-and-science-outreach/fr/jeunepublic/coding-club/")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "MIT Sea Grant Intern (Recruiting)" {
            UIApplication.shared.open(URL(string: "https://seagrant.mit.edu/student-opportunities/")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "PixelHacks Program" {
            UIApplication.shared.open(URL(string: "https://pixelhacks.com/")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "MINT Program For Girls" {
            UIApplication.shared.open(URL(string: "https://www.epfl.ch/education/education-and-science-outreach/fr/promotion-des-sciences/programme-mint-pour-les-filles/")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "Rise Scholarship" {
            UIApplication.shared.open(URL(string: "https://www.risefortheworld.org/")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "TechGirls Program" {
            UIApplication.shared.open(URL(string: "https://techgirlsglobal.org/apply/us-techgirls/")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "Technovation Girls Program" {
            UIApplication.shared.open(URL(string: "https://technovationchallenge.org/")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "We Can Team (Recruiting)" {
            UIApplication.shared.open(URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSc3qwgHF4MF5zGkwLPEXxR-uGUSx4PouMnJSXvqeeI7G3Zsaw/viewform")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "WiSci Program" {
            UIApplication.shared.open(URL(string: "https://girlup.org/programs/wisci")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "WISE Program Monash University" {
            UIApplication.shared.open(URL(string: "https://www.monash.edu/it/wise")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "Women in Finance and Tech Bachelor Scholarship" {
            UIApplication.shared.open(URL(string: "https://www.bi.edu/programmes-and-individual-courses/scholarships/women-in-finance-and-tech-bachelor-scholarship/#eligibility_367075")! as URL, options: [:], completionHandler: nil )
        }
        if selectedOpportunity.name == "Young Indigenous Women's STEM Academy Program" {
            UIApplication.shared.open(URL(string: "https://www.csiro.au/en/Education/Programs/Young-Indigenous-Womens-STEM-Academy")! as URL, options: [:], completionHandler: nil )
        }
        else {
            print("Error")
        }
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
