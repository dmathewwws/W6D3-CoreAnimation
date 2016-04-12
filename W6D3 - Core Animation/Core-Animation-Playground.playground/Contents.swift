//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 375.0))
containerView.backgroundColor = UIColor.whiteColor()    

XCPlaygroundPage.currentPage.liveView = containerView

let greenView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
greenView.backgroundColor = UIColor.greenColor()
greenView.center = containerView.center
greenView.layer.cornerRadius = greenView.frame.width/2
containerView.addSubview(greenView)


//Basic Animation. Make a red cicle change from a circle to a square.

//let greenView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
//greenView.backgroundColor = UIColor.greenColor()
//greenView.center = containerView.center
//containerView.addSubview(greenView)
//
//let cornerRadiusAnimation = CABasicAnimation(keyPath: "cornerRadius")
//cornerRadiusAnimation.duration = 1
//cornerRadiusAnimation.fromValue = 0
//cornerRadiusAnimation.toValue = greenView.frame.width/2
//
//greenView.layer.addAnimation(cornerRadiusAnimation, forKey: "sqaure to circle")
//greenView.layer.cornerRadius = greenView.frame.width/2



//Keyframe Animation. Moving along path


//let greenView = UIView(frame: CGRect(x: 16, y: 239, width: 50, height: 50))
//greenView.backgroundColor = UIColor.greenColor()
////greenView.center = containerView.center
//containerView.addSubview(greenView)
//
//
//let path = UIBezierPath()
//path.moveToPoint(CGPoint(x: 16,y: 239))
//path.addCurveToPoint(CGPoint(x: 301, y: 239), controlPoint1: CGPoint(x: 136, y: 373), controlPoint2: CGPoint(x: 178, y: 110))
//
//
//let pathAnimation = CAKeyframeAnimation(keyPath: "position")
//pathAnimation.path = path.CGPath
//pathAnimation.duration = 2
//pathAnimation.repeatCount = Float.infinity
//
//greenView.layer.addAnimation(pathAnimation, forKey: "move around in square")

//Basic Animation. Make a red cicle change from a circle to a square.


//let circle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
//circle.center = containerView.center
//circle.layer.cornerRadius = 25
//circle.backgroundColor = UIColor.redColor()
//containerView.addSubview(circle)
//
//let cornerRadiusAnimation = CABasicAnimation(keyPath: "cornerRadius")
//cornerRadiusAnimation.fromValue = 25
//cornerRadiusAnimation.toValue = 0
//cornerRadiusAnimation.duration = 2
//
//circle.layer.addAnimation(cornerRadiusAnimation, forKey: "move in box")
//
//circle.layer.cornerRadius = 0


//Keyframe Animation. Moving along path

//let circle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
//circle.center = containerView.center
//circle.layer.cornerRadius = 25
//circle.backgroundColor = UIColor.redColor()
//containerView.addSubview(circle)
//
//let path = UIBezierPath()
//path.moveToPoint(containerView.center)
//path.addLineToPoint(CGPoint(x: 0, y: containerView.center.y))
//path.addLineToPoint(CGPoint(x: 0, y: 0))
//path.addLineToPoint(CGPoint(x: containerView.center.x, y: 0))
//path.closePath()
//
//let animation = CAKeyframeAnimation(keyPath: "position")
//animation.path = path.CGPath
//animation.duration = 2
//
//circle.layer.addAnimation(animation, forKey: "move along path")



//Keyframe Animation. Moving along a funkier path

//let circle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
//circle.center = containerView.center
//circle.layer.cornerRadius = 25
//circle.backgroundColor = UIColor.redColor()
//containerView.addSubview(circle)
//
//let path = UIBezierPath()
//path.moveToPoint(CGPoint(x: 16,y: 239))
//path.addCurveToPoint(CGPoint(x: 301, y: 239), controlPoint1: CGPoint(x: 136, y: 373), controlPoint2: CGPoint(x: 178, y: 110))
//
//let animation = CAKeyframeAnimation(keyPath: "position")
//animation.path = path.CGPath
//animation.duration = 2
//animation.rotationMode = kCAAnimationRotateAuto
//animation.repeatCount = Float.infinity
//
//
//circle.layer.addAnimation(animation, forKey: "move along path")



// Group Animation

//let circle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
//circle.center = containerView.center
//circle.layer.cornerRadius = 25.0
//circle.backgroundColor = UIColor.redColor()
//containerView.addSubview(circle);
//
//circle.layer.zPosition = 1
//
//let circle2 = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
//circle2.center = containerView.center
//circle2.layer.cornerRadius = 25.0
//circle2.backgroundColor = UIColor.greenColor()
//containerView.addSubview(circle2);
//
//circle2.layer.zPosition = -1
//
//let cornerRadius = CABasicAnimation()
//cornerRadius.keyPath = "transform.scale"
//cornerRadius.fromValue = 1
//cornerRadius.toValue = 5
//cornerRadius.duration = 2
//
//let path = UIBezierPath()
//path.moveToPoint(containerView.center)
//path.addLineToPoint(CGPoint(x: containerView.center.x, y: 0))
//path.closePath()
//
//let position = CAKeyframeAnimation()
//position.keyPath = "position"
//position.path = path.CGPath
//position.duration = 2;
//
//let group = CAAnimationGroup()
//group.animations = [position, cornerRadius]
//group.duration = 2
//group.beginTime = 0
//
//circle2.layer.addAnimation(group, forKey: "moveCircle2")
//
//circle2.layer.zPosition = 1


