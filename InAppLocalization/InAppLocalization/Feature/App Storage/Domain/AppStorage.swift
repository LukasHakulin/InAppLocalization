//
//  Copyright © 2018. All rights reserved.
//

protocol AppStorage {
    func get(_ key: String) -> String?
    func save(_ value: String, key: String)
    func remove(_ key: String)
}
