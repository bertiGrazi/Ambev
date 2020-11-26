//
//    Ambev.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Ambev : NSObject, NSCoding{

    var desconto : Bool!
    var descricao : String!
    var imagem : String!
    var preco : Float!
    var produto : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        desconto = dictionary["desconto"] as? Bool
        descricao = dictionary["descricao"] as? String
        imagem = dictionary["imagem"] as? String
        preco = dictionary["preco"] as? Float
        produto = dictionary["produto"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if desconto != nil{
            dictionary["desconto"] = desconto
        }
        if descricao != nil{
            dictionary["descricao"] = descricao
        }
        if imagem != nil{
            dictionary["imagem"] = imagem
        }
        if preco != nil{
            dictionary["preco"] = preco
        }
        if produto != nil{
            dictionary["produto"] = produto
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         desconto = aDecoder.decodeObject(forKey: "desconto") as? Bool
         descricao = aDecoder.decodeObject(forKey: "descricao") as? String
         imagem = aDecoder.decodeObject(forKey: "imagem") as? String
         preco = aDecoder.decodeObject(forKey: "preco") as? Float
         produto = aDecoder.decodeObject(forKey: "produto") as? String

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if desconto != nil{
            aCoder.encode(desconto, forKey: "desconto")
        }
        if descricao != nil{
            aCoder.encode(descricao, forKey: "descricao")
        }
        if imagem != nil{
            aCoder.encode(imagem, forKey: "imagem")
        }
        if preco != nil{
            aCoder.encode(preco, forKey: "preco")
        }
        if produto != nil{
            aCoder.encode(produto, forKey: "produto")
        }

    }

}
