//
//  Meme.swift
//  ImagePickerExperiment
//
//  Created by 1203 Broadway on 5/20/21.
//
/*
 About Meme.swift:
 Data object for a Meme. Contains text and image info
 */
import UIKit

struct Meme {
    
    var topText:String?
    var bottomText: String?
    var originalImage: UIImage?
    var memedImage: UIImage?
    
    init(topText: String, bottomText: String, originalImage: UIImage, memedImage: UIImage) {
        self.topText = topText
        self.bottomText = bottomText
        self.originalImage = originalImage
        self.memedImage = memedImage
    }
}
