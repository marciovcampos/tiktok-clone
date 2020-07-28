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
        self.activityLabel.attributedText = formatString(userName: activity.username, label: activity.label)
        self.userImageView.image = UIImage(named: activity.userNameImage)
        makeRounded()
        guard let path = Bundle.main.path(forResource: activity.videoImage, ofType: "mp4") else { return }
        self.videoImagemView.image = generateThumbnail(path: URL(fileURLWithPath: path))

   
    }
    
    private func makeRounded() {
        userImageView?.layer.cornerRadius = (userImageView?.frame.size.width ?? 0.0) / 2
        userImageView?.clipsToBounds = true
        userImageView?.layer.borderWidth = 2.0
        userImageView?.layer.borderColor = UIColor.black.cgColor
    }
    
   private func generateThumbnail(path: URL) -> UIImage? {
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
    
    private func formatString (userName: String, label: String) -> NSAttributedString {

        let font = UIFont.systemFont(ofSize: 16)
        let firstAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: font.pointSize)]
        let secondAttributes = [NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        
        let firstString = NSMutableAttributedString(string: "\(userName) ", attributes: firstAttributes)
        let secondString = NSAttributedString(string: label, attributes: secondAttributes)
        
        firstString.append(secondString)
       
        return firstString
    }
    
}
