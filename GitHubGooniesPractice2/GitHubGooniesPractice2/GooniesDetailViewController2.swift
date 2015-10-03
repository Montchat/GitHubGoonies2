//
//  GooniesDetailViewController2.swift
//  GitHubGooniesPractice2
//
//  Created by Joe E. on 10/3/15.
//  Copyright © 2015 Joe E. All rights reserved.
//

import UIKit

class GooniesDetailViewController2: UIViewController {
    
    var userIndex: Int!

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var followingLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = users[userIndex]
        let followingCount = user["following"] as? Int ?? 0
        let followerCount = user["followers"] as? Int ?? 0
        let userLocation = user["location"] as? String ?? "Unknown"
        
        usernameLabel.text = user["login"] as? String
        
        if let avatarURL = user["avatar_url"] as? String {
            if let url = NSURL(string: avatarURL) {
                if let data = NSData(contentsOfURL: url) {
                    if let image = UIImage(data: data) {
                        avatarImageView.image = image
                    }
                    
                }
                
            }
            
        }
        
        
        usernameLabel.text = user["login"] as? String
        followingLabel.text = "Following: \(followingCount)"
        followersLabel.text = "Followers: \(followerCount)"
        nameLabel.text = "Joe"
        locationLabel.text = "Location: \(userLocation)"
        
        usernameLabel.sizeToFit()
        followersLabel.sizeToFit()
        followersLabel.sizeToFit()
        nameLabel.sizeToFit()
        locationLabel.sizeToFit()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
