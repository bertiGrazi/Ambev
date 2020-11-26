//
//  AmbevTableViewCell.swift
//  Ambev
//
//  Created by Grazi Berti on 26/11/20.
//

import UIKit

class AmbevTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewCerveja: UIImageView!
    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelValor: UILabel!
    @IBOutlet weak var labelMedida: UILabel!
    
    func setup(cervejas: Ambev) {
        labelNome.text = cervejas.produto
        labelValor.text = cervejas.descricao
        labelValor.text = "\(String(describing: cervejas.preco))"
        imageView?.image = UIImage(named: "\(String(describing: cervejas.imagem))")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
