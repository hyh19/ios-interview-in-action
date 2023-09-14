import Foundation

enum ComputerLevel {
    case Low
    case Middle
    case High
}

protocol ComputerFactoryProtocol {
    func getComputer(level:ComputerLevel) -> ComputerProtocl
}

protocol ComputerProtocl {
    var screen:Screen {get}
    var host:Host {get}
    var number:String {get}
    func printInfo()
}

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

class Computer: ComputerProtocl {
    var screen:Screen
    var host:Host
    var number:String
    init(screen:Screen, host:Host) {
        self.screen = screen
        self.host = host
        self.number = UUID().uuidString
    }
    func printInfo() {
        print("电脑编号:\(self.number),内存\(self.host.ram),硬盘\(self.host.disk),CPU性能\(self.host.cpu.frequency),分辨率\(self.screen.resolution.x)*\(self.screen.resolution.y)")
    }
}


class ComputerFactory: ComputerFactoryProtocol {
    func getComputer(level: ComputerLevel) -> ComputerProtocl {
        switch level {
        case .Low:
            return Computer(screen: Screen(resolution: Resolution(x:1200, y: 840)), host: Host(ram: 1024 * 2, disk: 1024*200, cpu: CPU(frequency: 2400)))
        case .Middle:
            return Computer(screen: Screen(resolution: Resolution(x:1600, y: 1240)), host: Host(ram: 1024 * 4, disk: 1024*500, cpu: CPU(frequency: 3600)))
        case .High:
            return Computer(screen: Screen(resolution: Resolution(x:2400, y: 1640)), host: Host(ram: 1024 * 16, disk: 1024*1000, cpu: CPU(frequency: 4800)))
        }
    }
}

let computer1 = ComputerFactory().getComputer(level: .Low)
let computer2 = ComputerFactory().getComputer(level: .High)

computer1.printInfo()
computer2.printInfo()


