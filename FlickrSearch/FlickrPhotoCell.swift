//
//  FlickrPhotoCellCollectionViewCell.swift
//  FlickrSearch
//
//  Created by Baiken on 6/11/17.
//  Copyright © 2017 GuiltyGears. All rights reserved.
//

import UIKit

class FlickrPhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // MARK: - Properties
    override var isSelected: Bool {
        didSet {
            imageView.layer.borderWidth = isSelected ? 10 : 0
        }
    }
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.borderColor = AppDelegate.themeColor.cgColor
        isSelected = false
    }
    
}
