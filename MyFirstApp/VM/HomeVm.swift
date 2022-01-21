//
//  HomeVm.swift
//  MyFirstApp
//
//  Created by cloud on 20/01/22.
//

import UIKit

class HomeVM {

    var postList: [PostModel?] = []
    
    func getPost(completionHandler:@escaping([PostModel]) -> ()) {
        
        let objNetworking = Networking()
        
        objNetworking.getPostFromServer(serverUrl: Server.kPost.rawValue) { objModel in
            
            self.postList = objModel
            completionHandler(objModel)
        }
        
    }
    
    func getPostFor(row:Int) -> PostModel? {
        if postList.count > 0 {
            return postList[row]
        }
        
        return nil
    }
    
    func getTotalPost() -> Int {
        return postList.count
    }
}
