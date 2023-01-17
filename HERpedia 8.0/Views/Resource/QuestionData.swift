//
//  QuestionData.swift
//  HERpedia 8.0
//
//  Created by Zahra Zams on 17/01/23.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: StemType
}

enum StemType: Character {
    case science = "🧬", technology = "🤖", engineering = "🛠️", mathematics = "📐"
    
    var definition: String {
        switch self {
        case .science:
            return "You're curious about how and why things happen in the world. Despite temptation, your patience and persistence prevent you from jumping to conclusions."
        case .technology:
            return "You have outstanding communication, interpersonal, and leadership skills! Coupled with your decisive decision-making, you are an unstoppable force of tech savvy."
        case .engineering:
            return "Critical and full of creativity, you think outside the box. You are capable of imagining solutions that no one else can, then analyzing them and making crucial decisions."
        case .mathematics:
            return "Your excellent capacity for analysis and finding solutions to problems makes mathematics an excellent field of study for you to pursue."
        }
    }
}
