
enum Color : String {
    case black = "black"
    case white = "white"
    case red = "red"
    case blue = "blue"
    case green = "green"
    case gray = "gray"
    case yellow = "yellow"
    case purple = "purple"
}

class Style {
    var backgroundColor = Color.black
    var textColor = Color.white
    
    init(){}
    
    func apply() {
        print("应用皮肤:背景颜色(\(self.backgroundColor.rawValue)), 文字颜色:(\(self.textColor.rawValue))")
    }
}

class LightStyle : Style {
    var buttonColor = Color.purple
    
    override init() {
        super.init()
        self.backgroundColor = Color.white
        self.textColor = Color.black
    }
    
    override func apply() {
        print("应用皮肤:背景颜色(\(self.backgroundColor.rawValue)), 文字颜色:(\(self.textColor.rawValue)),按钮颜色:(\(self.buttonColor))")
    }
}

let lightStyle = LightStyle()
lightStyle.apply()


protocol StyleInterface {
    var backgroundColor : Color { get }
    var textColor : Color { get }
    var buttonColor : Color { get }
    func apply() -> Void
}

class BaseStyle : StyleInterface {
    var backgroundColor: Color {
        get {
            return Color.white
        }
    }
    
    var textColor: Color {
        get {
            return Color.black
        }
    }
    
    var buttonColor: Color {
        get {
            return Color.red
        }
    }
    
    init() {}
    
    func apply() {
        print("应用皮肤:背景颜色(\(self.backgroundColor.rawValue)), 文字颜色:(\(self.textColor.rawValue)),按钮颜色:(\(self.buttonColor))")
    }
    
}

class DarkStyle : StyleInterface {
    var backgroundColor: Color {
        get {
            return Color.black
        }
    }
    
    var textColor: Color {
        get {
            return Color.white
        }
    }
    
    var buttonColor: Color {
        get {
            return Color.purple
        }
    }
    
    init() {}
    
    func apply() {
        print("应用皮肤:背景颜色(\(self.backgroundColor.rawValue)), 文字颜色:(\(self.textColor.rawValue)),按钮颜色:(\(self.buttonColor))")
    }
}

let baseStyle = BaseStyle()
let newStyle = DarkStyle()
baseStyle.apply()
newStyle.apply()
