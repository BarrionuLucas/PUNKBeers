//
//  DetalheViewController.swift
//  PUNKBeers
//
//  Created by user903432 on 7/9/17.
//  Copyright © 2017 user903432. All rights reserved.
//

import Foundation
import UIKit

class DetalheViewController: UIViewController{
    
    @IBOutlet weak var detalheImagem: UIImageView!
    @IBOutlet weak var detalheAmargor: UILabel!
    @IBOutlet weak var detalheTeor: UILabel!
    @IBOutlet weak var detalheDesc: UILabel!
    @IBOutlet weak var detalheTagline: UILabel!
    @IBOutlet weak var detalheNome: UILabel!
    var beer: Beer!
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detalheNome?.text = beer.nome
        detalheDesc?.text = beer.desc
        detalheTeor?.text = "Teor Alcoolico: " + String(beer.teorAlcool)
        detalheAmargor?.text = "Escala Amargor: " + beer.escalaAmargor
        detalheTagline?.text = beer.tagline
        
        if let url = NSURL(string: beer.imagem) {
            if let data = NSData(contentsOf: url as URL) {
                detalheImagem?.image = UIImage(data: data as Data)
            }
        }
        
        
        
        
        
    }


}

