//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Walter shub on 11/1/16.
//  Copyright © 2016 ShApps. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    
    @IBOutlet weak var VideoPreviewImgae: UIImageView!
    
    
    @IBOutlet weak var VideoTitle: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func updateUI (partyRock: PartyRock) {
        VideoTitle.text = partyRock.videoTitle
        let url = URL(string: partyRock.imageUrl)!
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.VideoPreviewImgae.image = UIImage(data: data)
                }
            
            } catch {
                
            }
        }
        
        
        
        //todo se image from url
    }
}
