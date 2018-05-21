//
//  Copyright © 2018. All rights reserved.
//

extension AppDependencies {

    var localizer: Localizer {
        return LocalizerImpl(
            appLanguageGetterOperation: appLanguageGetterOperation,
            deviceLanguagesGetterOperation: deviceLanguagesGetterOperation
        )
    }
}
