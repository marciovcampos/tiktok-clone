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
    
    init(videoUrl: String, caption: String){
        self.videoUrl = videoUrl
        self.caption = caption
    }

}
