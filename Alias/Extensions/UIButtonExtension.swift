//
//  UIButtonExtension.swift
//  Alias
//
//  Created by Daniel on 27.07.2022.
//

import Foundation
import UIKit

extension UIButton {
    class func createButton(title: String, height: CGFloat, color: UIColor, image: UIImageView?) -> UIButton {
        
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.tintColor = UIColor.white
        button.backgroundColor = color
        button.layer.cornerRadius = 10
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        //если есть картинка, то сетим ее на кнопку, если нет, то ничего не делаем
        if let image = image {
            button.addSubview(image)
            image.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                button.heightAnchor.constraint(equalToConstant: height),
                image.widthAnchor.constraint(equalToConstant: 56),
                image.heightAnchor.constraint(equalToConstant: 56),
                image.centerYAnchor.constraint(equalTo: button.centerYAnchor),
                image.leadingAnchor.constraint(equalTo: button.leadingAnchor, constant: 19)
            ])
        }
        return button
    }
}
