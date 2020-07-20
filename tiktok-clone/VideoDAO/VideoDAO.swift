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
        let video1 = Video(videoUrl: "https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4")
        let video2 = Video(videoUrl: "https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4")
        let video3 = Video(videoUrl: "https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4")
        let video4 = Video(videoUrl: "https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4")
        let video5 = Video(videoUrl: "https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4")
        let video6 = Video(videoUrl: "https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4")
        let video7 = Video(videoUrl: "https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4")
        let video8 = Video(videoUrl: "https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4")
        let video9 = Video(videoUrl: "https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4")
        let video10 = Video(videoUrl: "https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4")
        
        let listaVideos:Array<Video> = [video1, video2, video3, video4, video5, video6, video7, video8, video9, video10]
        
        return listaVideos
    }

}
