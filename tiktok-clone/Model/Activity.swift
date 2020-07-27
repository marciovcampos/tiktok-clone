//
//  Activity.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 27/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class Activity: NSObject {
    

    let username : String
    let userNameImage : String
    let type: String
    let label : String
    let videoImage: String
    let videoFormat: String

    init(username: String, userNameImage: String, type: String, label: String, videoImage: String, videoFormat: String){
        self.username = username
        self.userNameImage = userNameImage
        self.type = type
        self.label = label
        self.videoImage = videoImage
        self.videoFormat = videoFormat        
    }

}
