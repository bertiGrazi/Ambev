//
//  ViewController.swift
//  Ambev
//
//  Created by Grazi Berti on 26/11/20.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    @IBOutlet weak var tableViewChalengeAfroDev: UITableView!
    var arrayAmbev = [Ambev] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableViewChalengeAfroDev.delegate = self
        tableViewChalengeAfroDev.dataSource = self
        
        carregarAPI()
        
    }
    
    
    func atualizandoTableView(array: [Ambev]) {
        self.arrayAmbev = array
        self.tableViewChalengeAfroDev.reloadData()
    }
    
    func carregarAPI() {
        AF.request("https://private-8f4dda-testeabi.apiary-mock.com/produtos").responseJSON { response in
            if let arrayDictionary = response.value as? [[String: Any]] {
                
                var novoArray = [Ambev] ()
                
                for item in arrayDictionary {
                    let produto = Ambev(fromDictionary: item)
                    
                        
                    novoArray.append(produto)
                    print(produto)
                    
                    
                }
                
                self.atualizandoTableView(array: novoArray)
            }
        }
    }
    
}
extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAmbev.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AmbevTableViewCell", for: indexPath) as! AmbevTableViewCell
        cell.setup(cervejas: arrayAmbev[indexPath.row])
        return cell
    }
    
    
}
