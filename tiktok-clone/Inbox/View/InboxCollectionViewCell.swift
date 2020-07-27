//
//  InboxCollectionViewCell.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 27/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class InboxCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var videoImagemView: UIImageView!
    @IBOutlet weak var activityLabel: UILabel!
    
    private var activity: Activity?
    
    public func configure(with activity: Activity){
        
        self.activity = activity
        
        self.activityLabel.text =  "\(activity.username) \(activity.label)"
   
    }
    
}
