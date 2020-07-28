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
        video = nil
        videoContainer.layer.sublayers?.forEach { $0.removeFromSuperlayer() }
    }
    
    private func configureVideoInfo(){
        guard let video = video else { return }
        labelUsername.text = video.username
        labelCaption.text = video.caption
        labelAudioTrack.text = video.audioTrackName
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
