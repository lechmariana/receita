//
//  ReceitaViewControler.swift
//  ReceitaApp
//
//  Created by Carlos Rafael Hasselmann Forbeck on 30/04/19.
//  Copyright © 2019 APPLE DEVELOPER ACADEMY. All rights reserved.
//

import UIKit

class ReceitaViewControler: UIViewController {

    @IBOutlet weak var receitaImageView: UIImageView!
    @IBOutlet weak var NomeLaber: UILabel!
    @IBOutlet weak var ingredienteTextView: UITextView!
    @IBOutlet weak var quantidadeLaber: UIStepper!
    @IBOutlet weak var qtdLabel: UILabel!
    
    
    let receitas = [Receita(nome: "Cafe Com Leite", ingredientes: ["cafe", "leite"], quantidade: [50, 100], medida: ["ml", "ml"]),
                    Receita(nome: "Nescau", ingredientes: ["Nescau, Leite"], quantidade: [2, 200], medida: ["Colheres, ml"])
    ]
    
    var quantidade = 1
    var receitaSelecionada = 0
    
    func refreshInterface() {
        let receita = receitas[receitaSelecionada]
        NomeLaber.text = receita.nome
        
        if quantidade == 1 {
            qtdLabel.text = "1 porção"
        } else {
            qtdLabel.text = "\(quantidade) porções"
        }
    }
    
    //toda vez que a interface é acessada chama
    override func viewWillAppear(_ animated: Bool) {
        refreshInterface()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
