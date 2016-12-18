//
//  BaseImageButton.swift
//  Pods
//
//  Created by NoorulAinAli on 09/12/2016.
//
//

import UIKit
import ImageCenterButton

class BaseImageButton: ImageCenterButton {
    
    override init(frame:CGRect) {
        super.init(frame:frame)
        self.customize()
    }
    
    override func awakeFromNib() {
        self.customize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.customize()
    }
    
    private func customize(){
        self.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        self.backgroundHighlightedColor = UIColor.clearColor()
        self.backgroundNormalColor = UIColor.clearColor()
        setStyle(UIColor.whiteColor(), size: 14.0)
    }

    internal func setStyle(textColor : UIColor, size fontSize: CGFloat){
        self.setTitleColor(textColor, forState: UIControlState.Normal)
        self.titleLabel?.font = UIFont(name: ProximateSDKSettings.getViewOptions().fontRegular, size: fontSize)
    }
    
}
