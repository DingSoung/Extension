//  Created by Songwen Ding on 12/15/15.
//  Copyright © 2015 DingSoung. All rights reserved.

import Foundation
import CoreGraphics
import UIKit

extension NSString {
    
    /// count lenght of String, one Chinese, Japanese etcis 2
    public var lenghtOfZhEn: Int {
        let enc = CFStringConvertEncodingToNSStringEncoding(CFStringEncoding(CFStringEncodings.GB_18030_2000.rawValue))
        guard let da = self.data(using: enc) else {
            return 0
        }
        return da.count
    }
    
    /// height for limit width with font
    public func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSFontAttributeName: font], context: nil)
        return boundingBox.height
    }
    
    /// width for limit height with font
    public func widthWithConstrainedHeight(height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: CGFloat.greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSFontAttributeName: font], context: nil)
        return boundingBox.width
    }
}

