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
        let p = UIBezierPath(ovalInRect: CGRectMake(0,0,100,100))
        UIColor.blueColor().setFill()
        p.fill()
    }
    

}
