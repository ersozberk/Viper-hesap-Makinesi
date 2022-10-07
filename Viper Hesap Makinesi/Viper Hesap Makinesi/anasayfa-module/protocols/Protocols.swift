//
//  Protocols.swift
//  Viper Hesap Makinesi
//
//  Created by Berk Ersoz on 7.10.2022.
//

import Foundation

//Ana Protocoller
protocol PresenterToInteractorProtocol {
    var presenter:InteractorToPresenterProtocol? {get set}
    
    func topla(sayi1:String,sayi2:String)
    func carp(sayi1:String,sayi2:String)
    func modAl(sayi1:String,sayi2:String)
    func fark(sayi1:String,sayi2:String)
    func bolum(sayi1:String,sayi2:String)
}

protocol ViewToPresenterProtocol {
    var interactor:PresenterToInteractorProtocol? {get set}
    var view:PresenterToViewProtocol? {get set}
    
    func toplamaYap(sayi1:String,sayi2:String)
    func carpmaYap(sayi1:String,sayi2:String)
    func modunuAl(sayi1:String,sayi2:String)
    func farkiAl(sayi1:String,sayi2:String)
    func bolumuYap(sayi1:String,sayi2:String)
    
}

//Taşıyıcı Protocoller
protocol InteractorToPresenterProtocol {
    func presenteraVeriGonder(sonuc:String)
}

protocol PresenterToViewProtocol {
    func vieweVeriGonder(sonuc:String)
}

protocol PresenterToRouterProtocol {
    static func createModule(ref:ViewController)
}

