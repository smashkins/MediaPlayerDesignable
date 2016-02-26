//: Playground - noun: a place where people can play

import UIKit
import XCPlayground


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mp = MediaPlayerView(frame: CGRectMake(0,0, 200, 200))
        self.view.addSubview(mp)
        
        
        let lay1 = CALayer()
        lay1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1).CGColor
        lay1.frame = CGRectMake(113, 111, 132, 194)
        //lay1.masksToBounds = true
        self.view.layer.addSublayer(lay1)
        lay1.zPosition = 3
        
        
        let lay2 = CALayer()
        lay2.backgroundColor = UIColor(red: 1, green: 0.9, blue: 1, alpha: 1).CGColor
        lay2.frame = CGRectMake(213, 211, 132, 194)
        //lay1.masksToBounds = true
        self.view.layer.addSublayer(lay2)
        lay1.zPosition = 2
        
        let iv = UIImageView(image: UIImage(named: "smile"))
        self.view.addSubview(iv)
        iv.frame.origin = CGPointMake(100, 180)
        //iv.layer.zPosition = 3
        
        
        }
    
    
    
}

import UIKit

class MediaPlayerView: UIView {
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        let circleLayer = CAShapeLayer()
        let circle = UIBezierPath(ovalInRect: CGRectMake(0,0,200,200))
        //UIColor.blueColor().setFill()
        //circle.fill()
        circleLayer.path = circle.CGPath
        circleLayer.fillColor = UIColor.blueColor().CGColor
        layer.addSublayer(circleLayer)
        
        let bannerLayer = CAShapeLayer()
        let banner = UIBezierPath(rect: CGRectMake(0, 0, 300, 50))
        //UIColor.redColor().setFill()
        //banner.fill()
        bannerLayer.path = banner.CGPath
        bannerLayer.fillColor = UIColor.redColor().CGColor
        layer.addSublayer(bannerLayer)
        
        circleLayer.zPosition = 2
        bannerLayer.zPosition = 1
        
    }
    
    
}

XCPlaygroundPage.currentPage.liveView = ViewController()
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true
