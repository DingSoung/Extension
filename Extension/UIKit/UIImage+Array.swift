//  Created by Songwen Ding on 2017/9/19.
//  Copyright © 2017年 DingSoung. All rights reserved.

import Foundation

#if os(iOS)
@objc
extension UIImage {

    public func verticalImage(images: [UIImage]) -> UIImage? {
        return images.verticalImage
    }
}
#endif
