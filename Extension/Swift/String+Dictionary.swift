//  Created by Songwen Ding on 2017/8/3.
//  Copyright © 2017年 DingSoung. All rights reserved.

import Foundation

extension String {
    /// JSON String -> JSON Dictionary
    public var jsonDictionary: [String: Any]? {
        guard let jsonData = self.data(using: .utf8, allowLossyConversion: false) else {
            return nil
        }
        do {
            let json = try JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers)
            return json as? [String: Any]
        } catch let error {
            debugPrint(error.localizedDescription, self.debugDescription)
            return nil
        }
    }
    /// url format -> Dictionary  ext:http://domain.com?ID=1&code=2
    public var urlDictionary: [String: Any] {
        var dict = [String: Any]()
        let params = self.components(separatedBy: "&")
        for param in params {
            let strs = (param as NSString).components(separatedBy: "=")
            if strs.count >= 2 {
                if let value = (strs[1] as NSString).removingPercentEncoding {
                    dict[strs[0]] = value
                } else {
                    debugPrint("un-resolve key:\(strs[0]) value:\(strs[1])")
                }
            } else {
                debugPrint("un-resolve strs \(strs)")
            }
        }
        return dict
    }
}
