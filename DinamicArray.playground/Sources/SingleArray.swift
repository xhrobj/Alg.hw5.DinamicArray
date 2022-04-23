public struct SingleArray {
    private var storage: [Int] = []
    
    public var isEmpty: Bool {
        storage.isEmpty
    }

    public var size: Int {
        storage.count
    }
    
    public init() {}

    public func get(for index: Int) -> Int {
        storage[index]
    }
    
    public mutating func append(_ element: Int) {
        resize()
        storage[size - 1] = element
        
    }
    
    public mutating func insert(_ element: Int, at index: Int) {
        if index >= size {
            append(element)
            return
        }
        resize()
        var i = size - 1
        while i - 1 >= index && i > 0 {
            storage[i] = storage[i - 1]
            i -= 1
        }
        storage[index] = element
    }
    
    private mutating func resize() {
        var storageNew = Array(repeating: 0, count: size + 1)
        for (index, value) in storage.enumerated() {
            storageNew[index] = value
        }
        storage = storageNew
    }
}

extension SingleArray: CustomStringConvertible {
    public var description: String {
        "\(storage), size: \(size)"
    }
}
