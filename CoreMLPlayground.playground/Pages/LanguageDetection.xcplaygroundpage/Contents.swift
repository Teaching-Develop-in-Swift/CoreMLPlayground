import NaturalLanguage

let greeting = "Hello, playground"
let inverno = "In questo libro lo si farà in maniera chiara, precisa  e, per quanto possibile, divertente."
let don = "Y luego, en el margen, citar a Horacio, o a quien lo dijo."
let riverrun = "a way a lone a last a loved a long the riverrun, past Eve and Adam's, from swerve of shore to bend of bay, brings us by a commodious vicus of recirculation back to Howth Castle and Environs."

let texts = [inverno, don, riverrun]

func identifyLanguageOf(text: String) {
    let recognizer = NLLanguageRecognizer()
    recognizer.processString(text)
    if let dominantLanguage = recognizer.dominantLanguage {
        print(dominantLanguage.rawValue)
    } else {
        print("We could not detect a dominant language.")
    }
}

for text in texts {
    identifyLanguageOf(text: text)
}

//: [Next: Sentiment Analysis](@next)
