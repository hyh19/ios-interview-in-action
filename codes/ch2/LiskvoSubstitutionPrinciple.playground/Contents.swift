class Animal {
    var name:String
    
    init(name:String) {
        self.name = name
    }
}

class Bird : Animal {
    
    func fly() {
        print("\(self.name)开始飞行")
    }
}

let bird = Bird(name: "鸟")
bird.fly()

class Ostrich : Animal {
    func run() {
         print("\(self.name)极速奔跑")
    }
}

let ostrich = Ostrich(name: "鸵鸟")
ostrich.run()
