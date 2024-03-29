//
//  CalanqueCell.swift
//  Les Calanques
//
//  Created by Steeven DEMAY on 17/10/2019.
//  Copyright © 2019 Steeven DEMAY. All rights reserved.
//

import UIKit

class CalanqueCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var calanqueIV: ImageRonde!
    @IBOutlet weak var nomLabel: UILabel!

    var calanque: Calanque!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setupCell(_ calanque: Calanque)  {
        self.calanque = calanque
        containerView.layer.cornerRadius = 20
        containerView.backgroundColor = UIColor.lightGray
        nomLabel.text = self.calanque.nom
        calanqueIV.image = self.calanque.image
    }

}
