//
//  Copyright © 2018. All rights reserved.
//

import Foundation

final class AppStorageImpl: AppStorage {

    let userDefaults = UserDefaults.standard

    func get(_ key: String) -> String? {
        return userDefaults.string(forKey: key)
    }

    func save(_ value: String, key: String) {
        userDefaults.set(value, forKey: key)
        userDefaults.synchronize()
    }

    func remove(_ key: String) {
        userDefaults.removeObject(forKey: key)
        userDefaults.synchronize()
    }
}
