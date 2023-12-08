//
//  TelaVerdeView.swift
//  atividadePratica
//
//  Created by IFB-BIOTIC-17 on 08/12/23.
//

import Foundation
import UIKit

class TelaVerdeView: ViewDefault {
    
//MARK: - Clousures:
var onVermelhoTap: (() -> Void)?
var onAzulTap: (() -> Void)?



//cria a função com as propriadades da label no login
var telaLabel = LabelDefault(text: "Você está na Tela Verde", fontName: "SFProDisplay-Light", fontSize: 18)
   
//cria a função com as propriadades da butao no logor
var buttonTelaAzul = ButtonDefault(button: "Voltar para a Tela Azul", color: "buttonBackGroundColorBlue")

//cria a função com as propriadades do botão registrar
var buttonTelaVermelha = ButtonDefault(button: "Ir para a Tela Vermelha", color: "buttonBackGroundColorRed")


override func setupVisualElements() {
    super.setupVisualElements()
    self.backgroundColor = .buttonBackGroundColorGreen
    self.addSubview(telaLabel)
    self.addSubview(buttonTelaAzul)
    self.addSubview(buttonTelaVermelha)
    
    buttonTelaVermelha.addTarget(self, action: #selector(vermelhoTap), for: .touchUpInside)
    buttonTelaAzul.addTarget(self, action: #selector(azulTap), for: .touchUpInside)
    
    
    NSLayoutConstraint.activate([
    
        
        telaLabel.heightAnchor.constraint(equalToConstant: 82.64),
        telaLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 300),
        telaLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 105),
        telaLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
        
        
        buttonTelaVermelha.widthAnchor.constraint(equalToConstant: 374),
        buttonTelaVermelha.heightAnchor.constraint(equalToConstant: 60),
        buttonTelaVermelha.topAnchor.constraint(equalTo: telaLabel.bottomAnchor, constant: 200),
        buttonTelaVermelha.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        buttonTelaVermelha.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        
        buttonTelaAzul.widthAnchor.constraint(equalToConstant: 374),
        buttonTelaAzul.heightAnchor.constraint(equalToConstant: 60),
        buttonTelaAzul.topAnchor.constraint(equalTo: buttonTelaVermelha.bottomAnchor, constant: 25),
        buttonTelaAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        buttonTelaAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        
        
    
    ])
}

@objc private func vermelhoTap(){
    onVermelhoTap?()
}

@objc private func azulTap(){
    onAzulTap?()
}


}
