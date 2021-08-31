//
//  HomeVC.swift
//  iTunes-Books
//
//  Created by Ramazan Ocak on 26.08.2021.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNibs()
        RequestManager.shared.getMovieDetail(with: "tt3896198")
        
    }
    
    func registerNibs() {
        let nib = UINib(nibName: "HomeMainTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "HomeMainTableViewCell")
    }
}

// MARK: Tableview Delegate and DataSource

extension HomeVC: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeMainTableViewCell", for: indexPath) as! HomeMainTableViewCell
        //TODO: CollectionView'ı entegre et 
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
}
