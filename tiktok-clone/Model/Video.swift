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
    let fileFormat: String
    
    init(videoUrl: String, caption: String, fileFormat: String){
        self.videoUrl = videoUrl
        self.caption = caption
        self.fileFormat = fileFormat
    }

}
