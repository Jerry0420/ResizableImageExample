//
//  ContentsCenterViewController.swift
//  ResizableImageExample
//
//  Created by JerryWang on 2017/4/28.
//  Copyright © 2017年 Jerrywang. All rights reserved.
//

import UIKit

class ContentsCenterViewController: UIViewController {

    var image = UIImage(named: "pikachu")
    
    @IBOutlet weak var contentsCenterView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resizableImageWithContentsCenter(contentsView: contentsCenterView, contentsImage: image!, X: 0.3, width: 0.2, Y: 0, height: 1)
    }

    func resizableImageWithContentsCenter(contentsView: UIView,contentsImage: UIImage, X: CGFloat, width widthProportion: CGFloat,Y: CGFloat, height heightProportion: CGFloat){
        
        contentsView.layer.contents = contentsImage.cgImage
        
        let rect = CGRect(x: X, y: Y, width: widthProportion, height: heightProportion)
        
        contentsView.layer.contentsCenter = rect
        
    }
    
}
