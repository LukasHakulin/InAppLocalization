//
//  Copyright © 2018. All rights reserved.
//

public protocol AbstractClass { }

public extension AbstractClass {

    public func markMethodAsVirtual<T>(_ methodName: String = #function) -> T {
        fatalError("\(methodName) called on abstract class \(type(of: self))")
    }
}
