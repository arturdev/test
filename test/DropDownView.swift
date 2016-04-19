//
//  DropDownView.swift
//  test
//
//  Created by artur on 4/19/16.
//  Copyright © 2016 tecso. All rights reserved.
//

import UIKit

class DropDownView: UIView {

    override func awakeFromNib() {
        self.layer.shadowOffset = CGSizeMake(1, 1);
        self.layer.shadowColor = UIColor.blackColor().CGColor;
        self.layer.shadowRadius = 2;
        self.layer.masksToBounds = false;
        self.layer.shadowOpacity = 1;
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
