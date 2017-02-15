//
//  ProgressBarView.swift
//  ProgressBar
//
//  Created by LionMane Software on 2/15/17.
//  Copyright © 2017 LionMane Software. All rights reserved.
//

import UIKit

class ProgressBarView: UIView {

    private var _innerProgress: CGFloat = 0.0
    
    var progress : CGFloat{
        set (newProgress){
            if newProgress >= 1.0{
                _innerProgress = 1.0
            }else if newProgress < 0.0 {
                _innerProgress = 0.0
            }else{
                _innerProgress = newProgress
            }
            
            setNeedsDisplay()
        }
        get{
            return _innerProgress * bounds.width
        }
    }
    
    override func draw(_ rect: CGRect) {
        ProgressBarDraw.drawProgressBar(frame: bounds, progress: progress)
    }

}
