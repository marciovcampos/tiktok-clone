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

    @IBOutlet weak var labelVideoPlayer: UILabel!
    
    static let identifier = "cellVideo"
    private var video: Video?
    
    var player: AVPlayer?
    
    override init(frame: CGRect) {
        super.init(frame: frame)       
    }
    
    public func configure(with video: Video){
        self.video = video
        configureVideo()
    }
    
    public func configureVideo(){
        guard let video = video else { return }
        guard let url = URL(string: video.videoUrl) else { return }
        player = AVPlayer(url: url)
        let playerView = AVPlayerLayer()
        playerView.player = player
        playerView.frame = contentView.bounds
        contentView.layer.addSublayer(playerView)
        player?.volume = 0
        player?.play()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
        
}
