//
//  RepoCell.swift
//  GithubDemo
//
//  Created by user116136 on 2/10/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    
    @IBOutlet weak var forksImageView: UIImageView!
    @IBOutlet weak var starsImageView: UIImageView!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    
    var repo: GithubRepo!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        if repo.name != nil {
            nameLabel.text = repo.name
        }
        
        if repo.ownerHandle != nil {
            ownerLabel.text = repo.ownerHandle
        }
        
        if repo.stars != nil {
            starsLabel.text = String(repo.stars)
        }
        
        if repo.forks != nil {
            forksLabel.text = String(repo.forks)
        }
        
        if repo.repoDescription != nil {
            descriptionLabel.text = repo.repoDescription
        }
        
        if repo.ownerAvatarURL != nil{
            let imageURL = NSURL(string: repo.ownerAvatarURL!)
            avatarImageView.setImageWithURL(imageURL!)
        }

    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
