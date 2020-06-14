//
//  CanvasView.swift
//  AnotherTry
//
//  Created by Irina Cercel on 13/06/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit
import Foundation

class CanvasView: UIView {

    var halfFrameWidth: CGFloat = 0
    var fullFrameWidth: CGFloat = 0
    var needleBottomWidth: CGFloat = 10.0
    var needleLength: CGFloat = 0
    var centerView: CGPoint?
    var changeDegree = 90
    
//     Only override draw() if you perform custom drawing.
//     An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
//         Drawing code
        halfFrameWidth = self.bounds.width/2
        fullFrameWidth = self.bounds.width
        needleLength = halfFrameWidth * 0.5
        
        centerView = CGPoint(x: halfFrameWidth, y: halfFrameWidth)
        
        createNeedles()
        createCompassMarks()
    }
    
    func createNeedles() {
        let upperNeedle = UIBezierPath()
        upperNeedle.move(to: CGPoint(x: halfFrameWidth - needleBottomWidth, y: halfFrameWidth))
        upperNeedle.addLine(to: CGPoint(x: halfFrameWidth, y: needleLength))
        upperNeedle.addLine(to: CGPoint(x: halfFrameWidth + needleBottomWidth, y: halfFrameWidth))
        upperNeedle.close()
        UIColor.red.setFill()
        upperNeedle.fill()
        
        let bottomNeedle = UIBezierPath()
        bottomNeedle.move(to: CGPoint(x: halfFrameWidth - needleBottomWidth, y: halfFrameWidth))
        bottomNeedle.addLine(to: CGPoint(x: halfFrameWidth, y: fullFrameWidth - needleLength))
        bottomNeedle.addLine(to: CGPoint(x: halfFrameWidth + needleBottomWidth, y: halfFrameWidth))
        bottomNeedle.close()
        UIColor.blue.setFill()
        bottomNeedle.fill()
        
        let centerPin = UIBezierPath(arcCenter: centerView!, radius: 5.0, startAngle: 0, endAngle: 2 * .pi, clockwise: true)
        UIColor.darkGray.setFill()
        centerPin.fill()
        
        let innerRing = UIBezierPath(arcCenter: centerView!, radius: halfFrameWidth * 0.9, startAngle: 0, endAngle: 2 * .pi, clockwise: true)
        UIColor.white.setStroke()
        innerRing.lineWidth = 2
        innerRing.stroke()
        
        let outterRing = UIBezierPath(arcCenter: centerView!, radius: halfFrameWidth * 0.98, startAngle: 0, endAngle: 2 * .pi, clockwise: true)
        UIColor.white.setStroke()
        outterRing.lineWidth = 1
        outterRing.stroke()
    }
    
    func archLocationPoint(degree: CGFloat, distance: CGFloat) -> CGPoint {
        let radian: CGFloat = degree * .pi / 180
        let arcPath = UIBezierPath(arcCenter: centerView!, radius: halfFrameWidth * distance, startAngle: 0, endAngle: radian, clockwise: true)
        return arcPath.currentPoint
    }
    
    func createCompassMarks() {
        for degree in stride(from: 0, to: 360, by: 2) {
            let outerArcPoint = archLocationPoint(degree: CGFloat(degree), distance: 0.9)
            
            var innerArcDistance: CGFloat = 0.85
            
            if degree % 10 == 0 {
                innerArcDistance = 0.8
                
                changeDegree = changeDegree % 360
                addDegrees(degree: changeDegree, location: archLocationPoint(degree: CGFloat(degree), distance: 0.95))
                changeDegree = changeDegree + 10
            }
            
            let innerArcPoint = archLocationPoint(degree: CGFloat(degree), distance: innerArcDistance)
            
            let markLine = UIBezierPath()
            markLine.move(to: outerArcPoint)
            markLine.addLine(to: innerArcPoint)
            markLine.close()
            UIColor.white.setStroke()
            markLine.lineWidth = 1
            markLine.stroke()
        }
        
        var degree = 0
        for direction in ["E", "SE", "S", "SW", "W", "NW", "N", "NE"] {
            addDirection(direction: direction, degree: degree, location: archLocationPoint(degree: CGFloat(degree), distance: 0.75))
            degree += 45
        }
    }
    
    func addDegrees(degree: Int, location: CGPoint) {
        let textLyer = CATextLayer()
        textLyer.frame = CGRect(x: location.x - 10, y: location.y - 5, width: 20, height: 10)
        textLyer.foregroundColor = UIColor.white.cgColor
        textLyer.fontSize = 10
        textLyer.string = String(degree)
        textLyer.alignmentMode = CATextLayerAlignmentMode.center
        textLyer.contentsScale = UIScreen.main.scale
        layer.addSublayer(textLyer)
        textLyer.transform = CATransform3DMakeRotation(CGFloat(degree) * .pi / 180, 0, 0, 1)
    }
    
    func addDirection(direction: String, degree: Int, location: CGPoint) {
        let textLyer = CATextLayer()
        textLyer.frame = CGRect(x: location.x - 15, y: location.y - 10, width: 30, height: 20)
        textLyer.foregroundColor = UIColor.white.cgColor
        textLyer.fontSize = 18
        textLyer.string = String(direction)
        textLyer.alignmentMode = CATextLayerAlignmentMode.center
        textLyer.contentsScale = UIScreen.main.scale
        layer.addSublayer(textLyer)
        textLyer.transform = CATransform3DMakeRotation(CGFloat(degree + 90) * .pi / 180, 0, 0, 1)
    }

}
