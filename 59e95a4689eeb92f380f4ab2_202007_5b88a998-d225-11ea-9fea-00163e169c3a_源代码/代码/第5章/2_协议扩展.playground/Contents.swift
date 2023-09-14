import Foundation
protocol FigureProtocol {
    // 血量
    var HP:Int {get}
    // 敏捷
    var SP:Int {get}
    // 名字
    var name:String {get}
    // 力量
    var STR:Int {get}
    var death:Bool {get}
    // 进行攻击
    func attack(other:FigureProtocol)
    // 被攻击
    func Injured(count:Int)
}

extension FigureProtocol where {
    func attack(other: FigureProtocol) {
        print("\(self.name)发起攻击")
        other.Injured(count: self.STR)
    }
}

class Swordsman: FigureProtocol {

    var HP: Int = 100
    
    var SP: Int = 10
    
    var name: String = "剑客"
    
    var STR: Int = 20
    
    var death: Bool = false
    
    func Injured(count: Int) {
         self.HP -= count
         print("\(self.name)受到了\(count)点伤害")
         if self.HP <= 0 {
             self.death = true
                print("\(self.name)被击败了！游戏结束！")
         }
     }
   
}

class Gunmen: FigureProtocol {
    var HP: Int = 80
    
    var SP: Int = 15
    
    var name: String = "枪手"
    
    var STR: Int = 10
    
    var death: Bool = false
    
    func Injured(count: Int) {
         self.HP -= count
         print("\(self.name)受到了\(count)点伤害")
         if self.HP <= 0 {
             self.death = true
                print("\(self.name)被击败了！游戏结束！")
         }
     }
}

protocol SkillProtocol {
    var power:Int {get}
}

class SuperGunmen: Gunmen, SkillProtocol {
    var power: Int = 2;
    func attack(other: FigureProtocol) {
        
        if arc4random() % 2 == 0 {
            print("\(self.name)发动特殊技!")
            other.Injured(count: self.STR * self.power)
        } else {
            print("\(self.name)发起攻击")
            other.Injured(count: self.STR)
        }
        
    }
}

// 模拟游戏
let role1 = Swordsman()
let role2 = SuperGunmen()
var count = 0;
while !role1.death && !role2.death {
    count += 1;
    if count % role1.SP == 0 {
        role2.attack(other: role1)
    }
    if count % role2.SP == 0 {
        role1.attack(other: role2)
    }
}

extension Int {
    func toString() -> String {
        return "\(self)"
    }
}
let a = 10;
print(a.toString())
