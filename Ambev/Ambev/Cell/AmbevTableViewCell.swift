//
//  AmbevTableViewCell.swift
//  Ambev
//
//  Created by Grazi Berti on 26/11/20.
//

import UIKit
import Kingfisher

class AmbevTableViewCell: UITableViewCell {
    
   var showImage: Ambev?
    
    //@IBOutlet weak var imageViewCerveja: UIImageView!
    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelValor: UILabel!
    @IBOutlet weak var labelMedida: UILabel!
    @IBOutlet weak var imageViewAmbev: UIImageView!
    
    func setup(cervejas: Ambev) {
        
        let imagem = (cervejas.imagem.flatMap({ (value) -> String in
            let url = URL(string: "\(value)")
            imageViewAmbev.kf.setImage(with: url)
            return "\(value)"
        }))
        labelNome.text = cervejas.produto
        labelMedida.text = cervejas.descricao
        labelValor.text = "\(String(describing: cervejas.preco))"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension String {
    var html2AttributedString: String? {
    guard let data = data(using: .utf8) else { return nil }
    do {
        return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil).string

    } catch let error as NSError {
        print(error.localizedDescription)
        return  nil
    }
  }
}
