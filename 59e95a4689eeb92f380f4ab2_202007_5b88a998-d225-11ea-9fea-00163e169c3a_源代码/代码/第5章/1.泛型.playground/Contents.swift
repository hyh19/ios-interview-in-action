protocol SumProtocol {
    func add(obj:Self, next:Self) -> Self
}

protocol Container {
    associatedtype T
    var list:Array<T>{ get }
    func push(obj:T)
    func pop()->T?
}

class Group<E>:Container {
    typealias T = E
    
    var list = Array<E>()
    
    func push(obj: E) {
        list.append(obj)
    }
    
    func pop() -> E? {
        return list.popLast()
    }
    
}

struct MyObject: SumProtocol {
    var count:Int
    
    func add(obj: MyObject, next: MyObject) -> MyObject {
        return MyObject(count: obj.count + next.count)
    }
}

func sum<G:Container>(group:G, initial:G.T) -> G.T where G.T:SumProtocol {
    return group.list.reduce(initial) { (res, next) -> G.T in
        return res.add(obj: res, next: next)
    }
}
var group = Group<MyObject>()
group.push(obj: MyObject(count: 3))
group.push(obj: MyObject(count: 4))
print((sum(group: group, initial: MyObject(count: 0)) as MyObject).count) // 7

