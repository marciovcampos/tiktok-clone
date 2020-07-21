//
//  HomeViewController.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 20/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    
    @IBOutlet weak var homeCollectionView: UICollectionView!
    
    let listaComTodosVideos: Array<Video> = VideoDAO().returnAllVideos()
    var listaVideos: Array<Video> = []
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        homeCollectionView.dataSource = self
        homeCollectionView.delegate = self
        listaVideos = listaComTodosVideos
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return self.listaVideos.count
          }
          
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaVideo = collectionView.dequeueReusableCell(withReuseIdentifier: "cellVideo", for: indexPath) as! HomeCollectionViewCell
        let videoAtual = listaVideos[indexPath.row]
        celulaVideo.labelVideoPlayer.text = videoAtual.videoUrl
        celulaVideo.configure(with: videoAtual)
        return celulaVideo
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cvRect = collectionView.frame
        return CGSize(width: cvRect.width, height: cvRect.height)
    }

}



