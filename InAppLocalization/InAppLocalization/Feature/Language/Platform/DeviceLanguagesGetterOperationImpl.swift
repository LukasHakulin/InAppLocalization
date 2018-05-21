//
//  Copyright © 2018. All rights reserved.
//

import Foundation

final class DeviceLanguagesGetterOperationImpl: DeviceLanguagesGetterOperation {

    override func execute(with input: Empty) throws -> [Language] {
        return Locale.preferredLanguages.map { Language(code: $0) }
    }
}
