import Foundation

struct Resolution {
    var x:Int
    var y:Int
}

struct CPU {
    var frequency:Int
}

class Screen {
    var resolution:Resolution
    
    init(resolution:Resolution) {
        self.resolution = resolution
    }
}

class Host {
    var ram:Int
    var disk:Int
    var cpu:CPU
    
    init(ram:Int, disk:Int, cpu:CPU) {
        self.ram = ram
        self.disk = disk
        self.cpu = cpu
    }
}

class Computer {
    var screen:Screen
    var host:Host
    var number:String
    
    init(screen:Screen, host:Host) {
        self.screen = screen
        self.host = host
        self.number = UUID().uuidString
    }
    
    func copy() -> Computer{
        return Computer(screen: self.screen, host: self.host)
    }
    
    func printInfo() {
        print("电脑编号:\(self.number)")
    }
}

let resolution = Resolution(x: 1200, y: 840)
let screen = Screen(resolution: resolution)
let cpu = CPU(frequency: 2400)
let host = Host(ram: 1024, disk: 1024 * 100, cpu: cpu)
let computer = Computer(screen: screen, host: host)
computer.printInfo()
let computer2 = computer.copy()
computer2.printInfo()
