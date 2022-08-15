//
//  NewArrivalTableViewCell.swift
//  Shopping App
//
//  Created by Kristoffer Baumgarten on 25/07/2022.
//

import UIKit

class NewArrivalTableViewCell: UIView {

    private let NewArrivalImageView: UIImageView = {
        
        let ImageView = UIImageView()
        ImageView.contentMode = .scaleAspectFill
        ImageView.clipsToBounds = true
        ImageView.image = UIImage(named: "newArrival")
        return ImageView
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        addSubview(NewArrivalImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        NewArrivalImageView.frame = bounds
    }
    
    required init?(coder: NSCoder){
        fatalError()
    }
    
    
}
