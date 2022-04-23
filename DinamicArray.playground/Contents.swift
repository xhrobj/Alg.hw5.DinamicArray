var singleArray = SingleArray()

example(of: "Добавим несколько элементов в массив") {
    singleArray.append(1)
    singleArray.append(2)
    singleArray.append(3)
    singleArray.append(4)
    print(singleArray)
}

example(of: "Вставка элемента в середину") {
    singleArray.insert(0, at: 2)
    print(singleArray)
}

example(of: "Вставка элемента в начало") {
    singleArray.insert(-1, at: 0)
    print(singleArray)
}

example(of: "Вставка элемента в конец") {
    singleArray.insert(42, at: 7)
    print(singleArray)
}

var vectorArray = VectorArray(vector: 3)

example(of: "Добавим несколько элементов в массив") {
    print(vectorArray)
    
    vectorArray.append(1)
    print(vectorArray)
    
    vectorArray.append(2)
    print(vectorArray)
    
    vectorArray.append(3)
    print(vectorArray)
    
    vectorArray.append(4)
    print(vectorArray)
    
    vectorArray.append(5)
    print(vectorArray)
}

example(of: "Вставка элемента в середину") {
    vectorArray.insert(0, at: 2)
    print(vectorArray)
}

example(of: "Вставка элемента в начало") {
    vectorArray.insert(-1, at: 0)
    print(vectorArray)
}

example(of: "Вставка элемента в конец") {
    vectorArray.insert(42, at: 8)
    print(vectorArray)
}

var factorArray = FactorArray()

example(of: "Добавим несколько элементов в массив") {
    print(factorArray)
    
    factorArray.append(1)
    print(factorArray)
    
    factorArray.append(2)
    print(factorArray)
    
    factorArray.append(3)
    print(factorArray)
    
    factorArray.append(4)
    print(factorArray)
    
    factorArray.append(5)
    print(factorArray)
}

example(of: "Вставка элемента в середину") {
    factorArray.insert(0, at: 2)
    print(factorArray)
}

example(of: "Вставка элемента в начало") {
    factorArray.insert(-1, at: 0)
    print(factorArray)
}

example(of: "Вставка элемента в конец") {
    factorArray.insert(42, at: 8)
    print(factorArray)
}

