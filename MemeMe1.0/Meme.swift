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
    
    // properties
    let topText:String?
    let bottomText: String?
    let originalImage: UIImage?
    let memedImage: UIImage?
    
    // init
    init(topText: String, bottomText: String, originalImage: UIImage, memedImage: UIImage) {
        self.topText = topText
        self.bottomText = bottomText
        self.originalImage = originalImage
        self.memedImage = memedImage
    }
}
