//
//  POITableViewCell.swift
//  GrailDiary
//
//  Created by Dahna on 3/19/20.
//  Copyright © 2020 Dahna Buenrostro. All rights reserved.
//

import UIKit

class POITableViewCell: UITableViewCell {
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var cluesCountLabel: UILabel!
    
    
    
    var poi: POI? {
        didSet {
            func updateViews() {
                if let unwrappedPOI = poi {
                    locationLabel.text = unwrappedPOI.location
                    countryLabel.text = unwrappedPOI.country
                    cluesCountLabel.text = "\(unwrappedPOI.clues.count) clues"
                } else {
                    return
                }
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
