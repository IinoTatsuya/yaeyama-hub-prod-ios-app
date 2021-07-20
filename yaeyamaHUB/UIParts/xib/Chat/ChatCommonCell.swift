//
//  ChatCommonCell.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/07/07.
//

import SwiftUI

class ChatCommonCell: UITableViewCell {
    
    @IBOutlet weak var contentsText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentsText.layer.cornerRadius = 5
        contentsText.layer.shadowColor = UIColor.black.cgColor
        contentsText.layer.shadowRadius = 3
        contentsText.layer.shadowOffset = CGSize(width: 1, height: 1)
        contentsText.layer.shadowOpacity = 0.5
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    override func prepareForReuse() {
        super.prepareForReuse()
        contentsText.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -210).isActive = true
        contentsText.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 8).isActive = true
        
    }
}
