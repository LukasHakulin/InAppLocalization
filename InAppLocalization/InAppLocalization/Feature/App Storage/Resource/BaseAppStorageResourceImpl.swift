//
//  Copyright © 2018. All rights reserved.
//

open class BaseAppStorageResourceImpl<Key: AppStorageKey> {

    fileprivate let appStorage: AppStorage

    init(appStorage: AppStorage) {
        self.appStorage = appStorage
    }

    open func save(_ model: String) throws {
        appStorage.save(model, key: Key.value)
    }

    open func load() throws -> String? {
        return appStorage.get(Key.value)
    }

    open func deleteAll() throws {
        appStorage.remove(Key.value)
    }
}
