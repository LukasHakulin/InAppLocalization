//
//  Copyright © 2018. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /* List of App languages should correspond with your localizations in Project->Info(Localizations) in Project settings */
    fileprivate let appLanguages: [Language] = [Language.english, Language.german, Language.czech]
    fileprivate let languageController: LanguageController = AppDelegate().appDependencies.languageController  // DI break, only for test purpose

    // TODO:
    /*
     * Localize ViewController ... New Localizer Feature, Extension for LocalizationKeys struct
     */

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        print("Language controller with no predefined language:")
        print(try! languageController.appLanguage())

        print("Language controller with predefined GERMAN language:")
        let languageControllerWithPredefinedGermanLanguage: LanguageController = LanguageControllerImpl(
            predefinedLanguage: Language.german,
            appLanguageGetterOperation: AppDelegate().appDependencies.appLanguageGetterOperation,
            appLanguageSetterOperation: AppDelegate().appDependencies.appLanguageSetterOperation,
            deviceLanguagesGetterOperation: AppDelegate().appDependencies.deviceLanguagesGetterOperation
        )
        print(try! languageControllerWithPredefinedGermanLanguage.appLanguage())

        // We can easily change our app language for example to CZECH
        _ = try? languageController.set(withLanguage: Language.czech)

        // Lets test our language controllers again
        print("Language controller with no predefined language:")
        print(try! languageController.appLanguage())

        print("Language controller with predefined GERMAN language:")
        print(try! languageControllerWithPredefinedGermanLanguage.appLanguage())
    }
}

