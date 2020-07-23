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
    
    private var collectionView: UICollectionView?
    
  
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
        celulaVideo.configure(with: videoAtual)
        return celulaVideo
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cvRect = view.frame
        return CGSize(width: cvRect.width, height: cvRect.height)
    }
    
    // Change Status Bar Color
    
    override func viewDidAppear(_ animated: Bool) {
     if #available(iOS 13.0, *) {
         let app = UIApplication.shared
         let statusBarHeight: CGFloat = app.statusBarFrame.size.height
         
         let statusbarView = UIView()
         statusbarView.backgroundColor = UIColor.black
         view.addSubview(statusbarView)
       
         statusbarView.translatesAutoresizingMaskIntoConstraints = false
         statusbarView.heightAnchor
             .constraint(equalToConstant: statusBarHeight).isActive = true
         statusbarView.widthAnchor
             .constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
         statusbarView.topAnchor
             .constraint(equalTo: view.topAnchor).isActive = true
         statusbarView.centerXAnchor
             .constraint(equalTo: view.centerXAnchor).isActive = true
       
     } else {
         let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView
         statusBar?.backgroundColor = UIColor.black
     }
    }
      
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    @IBAction func didTapProfileButton(_ sender: Any) {
        print("profile")
    }
    
    @IBAction func didTapLikeButton(_ sender: Any) {
        print("like")
    }
    
    @IBAction func didTapCommentButton(_ sender: Any) {
        print("comment")
    }
    
    @IBAction func didTapShareButton(_ sender: Any) {
        print("share")
    }
    
}



