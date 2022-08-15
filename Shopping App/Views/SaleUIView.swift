//
//  SaleTableViewCell.swift
//  Shopping App
//
//  Created by Kristoffer Baumgarten on 25/07/2022.
//

import UIKit

class SaleUIView: UIView {
    
    private let saleImageView: UIImageView = {
        
        let ImageView = UIImageView()
        ImageView.contentMode = .scaleAspectFit
        ImageView.clipsToBounds = true
        ImageView.image = UIImage(named: "SaleImage")
        return ImageView
    }()
    

    override init(frame: CGRect){
        super.init(frame: frame)
        addSubview(saleImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        saleImageView.frame = bounds
    }
    
    required init?(coder: NSCoder){
        fatalError()
    }
    
    
    

}
