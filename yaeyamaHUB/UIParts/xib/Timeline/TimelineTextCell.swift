//
//  TimelineTextCell.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/06/18.
//

import Foundation
import SwiftUI

class TimelineTextCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var createDay: UILabel!
    @IBOutlet weak var postDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
}
