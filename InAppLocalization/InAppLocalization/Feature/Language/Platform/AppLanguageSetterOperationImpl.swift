//
//  Copyright © 2018. All rights reserved.
//

public final class AppLanguageSetterOperationImpl: AppLanguageSetterOperation {

    private let languageAppStorage: LanguageAppStorage

    init(languageAppStorage: LanguageAppStorage) {
        self.languageAppStorage = languageAppStorage
    }

    override public func execute(with input: Language) throws {
        _ = try languageAppStorage.save(input.code)
    }
}
