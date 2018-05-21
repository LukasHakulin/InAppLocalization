//
//  Copyright © 2018. All rights reserved.
//

extension AppDependencies {

    var languageAppStorage: LanguageAppStorage {
        return LanguageAppStorage(appStorage: appStorage)
    }

    var appLanguageGetterOperation: AppLanguageGetterOperation {
        return AppLanguageGetterOperationImpl(languageAppStorage: languageAppStorage)
    }

    var appLanguageSetterOperation: AppLanguageSetterOperation {
        return AppLanguageSetterOperationImpl(languageAppStorage: languageAppStorage)
    }

    var deviceLanguagesGetterOperation: DeviceLanguagesGetterOperation {
        return DeviceLanguagesGetterOperationImpl()
    }

    var languageController: LanguageController {
        return LanguageControllerImpl(
            appLanguageGetterOperation: appLanguageGetterOperation,
            appLanguageSetterOperation: appLanguageSetterOperation,
            deviceLanguagesGetterOperation: deviceLanguagesGetterOperation
        )
    }
}
