//:# Natural Language
//: We can pick out the language of a piece of text, even something like James Joyce's Finnegan's wake.
//: In this example we loop through three pre-prepared texts to see what language each is written in. Try changing the constant values below or add your own constants to the `texts` property to identify the language of your own block of text.

import NaturalLanguage

let inverno = "In questo libro lo si farà in maniera chiara, precisa  e, per quanto possibile, divertente."
let don = "Y luego, en el margen, citar a Horacio, o a quien lo dijo."
let riverrun = "a way a lone a last a loved a long the riverrun, past Eve and Adam's, from swerve of shore to bend of bay, brings us by a commodious vicus of recirculation back to Howth Castle and Environs."

let texts = [inverno, don, riverrun]

func identifyLanguageOf(text: String) -> String? {
    let recognizer = NLLanguageRecognizer()
    recognizer.processString(text)
    if let dominantLanguage = recognizer.dominantLanguage {
        return dominantLanguage.rawValue
    }
    return nil
}

for text in texts {
    let ourLocale = Locale.current
    if let languageCode = identifyLanguageOf(text: text), let language = ourLocale.localizedString(forLanguageCode: languageCode) {
        print("The text's language is \(language).")
    } else {
        print("We could not detect a dominant language.")
    }
}

//: [Next: Sentiment Analysis](@next)
