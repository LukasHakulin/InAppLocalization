//
//  Copyright © 2018. All rights reserved.
//

import Foundation

final class LocalizerImpl {

    fileprivate let appLanguageGetterOperation: AppLanguageGetterOperation
    fileprivate let deviceLanguagesGetterOperation: DeviceLanguagesGetterOperation

    init(
        appLanguageGetterOperation: AppLanguageGetterOperation,
        deviceLanguagesGetterOperation: DeviceLanguagesGetterOperation
    ) {
        self.appLanguageGetterOperation = appLanguageGetterOperation
        self.deviceLanguagesGetterOperation = deviceLanguagesGetterOperation
    }

    fileprivate func appLanguage() throws -> Language {

        if let appLanguage = try appLanguageGetterOperation.execute() {
            return appLanguage
        }

        if let deviceLanguage = try deviceLanguagesGetterOperation.execute().first {
            return deviceLanguage
        } else {
            fatalError("No Device Language!")
        }
    }
}

extension LocalizerImpl: Localizer {

    func localize(_ key: String, _ arguments: [CVarArg]) -> String {
        guard
            let language = try? appLanguage(),
            let defaultPath = Bundle.main.path(forResource: language.code, ofType: "lproj"),
            let localizedBundle = Bundle.init(path: defaultPath)
        else { return "No Device Language!" }

        if arguments.isEmpty {
            return localizedBundle.localizedString(forKey: key, value: "", table: nil)
        } else {
            return String(
                format: localizedBundle.localizedString(forKey: key, value: "", table: nil),
                arguments: arguments
            )
        }
    }
}
