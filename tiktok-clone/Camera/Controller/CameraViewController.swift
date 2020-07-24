//
//  CameraViewController.swift
//  tiktok-clone
//
//  Created by Marcio Vinicius Campos da Silveira on 24/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController {
    
    @IBOutlet weak var labelError: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let multimidia = UIImagePickerController()
            multimidia.sourceType = .camera
            self.present(multimidia, animated: true, completion: nil)
        }else{
            labelError.text = "Can't connect to the camera!"
        }

    }

}
