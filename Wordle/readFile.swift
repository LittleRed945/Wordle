import SwiftUI
func readFile()->String{
    if let asset = NSDataAsset(name: "topic"), let content = String(data: asset.data, encoding: .utf8) {
        return content
    }else{
        return ""
    }
}
