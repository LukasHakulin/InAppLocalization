//
//  Copyright © 2018. All rights reserved.
//

final class AppLanguageSetterOperationImpl: AppLanguageSetterOperation {

    private let languageAppStorage: LanguageAppStorage

    init(languageAppStorage: LanguageAppStorage) {
        self.languageAppStorage = languageAppStorage
    }

    override func execute(with input: Language) throws {
        _ = try languageAppStorage.save(input.code)
    }
}
