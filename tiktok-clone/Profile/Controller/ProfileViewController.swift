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
    
    let allVideoList: Array<Video> = VideoDAO().returnAllVideos()
    var videoList: Array<Video> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileCollectionView.dataSource = self
        profileCollectionView.delegate = self
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
        return CGSize(width: collectionView.bounds.width/3-6.8, height:150)
    }
    
 

}
