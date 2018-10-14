//
//  Copyright © 2018. All rights reserved.
//

public final class AppLanguageGetterOperationImpl: AppLanguageGetterOperation {

    private let languageAppStorage: LanguageAppStorage

    init(languageAppStorage: LanguageAppStorage) {
        self.languageAppStorage = languageAppStorage
    }

    override public func execute(with input: Empty) throws -> Language? {
        guard let languageCode = try languageAppStorage.load() else { return nil }

        return Language(code: languageCode)
    }
}
