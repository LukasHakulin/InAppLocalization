//
//  Copyright © 2018. All rights reserved.
//

import Foundation

public final class DeviceLanguagesGetterOperationImpl: DeviceLanguagesGetterOperation {

    override public func execute(with input: Empty) throws -> [Language] {
        return Locale.preferredLanguages.map { Language(code: $0) }
    }
}
