//
//  Copyright © 2018. All rights reserved.
//

public extension AppDependencies {

    public var appLanguageGetterOperation: AppLanguageGetterOperation {
        return AppLanguageGetterOperationImpl(languageAppStorage: languageAppStorage)
    }

    public var appLanguageSetterOperation: AppLanguageSetterOperation {
        return AppLanguageSetterOperationImpl(languageAppStorage: languageAppStorage)
    }

    public var deviceLanguagesGetterOperation: DeviceLanguagesGetterOperation {
        return DeviceLanguagesGetterOperationImpl()
    }

    public var languageController: LanguageController {
        return LanguageControllerImpl(
            appLanguageGetterOperation: appLanguageGetterOperation,
            appLanguageSetterOperation: appLanguageSetterOperation,
            deviceLanguagesGetterOperation: deviceLanguagesGetterOperation
        )
    }
}

extension AppDependencies {

    var languageAppStorage: LanguageAppStorage {
        return LanguageAppStorage(appStorage: appStorage)
    }
}
