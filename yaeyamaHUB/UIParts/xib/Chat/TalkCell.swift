//
//  TalkCell.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/07/06.
//

import Foundation
import SwiftUI

class TalkCell: UITableViewCell {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var contents: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var batch: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
