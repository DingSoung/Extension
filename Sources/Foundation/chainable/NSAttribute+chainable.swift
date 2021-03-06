//
//  CGSize+Float.swift
//  Extension
//
//  Created by Songwen Ding on 2019/5/30.
//  Copyright © 2019 DingSoung. All rights reserved.
//

#if canImport(UIKit)
import UIKit

extension Dictionary where Key == NSAttributedString.Key, Value == Any {
    @discardableResult
    public func font(_ value: UIFont) -> Self {
        var dic = self; dic[.font] = value; return dic
    }
    @discardableResult
    public func paragraphStyle(_ value: NSParagraphStyle) -> Self {
        var dic = self; dic[.paragraphStyle] = value; return dic
    }
    @discardableResult
    public func foregroundColor(_ value: Color) -> Self {
        var dic = self; dic[.foregroundColor] = value; return dic
    }
    @discardableResult
    public func backgroundColor(_ value: Color) -> Self {
        var dic = self; dic[.backgroundColor] = value; return dic
    }
    @discardableResult
    public func ligature(_ value: Int) -> Self {
        var dic = self; dic[.ligature] = value; return dic
    }
    @discardableResult
    public func kern(_ value: Float) -> Self {
        var dic = self; dic[.kern] = value; return dic
    }
    @discardableResult
    public func strikethroughStyle(_ value: NSUnderlineStyle) -> Self {
        var dic = self; dic[.strikethroughStyle] = value; return dic
    }
    @discardableResult
    public func underlineStyle(_ value: NSUnderlineStyle) -> Self {
        var dic = self; dic[.underlineStyle] = value; return dic
    }
    @discardableResult
    public func strokeColor(_ value: Color) -> Self {
        var dic = self; dic[.strokeColor] = value; return dic
    }
    @discardableResult
    public func strokeWidth(_ value: CGFloat) -> Self {
        var dic = self; dic[.strokeWidth] = value; return dic
    }
    @discardableResult
    public func shadow(_ value: NSShadow) -> Self {
        var dic = self; dic[.shadow] = value; return dic
    }
    @discardableResult
    public func textEffect(_ value: String) -> Self {
        var dic = self; dic[.textEffect] = value; return dic
    }
    @discardableResult
    public func attachment(_ value: NSTextAttachment) -> Self {
        var dic = self; dic[.attachment] = value; return dic
    }
    @discardableResult
    public func link(_ value: URL) -> Self {
        var dic = self; dic[.link] = value; return dic
    }
    @discardableResult
    public func baselineOffset(_ value: CGFloat) -> Self {
        var dic = self; dic[.baselineOffset] = value; return dic
    }
    @discardableResult
    public func underlineColor(_ value: Color) -> Self {
        var dic = self; dic[.underlineColor] = value; return dic
    }
    @discardableResult
    public func strikethroughColor(_ value: Color) -> Self {
        var dic = self; dic[.strikethroughColor] = value; return dic
    }
    @discardableResult
    public func obliqueness(_ value: CGFloat) -> Self {
        var dic = self; dic[.obliqueness] = value; return dic
    }
    @discardableResult
    public func expansion(_ value: CGFloat) -> Self {
        var dic = self; dic[.expansion] = value; return dic
    }
    @discardableResult
    public func writingDirection(_ value: [CGFloat]) -> Self {
        var dic = self; dic[.writingDirection] = value; return dic
    }
    @discardableResult
    public func verticalGlyphForm(_ value: Int) -> Self {
        var dic = self; dic[.verticalGlyphForm] = value; return dic
    }
}
#endif
