//
//  VideosCollectionViewCell.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 20/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit
import AVFoundation

protocol HomeCollectionViewCellDelegate: AnyObject {
    func didTapLikeButton(with video: Video)
    func didTapProfileButton(with video: Video)
    func didTapShareButton(with video: Video)
    func didTapCommentButton(with video: Video)
}

class HomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var labelVideoPlayer: UILabel!
    
    static let identifier = "cellVideo"
    
    // MARK: Labels
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .white
        return label
    }()
    
    private let captionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .white
        return label
    }()
    
    private let audioLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .white
        return label
    }()
    
    // MARK: Buttons
    
    private let profileButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    private let likeButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    private let commentButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    private let shareButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    // MARK: Delegate
    
    weak var delegate: HomeCollectionViewCell?
    
    // MARK: Subviews
    private var video: Video?
    var player: AVPlayer?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
    }
    
    public func configure(with video: Video){
        self.video = video
        configureVideo()
    }
    
    private func addSubviews(){
        contentView.addSubview(usernameLabel)
        contentView.addSubview(captionLabel)
        contentView.addSubview(audioLabel)
        
        
        contentView.addSubview(profileButton)
        contentView.addSubview(likeButton)
        contentView.addSubview(commentButton)
        contentView.addSubview(shareButton)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    private func configureVideo(){
        
        guard let video = video else { return }
        guard let url = URL(string: video.videoUrl) else { return }
        player = AVPlayer(url: url)
        let playerView = AVPlayerLayer()
        playerView.player = player
        playerView.frame = contentView.bounds
        playerView.videoGravity = .resizeAspectFill
        contentView.layer.addSublayer(playerView)
        player?.volume = 0
        player?.play()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
        
}
