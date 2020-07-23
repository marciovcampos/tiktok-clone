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
    
    static let identifier = "cellVideo"
    
    // MARK: Subviews
    private var video: Video?
    var player: AVPlayer?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public func configure(with video: Video){
        self.video = video
        configureVideo()
        configureVideoInfo()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        labelUsername.text = nil
        labelCaption.text = nil
        labelAudioTrack.text = nil
    }
    
    private func configureVideo(){
        
        guard let video = video else { return }
        guard let path = Bundle.main.path(forResource: video.url, ofType: video.format) else { return }
        player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerView = AVPlayerLayer()
        playerView.player = player
        playerView.frame = contentView.bounds
        playerView.videoGravity = .resizeAspectFill
        videoContainer.layer.addSublayer(playerView)
        videoContainer.layer.zPosition = -1
        stackViewButtons.layer.zPosition = 1
        
        player?.volume = 0
        player?.play()
    }
    
    private func configureVideoInfo(){
        guard let video = video else { return }
        labelUsername.text = video.username
        labelCaption.text = video.caption
        labelAudioTrack.text = video.audioTrackName
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
        
}
