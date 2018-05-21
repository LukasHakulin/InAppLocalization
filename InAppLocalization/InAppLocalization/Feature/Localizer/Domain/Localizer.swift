//
//  Copyright © 2018. All rights reserved.
//

protocol Localizer {
    func localize(_ key: String, _ arguments: CVarArg...) -> String
    func localize(_ key: String, _ arguments: [CVarArg]) -> String
}

extension Localizer {
    func localize(_ key: String, _ arguments: CVarArg...) -> String {
        return self.localize(key, arguments)
    }
}
