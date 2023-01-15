//
//  Opportunity.swift
//  HERpedia 8.0
//
//  Created by Zahra Zams on 15/01/23.
//

import Foundation

class Opportunity {
    var name: String!
    var desc: String!
    var imageName: String!
    var extra: String!
    
    public init(name: String, desc: String, imageName: String, extra: String) {
        self.name = name
        self.desc = desc
        self.imageName = imageName
        self.extra = extra
    }
 }
