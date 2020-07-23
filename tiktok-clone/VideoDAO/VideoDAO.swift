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
        
        let video1 = Video(videoUrl: "video1", format: "mp4", caption: "caption 1", username: "username 1", audioTrackName: "audio 1")
        let video2 = Video(videoUrl: "video2", format: "mp4", caption: "caption 2", username: "username 2", audioTrackName: "audio 2")
        let video3 = Video(videoUrl: "video3", format: "mp4", caption: "caption 3", username: "username 3", audioTrackName: "audio 3")
        let video4 = Video(videoUrl: "video4", format: "mp4", caption: "caption 4", username: "username 4", audioTrackName: "audio 4")
        let video5 = Video(videoUrl: "video5", format: "mp4", caption: "caption 5", username: "username 5", audioTrackName: "audio 5")
        let video6 = Video(videoUrl: "video6", format: "mp4", caption: "caption 6", username: "username 6", audioTrackName: "audio 6")
        let video7 = Video(videoUrl: "video7", format: "mp4", caption: "caption 7", username: "username 7", audioTrackName: "audio 7")
        let video8 = Video(videoUrl: "video8", format: "mp4", caption: "caption 8", username: "username 8", audioTrackName: "audio 8")
        let video9 = Video(videoUrl: "video9", format: "mp4", caption: "caption 9", username: "username 9", audioTrackName: "audio 9")
        let video10 = Video(videoUrl: "video10", format: "mp4", caption: "caption 10", username: "username 10", audioTrackName: "audio 10")
        
        let listaVideos:Array<Video> = [video1, video2, video3, video4, video5, video6, video7, video8, video9, video10]
        
        return listaVideos
    }

}
