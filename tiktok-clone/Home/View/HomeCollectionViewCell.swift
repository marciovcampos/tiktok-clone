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

    @IBOutlet weak var videoContainer: UIView!
    
    @IBOutlet weak var labelUsername: UILabel!
    @IBOutlet weak var labelCaption: UILabel!
    @IBOutlet weak var labelAudioTrack: UILabel!
    
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
        button.setBackgroundImage(UIImage(systemName: "person.circle"), for: .normal)
        return button
    }()
    
    private let likeButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "heart.fill"), for: .normal)
        return button
    }()
    
    private let commentButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "text.bubble.fill"), for: .normal)
        return button
    }()
    
    private let shareButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "phone.circle.fill"), for: .normal)
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
        configureVideoInfo()
    }
    
    private func addSubviews(){
        contentView.addSubview(usernameLabel)
        contentView.addSubview(captionLabel)
        contentView.addSubview(audioLabel)
        
        
        contentView.addSubview(profileButton)
        contentView.addSubview(likeButton)
        contentView.addSubview(commentButton)
        contentView.addSubview(shareButton)
        
        // Add actions
        profileButton.addTarget(self, action: #selector(didTapProfileButton), for: .touchDown)
        likeButton.addTarget(self, action: #selector(didTapLikeButton), for: .touchDown)
        commentButton.addTarget(self, action: #selector(didTapCommentButton), for: .touchDown)
        shareButton.addTarget(self, action: #selector(didTapShareButton), for: .touchDown)
       
    }
    
    @objc private func didTapProfileButton(with: Video){
           guard let video = video else { return }
           delegate?.didTapProfileButton(with: video)
       }
    
    @objc private func didTapLikeButton(with: Video){
        guard let video = video else { return }
        delegate?.didTapLikeButton(with: video)
    }
    
    @objc private func didTapCommentButton(with: Video){
          guard let video = video else { return }
          delegate?.didTapCommentButton(with: video)
    }
    
    @objc private func didTapShareButton(with: Video){
          guard let video = video else { return }
          delegate?.didTapShareButton(with: video)
    }
    

    override func layoutSubviews() {
        super.layoutSubviews()
        
        let size = contentView.frame.size.width/6
        let width = contentView.frame.size.width
        let heigh = contentView.frame.size.height
        
        //Buttons
        profileButton.frame = CGRect(x: width-size, y: heigh-size, width: size, height: size)
        likeButton.frame = CGRect(x: width-size, y: heigh-(size*2)-10, width: size, height: size)
        commentButton.frame = CGRect(x: width-size, y: heigh-(size*3)-10, width: size, height: size)
        shareButton.frame = CGRect(x: width-size, y: heigh-(size*4)-10, width: size, height: size)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        captionLabel.text = nil
        audioLabel.text = nil
        usernameLabel.text = nil
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
