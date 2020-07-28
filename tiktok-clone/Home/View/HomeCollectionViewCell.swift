//
//  VideosCollectionViewCell.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 20/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit
import AVFoundation

class HomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var videoContainer: UIView!
    
    @IBOutlet weak var labelUsername: UILabel!
    @IBOutlet weak var labelCaption: UILabel!
    @IBOutlet weak var labelAudioTrack: UILabel!
    @IBOutlet weak var stackViewButtons: UIStackView!
    @IBOutlet weak var discoIcon: UIButton!
    
    @IBOutlet weak var labelLikesNumber: UILabel!
    @IBOutlet weak var labelCommentsNumber: UILabel!
    @IBOutlet weak var labelShareNumber: UILabel!
    
    static let identifier = "cellVideo"
    
    // MARK: Subviews
    private var video: Video?
    var player: AVPlayer?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        clean()
    }
    
    public func configure(with video: Video){
        self.video = video
        configureVideo()
        configureVideoInfo()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        //clean()
    }
    
    private func configureVideo(){
        
        guard let video = video else { return }
        guard let path = Bundle.main.path(forResource: video.url, ofType: video.format) else { return }
        player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerView = AVPlayerLayer()
        playerView.player = player
        playerView.frame = bounds
        playerView.videoGravity = .resizeAspectFill
        videoContainer.layer.addSublayer(playerView)
        
        player?.volume = 0
        player?.play()
    }
    
    func clean(){
        labelUsername.text = nil
        labelCaption.text = nil
        labelAudioTrack.text = nil
        labelLikesNumber.text = nil
        labelCommentsNumber.text = nil
        labelShareNumber.text = nil

        video = nil
        videoContainer.layer.sublayers?.forEach { $0.removeFromSuperlayer() }
    }
    
    private func configureVideoInfo(){
        guard let video = video else { return }
        labelUsername.text = video.username
        labelCaption.text = video.caption
        labelAudioTrack.text = video.audioTrackName
        labelLikesNumber.text = video.likesNumber
        labelCommentsNumber.text = video.commentsNumber
        labelShareNumber.text = video.shareNumber
        discoIcon.startRotating()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
        
}

extension UIButton {
    func startRotating(duration: Double = 1) {
        let kAnimationKey = "rotation"
        
        if self.layer.animation(forKey: kAnimationKey) == nil {
            let animate = CABasicAnimation(keyPath: "transform.rotation")
            animate.duration = duration
            animate.repeatCount = Float.infinity
            animate.fromValue = 0.0
            animate.toValue = Float(.pi * 2.0)
            self.layer.add(animate, forKey: kAnimationKey)
        }
    }
    func stopRotating() {
        let kAnimationKey = "rotation"
        
        if self.layer.animation(forKey: kAnimationKey) != nil {
            self.layer.removeAnimation(forKey: kAnimationKey)
        }
    }
}
