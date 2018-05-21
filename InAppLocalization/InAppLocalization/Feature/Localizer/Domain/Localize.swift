//
//  Copyright © 2018. All rights reserved.
//

public func localize(_ key: String, _ arguments: CVarArg...) -> String {
    return AppDelegate().appDependencies.localizer.localize(key, arguments)
}
