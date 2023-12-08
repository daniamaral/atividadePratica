//
//  TelaVermelhaView.swift
//  atividadePratica
//
//  Created by IFB-BIOTIC-17 on 08/12/23.
//

import Foundation
import UIKit

class TelaVermelhaView: ViewDefault {
    
//MARK: - Clousures:
var onVerdeTap: (() -> Void)?
var onAzulTap: (() -> Void)?



//cria a função com as propriadades da label no login
var telaLabel = LabelDefault(text: "Você está na Tela Vermelha", fontName: "SFProDisplay-Light", fontSize: 18)
   
//cria a função com as propriadades da butao no logor
var buttonTelaAzul = ButtonDefault(button: "Ir para a Tela Azul", color: "buttonBackGroundColorBlue")

//cria a função com as propriadades do botão registrar
var buttonTelaVerde = ButtonDefault(button: "Voltar para a Tela Verde", color: "buttonBackGroundColorGreen")


override func setupVisualElements() {
    super.setupVisualElements()
    self.backgroundColor = UIColor(red: 100, green: 0, blue: 0, alpha: 1)
    self.addSubview(telaLabel)
    self.addSubview(buttonTelaAzul)
    self.addSubview(buttonTelaVerde)
    
    buttonTelaVerde.addTarget(self, action: #selector(verdeTap), for: .touchUpInside)
    buttonTelaAzul.addTarget(self, action: #selector(azulTap), for: .touchUpInside)
    
    
    NSLayoutConstraint.activate([
    
        //imageLogin.widthAnchor.constraint(equalToConstant: 274.99),
        telaLabel.heightAnchor.constraint(equalToConstant: 82.64),
        telaLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 300),
        telaLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 105),
        telaLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
        
        
        buttonTelaVerde.widthAnchor.constraint(equalToConstant: 374),
        buttonTelaVerde.heightAnchor.constraint(equalToConstant: 60),
        buttonTelaVerde.topAnchor.constraint(equalTo: telaLabel.bottomAnchor, constant: 200),
        buttonTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        buttonTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),

        
        buttonTelaAzul.widthAnchor.constraint(equalToConstant: 374),
        buttonTelaAzul.heightAnchor.constraint(equalToConstant: 60),
        buttonTelaAzul.topAnchor.constraint(equalTo: buttonTelaVerde.bottomAnchor, constant: 25),
        buttonTelaAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        buttonTelaAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        
        
    
    ])
}

@objc private func verdeTap(){
    onVerdeTap?()
}

@objc private func azulTap(){
    onAzulTap?()
}


}
