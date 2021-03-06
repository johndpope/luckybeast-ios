import UIKit

class Const: NSObject {
    private static func stringValue(forKey key: String) -> String {
        guard let plistURL = Bundle.main.url(forResource: "Keys", withExtension: "plist") else {
            fatalError("Keys.plist not found.")
        }
        
        guard let plist = NSDictionary(contentsOf: plistURL) else {
            fatalError("Cannot load Keys.plist")
        }
        
        guard let value = plist[key] as? String else {
            fatalError("\(key) is not set in Keys.plist")
        }
        
        return value
    }
    
    static var luckyBeastServerAPIEndpoint: String {
        return stringValue(forKey: "LUCKYBEAST_SERVER_API_ENDPOINT")
    }
}
