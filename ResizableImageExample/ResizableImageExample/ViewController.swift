//
//  ViewController.swift
//  ResizableImageExample
//
//  Created by JerryWang on 2017/4/28.
//  Copyright © 2017年 Jerrywang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var image = UIImage(named: "pikachu")
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageWidth = image?.size.width
        let leftCapInset = 0.3*imageWidth!
        let rightCapInset = 0.5*imageWidth!
        //x :  由左至右
        //y : 由上至下
        let insets = UIEdgeInsets(top: 0, left: leftCapInset, bottom: 0, right: rightCapInset)
        
        let imageWithInsets = image?.resizableImage(withCapInsets: insets, resizingMode: .stretch)
        
//        let imageWithInsets = image?.resizableImageWithStretchingProperties(X: 0.3, width: 0.4, Y: 0, height: 1,resizeingMode: .stretch)
        
        imageView.image = imageWithInsets
    }

}

extension UIImage {
    
    func resizableImageWithStretchingProperties(
        X X: CGFloat, width widthProportion: CGFloat,
        Y: CGFloat, height heightProportion: CGFloat, resizeingMode : UIImageResizingMode) -> UIImage {
        
        let selfWidth = self.size.width
        let selfHeight = self.size.height
        
        let leftCapInset = X*selfWidth
        let rightCapInset = (1-X-widthProportion)*selfWidth
        
        let topCapInset = Y*selfHeight
        let bottomCapInset = (1-Y-heightProportion)*selfHeight
        
        return self.resizableImage(
            withCapInsets: UIEdgeInsets(top: topCapInset, left: leftCapInset,
                         bottom: bottomCapInset, right: rightCapInset),
            resizingMode: resizeingMode)
    }
    
}
