//
//  ActivityDAO.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 27/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class ActivityDAO: NSObject {
    
    func returnAllActivity() -> Array<Activity> {
           
        let activity1 = Activity(username: "User 1", userNameImage: "user1.png", type: "like", label: "liked your video. 1d", videoImage: "video1", videoFormat: "mp4")
        let activity2 = Activity(username: "User 2", userNameImage: "user2.png", type: "like", label: "liked your video. 1d ", videoImage: "video2", videoFormat: "mp4")
        let activity3 = Activity(username: "User 3", userNameImage: "user3.png", type: "like", label: "liked your video. 3d", videoImage: "video3", videoFormat: "mp4")
        let activity4 = Activity(username: "User 4", userNameImage: "user4.png", type: "like", label: "liked your video. 6d", videoImage: "video4", videoFormat: "mp4")
        let activity5 = Activity(username: "User 5", userNameImage: "user5.png", type: "like", label: "liked your video. 1w", videoImage: "video5", videoFormat: "mp4")
        let activity6 = Activity(username: "User 6", userNameImage: "user6.png", type: "like", label: "liked your video. 1w", videoImage: "video6", videoFormat: "mp4")
        let activity7 = Activity(username: "User 7", userNameImage: "user7.png", type: "like", label: "liked your video. 2w", videoImage: "video7", videoFormat: "mp4")
        let activity8 = Activity(username: "User 8", userNameImage: "user8.png", type: "like", label: "liked your video. 4w", videoImage: "video8", videoFormat: "mp4")
        let activity9 = Activity(username: "User 9", userNameImage: "user9.png", type: "like", label: "liked your video. 5w", videoImage: "video9", videoFormat: "mp4")
        let activity10 = Activity(username: "User 10", userNameImage: "user10.png", type: "like", label: "liked your video. 6w", videoImage: "video10", videoFormat: "mp4")

           
        let activityList: Array<Activity> = [activity1, activity2, activity3, activity4, activity5, activity6, activity7, activity8, activity9, activity10, activity1, activity2, activity3, activity4, activity5, activity6, activity7, activity8, activity9, activity10]

        return activityList
        
       }

}
