//
//  Copyright © 2018. All rights reserved.
//

public protocol LanguageController: AnyObject {
    var predefinedLanguage: Language? { get set }
    func appLanguage() throws -> Language
    func set(withLanguage language: Language) throws
}

public final class LanguageControllerImpl {

    /* if defined is return in case of missing record for App language (AppLanguageGetterOperation is used before first call of AppLanguageSetterOperation) */
    public var predefinedLanguage: Language?

    fileprivate let appLanguageGetterOperation: AppLanguageGetterOperation
    fileprivate let appLanguageSetterOperation: AppLanguageSetterOperation
    fileprivate let deviceLanguagesGetterOperation: DeviceLanguagesGetterOperation

    public init(
        appLanguageGetterOperation: AppLanguageGetterOperation,
        appLanguageSetterOperation: AppLanguageSetterOperation,
        deviceLanguagesGetterOperation: DeviceLanguagesGetterOperation
        ) {
        self.appLanguageGetterOperation = appLanguageGetterOperation
        self.appLanguageSetterOperation = appLanguageSetterOperation
        self.deviceLanguagesGetterOperation = deviceLanguagesGetterOperation
    }
}

extension LanguageControllerImpl: LanguageController {

    public func appLanguage() throws -> Language {

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

    public func set(withLanguage language: Language) throws {
        try appLanguageSetterOperation.execute(with: language)
    }
}
