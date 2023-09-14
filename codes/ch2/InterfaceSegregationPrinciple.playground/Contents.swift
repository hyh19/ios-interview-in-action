protocol DataLoaderProtocol {
    var bannerData:String { get }
    var listData:String { get }
}

protocol UserInterfaceProtocol {
    func show()
}

class DataLoader : DataLoaderProtocol {
    var bannerData:String {
        get {
            return "横竖数据加载完成"
        }
    }
    var listData:String {
        get {
            return "列表数据加载完成"
        }
    }
}

class UserInterface : UserInterfaceProtocol {
    func show() {
        let dataLoader = DataLoader()
        print("展现界面：\(dataLoader.bannerData),\(dataLoader.listData)")
    }
}
let ui = UserInterface()
ui.show()
