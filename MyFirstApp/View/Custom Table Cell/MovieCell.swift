//
//  MovieCell.swift
//  MyFirstApp
//
//  Created by cloud on 18/01/22.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
 
    @IBOutlet weak var bodyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(post: PostModel?) {
        titleLabel.text = post?.title ?? ""
        bodyLabel.text = post?.body ?? ""
    }

}
