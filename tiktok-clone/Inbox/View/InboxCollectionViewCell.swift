//
//  InboxCollectionViewCell.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 27/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit
import AVFoundation

class InboxCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var videoImagemView: UIImageView!
    @IBOutlet weak var activityLabel: UILabel!
    
    private var activity: Activity?
    
    public func configure(with activity: Activity){
        
        self.activity = activity
        
        self.activityLabel.text =  "\(activity.username) \(activity.label)"
        self.userImageView.image = UIImage(named: activity.userNameImage)
        makeRounded()
        guard let path = Bundle.main.path(forResource: activity.videoImage, ofType: "mp4") else { return }
        self.videoImagemView.image = generateThumbnail(path: URL(fileURLWithPath: path))

   
    }
    
    func makeRounded() {
        userImageView?.layer.cornerRadius = (userImageView?.frame.size.width ?? 0.0) / 2
        userImageView?.clipsToBounds = true
        userImageView?.layer.borderWidth = 2.0
        userImageView?.layer.borderColor = UIColor.black.cgColor
    }
    
   func generateThumbnail(path: URL) -> UIImage? {
        do {
            let asset = AVURLAsset(url: path, options: nil)
            let imgGenerator = AVAssetImageGenerator(asset: asset)
            imgGenerator.appliesPreferredTrackTransform = true
            let cgImage = try imgGenerator.copyCGImage(at: CMTimeMake(value: 0, timescale: 1), actualTime: nil)
            let thumbnail = UIImage(cgImage: cgImage)
            return thumbnail
        } catch let error {
            print("*** Error generating thumbnail: \(error.localizedDescription)")
            return nil
        }
    }
    
    
    
}
