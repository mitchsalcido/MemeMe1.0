//
//  MiscViewObjects+Helpers.swift
//  MemeMe1.0
//
//  Created by 1203 Broadway on 5/21/21.
//

import UIKit

extension UIImageView {
    
    func imageFrame() -> CGRect? {
        /*
         returns a CGRect (frame) that is the scaled frame of the image within the
         imageView
         */
        guard let imageSize = self.image?.size else {
            return nil
        }
                
        let viewSize = self.bounds.size
        let width: CGFloat!
        let height: CGFloat!
        let xOrigin: CGFloat!
        let yOrigin: CGFloat!
        
        if viewSize.width < viewSize.height {
            let ratio = imageSize.height / imageSize.width // > 1.0
            width = viewSize.width
            height = width * ratio
            xOrigin = 0.0
            yOrigin = (viewSize.height - height) / 2.0
        } else {
            let ratio = imageSize.width / imageSize.height // > 1.0
            height = viewSize.height
            width = height * ratio
            xOrigin = (viewSize.width - width) / 2.0
            yOrigin = 0.0
        }
        
        return CGRect(x: xOrigin,
                      y: yOrigin,
                      width: width,
                      height: height)
    }
}

extension UIView {

    func createUIImage() -> UIImage? {
        /*
         create and return a UIImage rendered from UIView
         */
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, UIScreen.main.scale)
        drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
