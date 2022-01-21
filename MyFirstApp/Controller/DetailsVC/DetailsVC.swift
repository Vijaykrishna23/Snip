//
//  PostDetailVC.swift
//  MyFirstApp
//
//  Created by cloud on 19/01/22.
//

import UIKit

class DetailsVC: UIViewController {
    
    var postModel: PostModel?

    @IBOutlet weak var useridLabel: UILabel!
    
    
    @IBOutlet weak var idLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var bodyLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        useridLabel.text = "User Id -\(postModel?.userId ?? 0)"
        idLabel.text = "Post Id -\(postModel?.id ?? 0)"
        
        titleLabel.text = "Title -\(postModel?.title ?? "")"
        
        bodyLabel.text = "Body -\(postModel?.body ?? "")"

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
