class DataLoader {
    var bannerData:String?
    var listData:String?
    
    func loadBannerData() {
        self.bannerData = "横竖数据加载完成"
    }
    
    func loadListData() {
        self.listData = "列表数据加载完成"
    }
    
    func getData() -> String {
        self.loadBannerData()
        self.loadListData()
        return "\(self.bannerData!),\(self.listData!)"
    }
}

class UserInterface {
    func show() {
        print("展现界面：\(DataLoader().getData())")
    }
}

let ui = UserInterface()
ui.show()
