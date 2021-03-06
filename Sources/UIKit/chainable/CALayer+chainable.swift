//
//  CGSize+Float.swift
//  Extension
//
//  Created by Songwen Ding on 2019/5/30.
//  Copyright © 2019 DingSoung. All rights reserved.
//

#if canImport(QuartzCore)
import QuartzCore
import Foundation

extension CALayer {
    @discardableResult
    open func bounds(_ value: CGRect) -> Self {
        bounds = value
        return self
    }
    @discardableResult
    open func position(_ value: CGPoint) -> Self {
        position = value
        return self
    }
    @discardableResult
    open func zPosition(_ value: CGFloat) -> Self {
        zPosition = value
        return self
    }
    @discardableResult
    open func anchorPoint(_ value: CGPoint) -> Self {
        anchorPoint = value
        return self
    }
    @discardableResult
    open func anchorPointZ(_ value: CGFloat) -> Self {
        anchorPointZ = value
        return self
    }
    @discardableResult
    open func transform(_ value: CATransform3D) -> Self {
        transform = value
        return self
    }
    @discardableResult
    open func frame(_ value: CGRect) -> Self {
        frame = value
        return self
    }
    @discardableResult
    open func isHidden(_ value: Bool) -> Self {
        isHidden = value
        return self
    }
    @discardableResult
    open func isDoubleSided(_ value: Bool) -> Self {
        isDoubleSided = value
        return self
    }
    @discardableResult
    open func isGeometryFlipped(_ value: Bool) -> Self {
        isGeometryFlipped = value
        return self
    }
    @discardableResult
    open func sublayers(_ value: [CALayer]?) -> Self {
        sublayers = value
        return self
    }
    @discardableResult
    open func mask(_ value: CALayer?) -> Self {
        mask = value
        return self
    }
    @discardableResult
    open func masksToBounds(_ value: Bool) -> Self {
        masksToBounds = value
        return self
    }
    @discardableResult
    open func contents(_ value: Any?) -> Self {
        contents = value
        return self
    }
    @discardableResult
    open func contents(_ value: CGRect) -> Self {
        contents = value
        return self
    }
    @discardableResult
    open func contentsGravity(_ value: CALayerContentsGravity) -> Self {
        contentsGravity = value
        return self
    }
    @discardableResult
    open func contentsScale(_ value: CGFloat) -> Self {
        contentsScale = value
        return self
    }
    @discardableResult
    open func contentsCenter(_ value: CGRect) -> Self {
        contentsCenter = value
        return self
    }
    @available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @discardableResult
    open func contentsFormat(_ value: CALayerContentsFormat) -> Self {
        contentsFormat = value
        return self
    }
    @discardableResult
    open func minificationFilter(_ value: CALayerContentsFilter) -> Self {
        minificationFilter = value
        return self
    }
    @discardableResult
    open func magnificationFilter(_ value: CALayerContentsFilter) -> Self {
        magnificationFilter = value
        return self
    }
    @discardableResult
    open func minificationFilterBias(_ value: Float) -> Self {
        minificationFilterBias = value
        return self
    }
    @discardableResult
    open func isOpaque(_ value: Bool) -> Self {
        isOpaque = value
        return self
    }
    @discardableResult
    open func needsDisplayOnBoundsChange(_ value: Bool) -> Self {
        needsDisplayOnBoundsChange = value
        return self
    }
    @discardableResult
    open func drawsAsynchronously(_ value: Bool) -> Self {
        drawsAsynchronously = value
        return self
    }
    @discardableResult
    open func edgeAntialiasingMask(_ value: CAEdgeAntialiasingMask) -> Self {
        edgeAntialiasingMask = value
        return self
    }
    @discardableResult
    open func allowsEdgeAntialiasing(_ value: Bool) -> Self {
        allowsEdgeAntialiasing = value
        return self
    }
    @discardableResult
    open func backgroundColor(_ value: CGColor?) -> Self {
        backgroundColor = value
        return self
    }
    @discardableResult
    open func cornerRadius(_ value: CGFloat) -> Self {
        cornerRadius = value
        return self
    }
    @available(iOS 11.0, macOS 10.13, tvOS 11.0, *)
    @discardableResult
    open func maskedCorners(_ value: CACornerMask) -> Self {
        maskedCorners = value
        return self
    }
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, *)
    @discardableResult
    open func cornerCurve(_ value: CALayerCornerCurve) -> Self {
        cornerCurve = value
        return self
    }
    @discardableResult
    open func borderWidth(_ value: CGFloat) -> Self {
        borderWidth = value
        return self
    }
    @discardableResult
    open func borderColor(_ value: CGColor?) -> Self {
        borderColor = value
        return self
    }
    @discardableResult
    open func opacity(_ value: Float) -> Self {
        opacity = value
        return self
    }
    @discardableResult
    open func compositingFilter(_ value: Any?) -> Self {
        compositingFilter = value
        return self
    }
    @discardableResult
    open func filters(_ value: [Any]?) -> Self {
        filters = value
        return self
    }
    @discardableResult
    open func backgroundFilters(_ value: [Any]?) -> Self {
        backgroundFilters = value
        return self
    }
    @discardableResult
    open func shouldRasterize(_ value: Bool) -> Self {
        shouldRasterize = value
        return self
    }
    @discardableResult
    open func rasterizationScale(_ value: CGFloat) -> Self {
        rasterizationScale = value
        return self
    }
    @discardableResult
    open func shadowColor(_ value: CGColor?) -> Self {
        shadowColor = value
        return self
    }
    @discardableResult
    open func shadowOpacity(_ value: Float) -> Self {
        shadowOpacity = value
        return self
    }
    @discardableResult
    open func shadowOffset(_ value: CGSize) -> Self {
        shadowOffset = value
        return self
    }
    @discardableResult
    open func shadowRadius(_ value: CGFloat) -> Self {
        shadowRadius = value
        return self
    }
    @discardableResult
    open func shadowPath(_ value: CGPath?) -> Self {
        shadowPath = value
        return self
    }
    @discardableResult
    open func actions(_ value: [String : CAAction]?) -> Self {
        actions = value
        return self
    }
    @discardableResult
    open func name(_ value: String?) -> Self {
        name = value
        return self
    }
    @discardableResult
    open func style(_ value: [AnyHashable : Any]?) -> Self {
        style = value
        return self
    }
}

#endif
