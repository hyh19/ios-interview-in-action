protocol GoodsProtocol {
    var name:String {get}
    func printInfo()
}

protocol FactoryProtocl {
    func getComputer() -> GoodsProtocol
    func getTV() -> GoodsProtocol
}

class Computer: GoodsProtocol {
    var name: String {
        get {
            return "计算机"
        }
    }
    
    func printInfo() {
        print("我是一台\(self.name),工作游戏全能手")
    }
}

class TV: GoodsProtocol {
    var name: String {
        get {
            return "电视机"
        }
    }
    
    func printInfo() {
        print("我是一台\(self.name),海量频道任你选")
    }
}

class ComputerFactory {
    func produce() -> Computer {
        return Computer()
    }
}

class TVFactory {
    func produce() -> TV {
        return TV()
    }
}

class Factory:FactoryProtocl {
    func getComputer() -> GoodsProtocol {
        return ComputerFactory().produce()
    }
    
    func getTV() -> GoodsProtocol {
        return TVFactory().produce()
    }
}

let good1 = Factory().getComputer()
let good2 = Factory().getTV()
good1.printInfo()
good2.printInfo()

