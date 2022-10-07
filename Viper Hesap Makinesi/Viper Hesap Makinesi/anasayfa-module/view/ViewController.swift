//
//  ViewController.swift
//  Viper Hesap Makinesi
//
//  Created by Berk Ersoz on 7.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelSonuc: UILabel!
   
    @IBOutlet weak var textFieldSayi1: UITextField!
    
    @IBOutlet weak var textFieldSayi2: UITextField!
    var presenterNesnesi:ViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSonuc.text = "0"
        Router.createModule(ref: self)
    }
    
    @IBAction func buttonToplam(_ sender: Any) {if let sayi1 = textFieldSayi1.text,let sayi2 = textFieldSayi2.text {
        presenterNesnesi?.toplamaYap(sayi1: sayi1, sayi2: sayi2)
    }
    }
    
    
    @IBAction func buttonFark(_ sender: Any) {if let sayi1 = textFieldSayi1.text,let sayi2 = textFieldSayi2.text {
        presenterNesnesi?.farkiAl(sayi1: sayi1, sayi2: sayi2)
    }
    }

    
    @IBAction func buttonBolum(_ sender: Any) { if let sayi1 = textFieldSayi1.text,let sayi2 = textFieldSayi2.text {
        presenterNesnesi?.bolumuYap(sayi1: sayi1, sayi2: sayi2)
    }
    }
    
    @IBAction func buttonCarpma(_ sender: Any) {
        if let sayi1 = textFieldSayi1.text,let sayi2 = textFieldSayi2.text {
            presenterNesnesi?.carpmaYap(sayi1: sayi1, sayi2: sayi2)
        }
    }
    
   
    
    @IBAction func buttonModAlma(_ sender: Any) {if let sayi1 = textFieldSayi1.text,let sayi2 = textFieldSayi2.text {
        presenterNesnesi?.modunuAl(sayi1: sayi1, sayi2: sayi2)
    }
    }
   
    
  
}










extension ViewController : PresenterToViewProtocol {
    func vieweVeriGonder(sonuc: String) {
        labelSonuc.text = sonuc
    }
}

