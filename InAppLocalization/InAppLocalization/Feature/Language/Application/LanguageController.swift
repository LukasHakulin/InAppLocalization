//
//  Copyright © 2018. All rights reserved.
//

public protocol LanguageController {
    func appLanguage() throws -> Language
    func set(withLanguage language: Language) throws
}

final class LanguageControllerImpl {

    /* if defined is return in case of missing record for App language (AppLanguageGetterOperation is used before first call of AppLanguageSetterOperation) */
    private let predefinedLanguage: Language?

    fileprivate let appLanguageGetterOperation: AppLanguageGetterOperation
    fileprivate let appLanguageSetterOperation: AppLanguageSetterOperation
    fileprivate let deviceLanguagesGetterOperation: DeviceLanguagesGetterOperation

    public init(
        predefinedLanguage: Language? = nil,
        appLanguageGetterOperation: AppLanguageGetterOperation,
        appLanguageSetterOperation: AppLanguageSetterOperation,
        deviceLanguagesGetterOperation: DeviceLanguagesGetterOperation
    ) {
        self.predefinedLanguage = predefinedLanguage
        self.appLanguageGetterOperation = appLanguageGetterOperation
        self.appLanguageSetterOperation = appLanguageSetterOperation
        self.deviceLanguagesGetterOperation = deviceLanguagesGetterOperation
    }
}

extension LanguageControllerImpl: LanguageController {

    func appLanguage() throws -> Language {

        if let appLanguage = try appLanguageGetterOperation.execute() {
            return appLanguage
        }

        if let predefinedLanguage = predefinedLanguage {
            return predefinedLanguage
        }

        if let deviceLanguage = try deviceLanguagesGetterOperation.execute().first {
            return deviceLanguage
        } else {
            fatalError("No Device Language!")
        }
    }

    func set(withLanguage language: Language) throws {
        try appLanguageSetterOperation.execute(with: language)
    }
}
