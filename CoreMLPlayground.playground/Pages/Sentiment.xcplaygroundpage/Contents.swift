//: [Previous: Language Detection](@previous)

//:# Natural Language
//: We can even pick out how positive or negative a block of text is.
//:
//: In this example we have a few sample texts that we can evaluate how positive or negative they are.
//:
//: Try it out with a few sentences of your own!


import NaturalLanguage

let firstText = "It's pretty good."
let secondText = "That was the worst beef, broccoli, and pomegranate stew I've ever had."
let thirdText = "How are you, Georgina?"

let texts = [firstText, secondText, thirdText]

let tagger = NLTagger(tagSchemes: [.tokenType, .sentimentScore])
for text in texts {
    tagger.string = text

    tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .paragraph, scheme: .sentimentScore, options: []) { sentiment, _ in
        
        if let sentimentScore = sentiment, let score = Double(sentimentScore.rawValue) {
            if score < -0.7 {
                print("😡 (\(sentimentScore.rawValue))")
            } else if score > 0.3 {
                print("😄 (\(sentimentScore.rawValue))")
            } else {
                print("😐 (\(sentimentScore.rawValue))")
            }
        }
        
        return true
    }
}

//: [Next: The Sound Analysis API](@next)
