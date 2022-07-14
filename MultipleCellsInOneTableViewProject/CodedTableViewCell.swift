//
//  CodedTableViewCell.swift
//  MultipleCellsInOneTableViewProject
//
//  Created by Michael Novosad on 14.07.2022.
//

import UIKit

class CodedTableViewCell: UITableViewCell {

    static let identifier = "CodedTableViewCell"

    private let myLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    private let myImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    public func configure() {
        contentView.addSubview(myLabel)
        contentView.addSubview(myImageView)
        
        myLabel.text = "It works"
        myLabel.textAlignment = .center
        myImageView.image = UIImage(named: "image2")
        myImageView.contentMode = .scaleAspectFill
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = CGRect(x: 5, y: 5, width: 100, height: 100)
        myLabel.frame = CGRect(x: 105, y: 5, width: contentView.frame.size.width-105, height: 100)
        
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = 50.0
    }
    
    
    
}
