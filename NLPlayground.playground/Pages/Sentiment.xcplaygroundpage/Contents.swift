//: [Previous: Language Detection](@previous)

import NaturalLanguage

let text = "It's pretty good."

let tagger = NLTagger(tagSchemes: [.tokenType, .sentimentScore])
tagger.string = text

tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .paragraph,
                     scheme: .sentimentScore, options: []) { sentiment, _ in
    
    if let sentimentScore = sentiment, let score = Double(sentimentScore.rawValue) {
        if score < -0.7 {
            print("😡")
        } else if score > 0.3 {
            print("😄")
        } else {
            print("😐")
        }
    }
    
    return true
}

