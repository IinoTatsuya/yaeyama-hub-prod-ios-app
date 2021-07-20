//
//  ChatImageCell.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/07/07.
//

import SwiftUI

class ChatImageCell: UITableViewCell {
    @IBOutlet weak var chatImage: UIImageView!
 
    override func awakeFromNib() {
        super.awakeFromNib()
        chatImage.layer.cornerRadius = 5
        chatImage.layer.shadowColor = UIColor.black.cgColor
        chatImage.layer.shadowRadius = 3
        chatImage.layer.shadowOffset = CGSize(width: 1, height: 1)
        chatImage.layer.shadowOpacity = 0.5
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    override func prepareForReuse() {
        super.prepareForReuse()
        chatImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -210).isActive = true
        chatImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 8).isActive = true
        
    }
}
