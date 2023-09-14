enum Drink {
    case Cola
    case Juice
}

enum Staple {
    case Hamburger
    case ChickenRoll
}

enum Dessert {
    case EggTart
    case IceCreanm
}

class FoodPackage {
    var drink:Drink?
    var staple:Staple?
    var dessert:Dessert?
}

class BuilderA {
    var foodPackage:FoodPackage
    
    init(foodPackage:FoodPackage) {
        self.foodPackage = foodPackage
    }
    
    func addDrink() {
        self.foodPackage.drink = .Cola
    }
    
    func addStaple() {
        self.foodPackage.staple = .Hamburger
    }
    
    func addDessert() {
        self.foodPackage.dessert = .EggTart
    }
    
    func startBuild() -> FoodPackage {
        self.addDrink()
        self.addStaple()
        self.addDessert()
        return self.foodPackage
    }
}

class BuilderB {
    var foodPackage:FoodPackage
    
    init(foodPackage:FoodPackage) {
        self.foodPackage = foodPackage
    }
    
    func addDrink() {
        self.foodPackage.drink = .Juice
    }
    
    func addStaple() {
        self.foodPackage.staple = .ChickenRoll
    }
    
    func addDessert() {
        self.foodPackage.dessert = .IceCreanm
    }
    
    func startBuild() -> FoodPackage {
        self.addDrink()
        self.addStaple()
        self.addDessert()
        return self.foodPackage
    }
}

enum PackageType {
    case A
    case B
}

func FoodPackageFactory(type:PackageType) -> FoodPackage {
    switch type {
    case .A:
        return BuilderA(foodPackage: FoodPackage()).startBuild()
    case .B:
        return BuilderB(foodPackage: FoodPackage()).startBuild()
    }
}

let food1 = FoodPackageFactory(type: .A)
let food2 = FoodPackageFactory(type: .B)



