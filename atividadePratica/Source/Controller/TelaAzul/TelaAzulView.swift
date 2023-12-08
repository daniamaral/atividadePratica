//
//  TelaAzulView.swift
//  atividadePratica
//
//  Created by IFB-BIOTIC-17 on 08/12/23.
//

import Foundation
import UIKit

class TelaAzulView: ViewDefault {
    
//MARK: - Clousures:

var onVerdeTap: (() -> Void)?

//cria a função com as propriadades da label no login
var telaLabel = LabelDefault(text: "Você está na Tela Azul", fontName: "SFProDisplay-Light", fontSize: 18)
   
//cria a função com as propriadades da butao no logor
var buttonTelaVerde = ButtonDefault(button: "Ir para a Tela Verde", color: "buttonBackGroundColorGreen")



override func setupVisualElements() {
    super.setupVisualElements()
    self.backgroundColor = .buttonBackGroundColorBlue
    self.addSubview(telaLabel)
    self.addSubview(buttonTelaVerde)
   
    
    buttonTelaVerde.addTarget(self, action: #selector(verdeTap), for: .touchUpInside)

    
    NSLayoutConstraint.activate([
    
        //imageLogin.widthAnchor.constraint(equalToConstant: 274.99),
        telaLabel.heightAnchor.constraint(equalToConstant: 82.64),
        telaLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 300),
        telaLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 115),
        telaLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -115),
        
        
        buttonTelaVerde.widthAnchor.constraint(equalToConstant: 374),
        buttonTelaVerde.heightAnchor.constraint(equalToConstant: 60),
        buttonTelaVerde.topAnchor.constraint(equalTo: telaLabel.bottomAnchor, constant: 200),
        buttonTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        buttonTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),

    
    ])
}


@objc private func verdeTap(){
    onVerdeTap?()
}


}
