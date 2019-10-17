//
//  ImageRonde.swift
//  Les Calanques
//
//  Created by Steeven DEMAY on 17/10/2019.
//  Copyright © 2019 Steeven DEMAY. All rights reserved.
//

import UIKit

class ImageRonde: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup(){
        layer.cornerRadius = frame.height / 2
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2
        
        //pour que l'image prenne la forme
        clipsToBounds = true
        contentMode = .scaleAspectFill
    }
}
