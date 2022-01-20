//
//  HomeVC.swift
//  MyFirstApp
//
//  Created by cloud on 18/01/22.
//

import UIKit

class HomeVC: UIViewController {
    
    var postList:[PostModel?] = []

    @IBOutlet weak var objTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let objNetworking = Networking()
        
        objNetworking.getPostFromServer(serverUrl: Server.kPost.rawValue) { objModel in
            
            self.postList = objModel
            
            DispatchQueue.main.async {
                self.objTableView.reloadData()
            }
        }
        
        
        
    }
    

  

}

extension HomeVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let objPostCell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieCell
        
        let post = postList[indexPath.row]
        
        objPostCell?.titleLabel.text = post?.title
        
        return objPostCell!
    }
    
    
}


struct Movie {
    
    var id:Int?
    var title:String?
}
