//
//  PartyRock.swift
//  PartyRockApp
//
//  Created by Walter shub on 11/1/16.
//  Copyright © 2016 ShApps. All rights reserved.
//

import Foundation


class PartyRock {
    
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageUrl: String {
        return _imageURL
    }
    var videoURL: String{
        return _videoURL
    }
    
    var videoTitle: String{
        return _videoTitle
    }
    init(imageUrl: String , videoURL: String, videoTitle: String) {
        _imageURL = imageUrl
        _videoURL = videoURL
        _videoTitle = videoTitle
        
    }
}
