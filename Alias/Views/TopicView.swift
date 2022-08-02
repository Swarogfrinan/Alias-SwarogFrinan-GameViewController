//
//  TopicView.swift
//  Alias
//
//  Created by Daniel on 27.07.2022.
//

import Foundation
import UIKit

class StackView: UIStackView{
    
    
    var titleLabel = UILabel.createLabel(text: "Категории", font: 34, color: .black)
    var categoryOne = UIButton.createButton(title: "Личности", height: 120, color: .systemBlue, image: UIImageView(image: UIImage(named: "cowboy")))
    var categoryTwo = UIButton.createButton(title: "Животные", height: 120, color: .systemBlue, image: UIImageView(image: UIImage(named: "frog")))
    var categoryThree = UIButton.createButton(title: "Еда", height: 120, color: .systemBlue, image: UIImageView(image: UIImage(named: "burger")))
    var categoryFour = UIButton.createButton(title: "Хобби", height: 120, color: .systemBlue, image: UIImageView(image: UIImage(named: "hobby")))
    
    init(){
        super.init(frame: .zero)
        
        axis = .vertical
        
        addSubview(titleLabel)
        addSubview(categoryOne)
        addSubview(categoryTwo)
        addSubview(categoryThree)
        addSubview(categoryFour)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        categoryOne.translatesAutoresizingMaskIntoConstraints = false
        categoryTwo.translatesAutoresizingMaskIntoConstraints = false
        categoryThree.translatesAutoresizingMaskIntoConstraints = false
        categoryFour.translatesAutoresizingMaskIntoConstraints = false
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.widthAnchor.constraint(equalTo: widthAnchor, constant: -50),
            
            categoryOne.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 35),
            categoryOne.centerXAnchor.constraint(equalTo: centerXAnchor),
            categoryOne.widthAnchor.constraint(equalTo: widthAnchor),
            
            categoryTwo.topAnchor.constraint(equalTo: categoryOne.bottomAnchor, constant: 35),
            categoryTwo.leadingAnchor.constraint(equalTo: categoryOne.leadingAnchor),
            categoryTwo.widthAnchor.constraint(equalTo: widthAnchor),
            
            categoryThree.topAnchor.constraint(equalTo: categoryTwo.bottomAnchor, constant: 35 ),
            categoryThree.leadingAnchor.constraint(equalTo: categoryTwo.leadingAnchor),
            categoryThree.widthAnchor.constraint(equalTo: widthAnchor),
            
            categoryFour.topAnchor.constraint(equalTo: categoryThree.bottomAnchor, constant: 35 ),
            categoryFour.leadingAnchor.constraint(equalTo: categoryThree.leadingAnchor),
            categoryFour.widthAnchor.constraint(equalTo: widthAnchor),
        ])
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
