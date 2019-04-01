//
//  WordImage.swift
//  WordCram
//
//  Created by Slava Semeniuk on 3/10/19.
//  Copyright © 2019 eKreative. All rights reserved.
//

import UIKit

struct WordImage {
    let point: CGPoint
    let image: CGImage
    let word: Word

    var rect: CGRect {
        return CGRect(origin: point, size: word.size)
    }
}
