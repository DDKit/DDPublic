//
//  UIColoe_Hex.swift
//  Alamofire
//
//  Created by DCH on 2019/6/14.
//

import Foundation


extension UIColor {
    /**
     创建图片使用  rgb 值，
     ## 用法:
     ```
     let color = UIColor(red: 255, green: 255, blue: 255, a: 0.5)
     ```
     */
    public convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: alpha
        )
    }
    
    
    /**
     创建图片使用 rgba 值，
     ## 用法:
     ```
     let color = UIColor(rgb: 0xFFFFFF, a: 0.5)
     ```
     */
    public convenience init(rgb: Int, alpha: CGFloat = 1.0) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF,
            alpha: alpha
        )
    }
    
}
