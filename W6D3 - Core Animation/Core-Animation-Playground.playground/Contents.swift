//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 375.0))
containerView.backgroundColor = UIColor.whiteColor()    

XCPlaygroundPage.currentPage.liveView = containerView

let circle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
circle.center = containerView.center
circle.layer.cornerRadius = 25.0
circle.backgroundColor = UIColor.redColor()
containerView.addSubview(circle);

circle.layer.zPosition = 1

let circle2 = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
circle2.center = containerView.center
circle2.layer.cornerRadius = 25.0
circle2.backgroundColor = UIColor.greenColor()
containerView.addSubview(circle2);

circle2.layer.zPosition = -1

let cornerRadius = CABasicAnimation()
cornerRadius.keyPath = "cornerRadius"
cornerRadius.fromValue = 25
cornerRadius.toValue = 0
cornerRadius.fillMode = kCAFillModeForwards
cornerRadius.duration = 1.5

let path = UIBezierPath()
path.moveToPoint(containerView.center)
path.addLineToPoint(CGPoint(x: containerView.center.x, y: 0))
path.closePath()

let position = CAKeyframeAnimation()
position.keyPath = "position"
position.path = path.CGPath
position.duration = 1.5;

let group = CAAnimationGroup()
group.animations = [position, cornerRadius]
group.duration = 1.5
group.beginTime = 0

circle2.layer.addAnimation(group, forKey: "moveCircle2")
//
circle2.layer.zPosition = 1
circle2.layer.cornerRadius = 0

//
//
////let zPosition = CABasicAnimation()
////zPosition.keyPath = "zPosition"
////zPosition.fromValue = -1.0
////zPosition.toValue = 1.0
////zPosition.duration = 1.5
//
//
////circle.layer.zPosition = -1
//
////let rectangle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
////rectangle.center = containerView.center
////rectangle.layer.cornerRadius = 5.0
////
////rectangle.backgroundColor = UIColor.whiteColor()
////
////containerView.addSubview(rectangle)
////
////UIView.animateWithDuration(2.0, animations: { () -> Void in
////    
////    let endingColor = UIColor(red: (255.0/255.0), green: (61.0/255.0), blue: (24.0/255.0), alpha: 1.0)
////    circle.backgroundColor = endingColor
////    
////    let scaleTransform = CGAffineTransformMakeScale(5.0, 5.0)
////    
////    circle.transform = scaleTransform
////    
////    let rotationTransform = CGAffineTransformMakeRotation(3.14)
////    
////    rectangle.transform = rotationTransform
////
////})
