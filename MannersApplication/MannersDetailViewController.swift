//
//  MannersDetailViewController.swift
//  MannersApplication
//
//  Created by Omar Sherief on 4/18/16.
//  Copyright © 2016 Project(X). All rights reserved.
//

import UIKit


class MannersDetailViewController: UIViewController {

    var recievedManner : Manner?
    
    @IBOutlet weak var mannerDescriptionText: UITextView!
    @IBOutlet weak var mannerGifView: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        self.mannerDescriptionText.textAlignment = .Center
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let MannerGif = UIImage.gifWithName(recievedManner!.mannerImageNamed!)
        self.mannerGifView.image = MannerGif
        self.mannerDescriptionText.text = recievedManner!.mannerDescription
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func BackButtonPressed(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
