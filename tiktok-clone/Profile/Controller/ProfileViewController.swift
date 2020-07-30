//
//  ProfileViewController.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 29/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var profileCollectionView: UICollectionView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var buttonEditProfile: UIButton!
    @IBOutlet weak var buttonBookmark: UIButton!
    
    let allVideoList: Array<Video> = VideoDAO().returnAllVideos()
    var videoList: Array<Video> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileCollectionView.dataSource = self
        profileCollectionView.delegate = self
        makeRounded()
        styleButtons()
        videoList = allVideoList
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.videoList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let videoCell = collectionView.dequeueReusableCell(withReuseIdentifier: "profileCell", for: indexPath) as! ProfileCollectionViewCell
        let currentVideo = videoList[indexPath.row]
        videoCell.configure(with: currentVideo)
        return videoCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/3-1, height:160)
    }
    
    private func makeRounded() {
        profileImageView?.layer.cornerRadius = (profileImageView?.frame.size.width ?? 0.0) / 2
        profileImageView?.clipsToBounds = true
        profileImageView?.layer.borderWidth = 2.0
        profileImageView?.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    private func styleButtons(){
        buttonEditProfile.layer.borderWidth = 0.8
        buttonEditProfile.layer.borderColor = UIColor.lightGray.cgColor
        buttonBookmark.layer.borderWidth = 0.8
        buttonBookmark.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    
 

}
