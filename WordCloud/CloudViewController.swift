//
//  ViewController.swift
//  WordCram
//
//  Created by Slava Semeniuk on 3/9/19.
//  Copyright © 2019 eKreative. All rights reserved.
//

import UIKit

final class CloudViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet private weak var imageView: UIImageView!

    // MARK: - State
    private lazy var canvas = Canvas(size: .init(width: 500, height: 500))

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(viewWasTapped)))
    }

    // MARK: - Actions
    @objc private func viewWasTapped() {

        let started = Date()

        for _ in 0...700 {
            let textFont: UIFont = .systemFont(ofSize: CGFloat(Int.random(in: 9...20)))
            canvas.add(word: .init(text: .random(length: Int.random(in: 5...10)), font: textFont, color: .random()))
        }

        print(-started.timeIntervalSinceNow)

        imageView.image = UIImage(cgImage: canvas.currentImage)
    }

}
