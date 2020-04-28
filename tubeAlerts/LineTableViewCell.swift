//
//  LineTableViewCell.swift
//  tubeAlerts
//
//  Created by Danil on 04.11.2019.
//  Copyright © 2019 Danil Chernyshev. All rights reserved.
//

import UIKit

class LineTableViewCell: UITableViewCell {
    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var lineLogo: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
