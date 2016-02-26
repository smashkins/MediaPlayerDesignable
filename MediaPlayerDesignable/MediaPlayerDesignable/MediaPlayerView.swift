//
//  MediaPlayerView.swift
//  MediaPlayerDesignable
//
//  Created by Vincenzo Stira on 26/02/16.
//  Copyright © 2016 Vincenzo Stira. All rights reserved.
//

import UIKit

class MediaPlayerView: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        // Drawing code
        let circleLayer = CAShapeLayer()
        let circle = UIBezierPath(ovalInRect: CGRectMake(15,30,150,150))
        //UIColor.blueColor().setFill()
        //circle.fill()
        circleLayer.path = circle.CGPath
        circleLayer.fillColor = UIColor(patternImage: UIImage(named: "cattedrale")!).CGColor
        layer.addSublayer(circleLayer)
        
        let bannerLayer = CAShapeLayer()
        let banner = UIBezierPath(rect: CGRectMake(circle.bounds.width/2, circle.bounds.height/2, self.bounds.width, 50))
        //UIColor.redColor().setFill()
        //banner.fill()
        bannerLayer.path = banner.CGPath
        bannerLayer.fillColor = UIColor(red: 0.980, green: 0.878, blue: 0.588, alpha: 1.00).CGColor
        layer.addSublayer(bannerLayer)
        
        circleLayer.zPosition = 2
        bannerLayer.zPosition = 1
    }
    

}
