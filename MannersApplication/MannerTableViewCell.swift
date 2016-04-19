//
//  MannerTableViewCell.swift
//  MannersApplication
//
//  Created by Omar Sherief on 4/18/16.
//  Copyright © 2016 Project(X). All rights reserved.
//

import UIKit

class MannerTableViewCell: UITableViewCell {

    @IBOutlet weak var MannerTitle: UILabel!
    @IBOutlet weak var MannerLearnt: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initValues(mannerTitle : String, _ learnt: Bool){
        self.MannerTitle.text = mannerTitle
        if(learnt == true){
            self.MannerLearnt.image = UIImage(named: "done")
        }
    }
}
