//
//  InboxViewController.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 27/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class InboxViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var activityCollectionView: UICollectionView!
    
    let allActivityList: Array<Activity> = ActivityDAO().returnAllActivity()
    var activityList: Array<Activity> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityCollectionView.dataSource = self
        activityCollectionView.delegate = self
        activityList = allActivityList
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.activityList.count
             }
             
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let activityCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellActivity", for: indexPath) as! InboxCollectionViewCell
        let currentActivity = activityList[indexPath.row]
        activityCell.configure(with: currentActivity)
       return activityCell
   }

}
