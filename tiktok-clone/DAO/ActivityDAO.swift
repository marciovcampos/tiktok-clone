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
           
        let activity1 = Activity(username: "User 1", userNameImage: "user1.png", type: "like", label: "liked your video", videoImage: "video1.png")
        let activity2 = Activity(username: "User 2", userNameImage: "user2.png", type: "like", label: "liked your video", videoImage: "video2.png")
        let activity3 = Activity(username: "User 3", userNameImage: "user3.png", type: "like", label: "liked your video", videoImage: "video3.png")
        let activity4 = Activity(username: "User 4", userNameImage: "user4.png", type: "like", label: "liked your video", videoImage: "video4.png")
        let activity5 = Activity(username: "User 5", userNameImage: "user5.png", type: "like", label: "liked your video", videoImage: "video5.png")
        let activity6 = Activity(username: "User 6", userNameImage: "user6.png", type: "like", label: "liked your video", videoImage: "video6.png")
        let activity7 = Activity(username: "User 7", userNameImage: "user7.png", type: "like", label: "liked your video", videoImage: "video7.png")
        let activity8 = Activity(username: "User 8", userNameImage: "user8.png", type: "like", label: "liked your video", videoImage: "video8.png")
        let activity9 = Activity(username: "User 9", userNameImage: "user9.png", type: "like", label: "liked your video", videoImage: "video9.png")
        let activity10 = Activity(username: "User 10", userNameImage: "user10.png", type: "like", label: "liked your video", videoImage: "video10.png")

           
        let activityList: Array<Activity> = [activity1, activity2, activity3, activity4, activity5, activity6, activity7, activity8, activity9, activity10]

        return activityList
        
       }

}
