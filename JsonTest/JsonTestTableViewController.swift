//
//  JsonTestTableViewController.swift
//  JsonTest
//
//  Created by Nathalia Melare on 14/08/19.
//  Copyright © 2019 Nathalia Melare. All rights reserved.
//

import Foundation
import UIKit

class JsonTestTableViewController: UITableViewController {
    
    var pessoa : [HandlerJson] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pessoa = Intern.getAllJson()
        
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pessoa.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if let cell1 = tableView.dequeueReusableCell(withIdentifier: "testeCell") as? TesteTableViewCell {
            cell1.animalImagem.image = UIImage (named: pessoa[indexPath.row].animal ?? "Erro" )
            cell1.nomePessoa.text = pessoa[indexPath.row].nome
            cell1.idadePessoa.text = pessoa[indexPath.row].idade
            
            return cell1
        }
        return UITableViewCell()
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}
