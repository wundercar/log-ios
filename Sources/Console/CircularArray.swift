import Foundation

public struct CircularArray<T> {
    // MARK: Properties
    
    public var items: [T] = []
    private let maxEntries: Int
    
    // MARK: Life Cycle
    
    public init(maxEntries: Int) {
        self.maxEntries = maxEntries
        self.items = []
    }
}

public extension CircularArray {
    // MARK: Operations
    
    mutating func append(_ element: T) {
        if self.items.count >= self.maxEntries {
            self.items = [T](self.items.dropFirst())
        }
        self.items.append(element)
    }
}
