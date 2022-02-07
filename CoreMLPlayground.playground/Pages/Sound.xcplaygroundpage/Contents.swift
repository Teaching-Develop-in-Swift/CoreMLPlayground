//: [Previous: Sentiment Detection](@previous)

//: Let's take a look at all the built-in sounds we can recognize...

import SoundAnalysis

do {
    let soundRequest = try SNClassifySoundRequest(classifierIdentifier: .version1)
    let knownClassifications = soundRequest.knownClassifications
    for classification in knownClassifications {
        print("\(classification.description)")
    }
    print("Total sounds able to be recognized: \(knownClassifications.count)")
} catch {
    print("Something went wrong with our sound classification request.")
}
