public struct FactorArray {
    private var storage: [Int] = []
    private var factor = 2
    private var _size = 0
    
    public var isEmpty: Bool {
        size == 0
    }

    public var size: Int {
        _size
    }
    
    public init() {}

    public func get(for index: Int) -> Int {
        storage[index]
    }
    
    public mutating func append(_ element: Int) {
        resize()
        storage[_size] = element
        _size += 1
    }
    
    public mutating func insert(_ element: Int, at index: Int) {
        if index >= size {
            append(element)
            return
        }
        resize()
        var i = size
        while i - 1 >= index && i > 0 {
            storage[i] = storage[i - 1]
            i -= 1
        }
        _size += 1
        storage[index] = element
    }
    
    private mutating func resize() {
        guard size == storage.count else {
            return
        }
        var storageNew = Array(repeating: 0, count: size * factor + 1)
        for (index, value) in storage.enumerated() {
            storageNew[index] = value
        }
        storage = storageNew
    }
}

extension FactorArray: CustomStringConvertible {
    public var description: String {
        "\(storage), size: \(size) from: \(storage.count)"
    }
}
