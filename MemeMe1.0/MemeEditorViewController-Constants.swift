//
//  MemeEditorViewController-Constants.swift
//  MemeMe1.0
//
//  Created by 1203 Broadway on 5/24/21.
//

import Foundation

// enum for errors unique to AudioRecorder class
enum MemeEditorError: LocalizedError {
    case memeSharingError
    case memeImageError
    
    var errorDescription: String? {
        
        switch self {
        case .memeSharingError:
            return "Unable to share meme"
        case .memeImageError:
            return "Bad meme photo"
        }
    }
    
    var helpAnchor: String? {
        return "Dismiss"
    }
    
    var recoverySuggestion: String? {
        
        var message: String!
        switch self {
        case .memeImageError:
            message = "Bad photo. Try another photo"
        case .memeSharingError:
            message = "Contact the App store for prompt and courteous service"
        }
        
        return message
    }
}
