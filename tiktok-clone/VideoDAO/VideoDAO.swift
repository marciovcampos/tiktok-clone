//
//  VideoDAO.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 20/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class VideoDAO: NSObject {
    
    func returnAllVideos() -> Array<Video> {
       
        let video1 = Video(videoUrl: "https://dl.dropboxusercontent.com/s/bqhsylcz3f1xgi5/WhatsApp%20Video%202020-07-21%20at%2020.11.05.mp4", caption: "caption 1")
        let video2 = Video(videoUrl: "https://dl.dropboxusercontent.com/s/fshn205f7jhj1s5/WhatsApp%20Video%202020-07-21%20at%2020.09.13.mp4", caption: "caption 2")
        let video3 = Video(videoUrl: "https://dl.dropboxusercontent.com/s/fxck3346zx08f0b/WhatsApp%20Video%202020-07-21%20at%2020.11.47.mp4", caption: "caption 3")
        let video4 = Video(videoUrl: "https://dl.dropboxusercontent.com/s/bdpkecblin0bixa/WhatsApp%20Video%202020-07-21%20at%2020.12.52.mp4", caption: "caption 4")
        let video5 = Video(videoUrl: "https://dl.dropboxusercontent.com/s/stuv7a7e3nyvbvw/WhatsApp%20Video%202020-07-21%20at%2020.14.19.mp4.mp4", caption: "caption 5")
        let video6 = Video(videoUrl: "https://dl.dropboxusercontent.com/s/ub2vtrth8tadbrq/WhatsApp%20Video%202020-07-21%20at%2020.16.46.mp4", caption: "caption 6")
        let video7 = Video(videoUrl: "https://dl.dropboxusercontent.com/s/osy787c21hxxlfm/WhatsApp%20Video%202020-07-21%20at%2020.19.21.mp4", caption: "caption 7")
        let video8 = Video(videoUrl: "https://dl.dropboxusercontent.com/s/patrfmimr127095/WhatsApp%20Video%202020-07-21%20at%2020.20.26.mp4", caption: "caption 8")
        let video9 = Video(videoUrl: "https://dl.dropboxusercontent.com/s/1xuq7wuojqohvl6/WhatsApp%20Video%202020-07-21%20at%2020.21.15.mp4", caption: "caption 9")
        let video10 = Video(videoUrl: "https://dl.dropboxusercontent.com/s/3cz5tp4wzhsdkdi/WhatsApp%20Video%202020-07-21%20at%2020.23.34.mp4", caption: "caption 10")
        
        let listaVideos:Array<Video> = [video1, video2, video3, video4, video5, video6, video7, video8, video9, video10]
        
        return listaVideos
    }

}
