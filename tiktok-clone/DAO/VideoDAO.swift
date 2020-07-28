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
        
        let video1 = Video(url: "video1", format: "mp4", caption: "caption 1", username: "@username 1", audioTrackName: "audio 1", likesNumber: "26.4k", commentsNumber: "1.4k", shareNumber: "370")
        let video2 = Video(url: "video2", format: "mp4", caption: "caption 2", username: "@username 2", audioTrackName: "audio 2", likesNumber: "260k", commentsNumber: "1.4k", shareNumber: "370")
        let video3 = Video(url: "video3", format: "mp4", caption: "caption 3", username: "@username 3", audioTrackName: "audio 3", likesNumber: "1.1M", commentsNumber: "56k", shareNumber: "5k")
        let video4 = Video(url: "video4", format: "mp4", caption: "caption 4", username: "@username 4", audioTrackName: "audio 4", likesNumber: "16.4k", commentsNumber: "200", shareNumber: "42")
        let video5 = Video(url: "video5", format: "mp4", caption: "caption 5", username: "@username 5", audioTrackName: "audio 5", likesNumber: "260k", commentsNumber: "10.6k", shareNumber: "900")
        let video6 = Video(url: "video6", format: "mp4", caption: "caption 6", username: "@username 6", audioTrackName: "audio 6", likesNumber: "380", commentsNumber: "10", shareNumber: "0")
        let video7 = Video(url: "video7", format: "mp4", caption: "caption 7", username: "@username 7", audioTrackName: "audio 7", likesNumber: "1.2k", commentsNumber: "158", shareNumber: "12")
        let video8 = Video(url: "video8", format: "mp4", caption: "caption 8", username: "@username 8", audioTrackName: "audio 8", likesNumber: "904k", commentsNumber: "140", shareNumber: "42")
        let video9 = Video(url: "video9", format: "mp4", caption: "caption 9", username: "@username 9", audioTrackName: "audio 9", likesNumber: "264", commentsNumber: "140", shareNumber: "37")
        let video10 = Video(url: "video10", format: "mp4", caption: "caption 10", username: "@username 10", audioTrackName: "audio 10", likesNumber: "39.4k", commentsNumber: "2k", shareNumber: "900")
        
        let listaVideos:Array<Video> = [video1, video2, video3, video4, video5, video6, video7, video8, video9, video10]
        
        return listaVideos
    }

}
