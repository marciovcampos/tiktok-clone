//
//  Videos.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 20/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class Video: NSObject {
    
    let videoUrl : String
    let caption : String
    let username: String
    let audioTrackName: String
 
    init(videoUrl: String, caption: String, username: String, audioTrackName: String){
        self.videoUrl = videoUrl
        self.caption = caption
        self.username = username
        self.audioTrackName = audioTrackName
    }

}
