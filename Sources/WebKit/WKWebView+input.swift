//  Created by Songwen Ding on 2018/11/13.
//  Copyright © 2018年 DingSoung. All rights reserved.

#if canImport(WebKit) && os(iOS)
import WebKit

// MARK: WKWebView.Input Holder
extension WKWebView {
    @objc(WKWebViewInput) @objcMembers public class Input: NSObject {
        private weak var target: WKWebView?

        private override init() {
            super.init()
        }

        fileprivate init(target: WKWebView) {
            self.target = target
            super.init()
            guard let contentView = target.contentView,
                let nickClass = target.contentViewNickClass(uid: target.hashValue.description) else {
                    assertionFailure()
                    return
            }
            // replace or update class
            let selectors = [#selector(getter: WKWebView.inputView),
                             #selector(getter: WKWebView.inputAccessoryView)]
            for selector in selectors {
                guard let method = class_getInstanceMethod(WKWebView.self, selector) else {
                    assertionFailure(); continue
                }
                if class_addMethod(nickClass.self,
                                   selector,
                                   method_getImplementation(method),
                                   method_getTypeEncoding(method)) {
                } else {
                    class_replaceMethod(nickClass.self,
                                        selector,
                                        method_getImplementation(method),
                                        method_getTypeEncoding(method))
                }
            }
            object_setClass(contentView, nickClass)
        }

        deinit {
            // no need to restore
        }
    }
}

// MARK: dynamic set views
extension WKWebView.Input {
    fileprivate static var viewKey: UInt8 = 0
    fileprivate static var accessoryViewKey: UInt8 = 1
    /// input view
    public var view: View? {
        set {
            if let webView = target {
                objc_setAssociatedObject(webView,
                                         &WKWebView.Input.viewKey,
                                         newValue,
                                         .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
                webView.reloadInputViews()
            }
            target?.contentView?.reloadInputViews()
        }
        get {
            guard let webView = target else { return nil }
            return objc_getAssociatedObject(webView, &WKWebView.Input.viewKey) as? View
        }
    }
    /// input accessory view
    public var accessoryView: View? {
        set {
            if let webView = target {
                objc_setAssociatedObject(webView,
                                         &WKWebView.Input.accessoryViewKey,
                                         newValue,
                                         .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
                webView.reloadInputViews()
            }
            target?.contentView?.reloadInputViews()
        }
        get {
            guard let webView = target else { return nil }
            return objc_getAssociatedObject(webView, &WKWebView.Input.accessoryViewKey) as? View
        }
    }
}

// MARK: - WebView override to return custom view
extension WKWebView {
    public final override var inputView: View? {
        return objc_getAssociatedObject(self, &Input.viewKey) as? View ?? super.inputView
    }
    public final override var inputAccessoryView: View? {
        return objc_getAssociatedObject(self, &Input.accessoryViewKey) as? View ?? super.inputAccessoryView
    }
}

// MARK: add property for WKWebView
extension WKWebView {
    private static let association = Association<Input>()
    /// customize input and accessory view
    @objc public var input: Input {
        set { WKWebView.association[self] = newValue }
        get {
            if let obj = WKWebView.association[self] {
                return obj
            } else {
                let obj = Input(target: self)
                WKWebView.association[self] = obj
                return obj
            }
        }
    }
}
#endif
