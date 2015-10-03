//
//  GoonieTableViewCell.swift
//  GitHubGooniesPractice2
//
//  Created by Joe E. on 10/3/15.
//  Copyright © 2015 Joe E. All rights reserved.
//

import UIKit

class GoonieTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }

}
