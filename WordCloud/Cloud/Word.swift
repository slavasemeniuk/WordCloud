//
//  Word.swift
//  WordCram
//
//  Created by Slava Semeniuk on 4/1/19.
//  Copyright © 2019 eKreative. All rights reserved.
//

import Foundation
import UIKit

struct Word {
    let text: String

    let attributes: [NSAttributedString.Key: Any]
    let size: CGSize

    init(text: String, font: UIFont, color: UIColor) {
        self.text = text
        self.attributes = [.font: font,
                           .foregroundColor: color,]
        self.size = (text as NSString).size(withAttributes: attributes)
    }
}
