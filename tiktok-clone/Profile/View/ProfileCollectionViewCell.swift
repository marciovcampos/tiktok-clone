//
//  ProfileCollectionViewCell.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 29/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit
import AVFoundation

class ProfileCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var videoImageView: UIImageView!
    
    private var video: Video?
    
    public func configure(with video: Video){
        self.video = video
        guard let path = Bundle.main.path(forResource: video.url, ofType: video.format) else { return }
        self.videoImageView.image = generateThumbnail(path: URL(fileURLWithPath: path))
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
    
}
