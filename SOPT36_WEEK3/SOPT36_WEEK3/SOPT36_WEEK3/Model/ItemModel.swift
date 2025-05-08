//
//  ItemModel.swift
//  SOPT36_WEEK3
//
//  Created by LEESOOYONG on 4/26/25.
//

import UIKit

struct ItemModel {
    let itemImg: UIImage
    let name: String
    let price: String
    var heartIsSelected: Bool
}

extension ItemModel {
    static func dummy() -> [ItemModel] {
        return [
            ItemModel(itemImg: .image124, name: "퉁퉁퉁사후르", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .image124, name: "오쏘몰", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .image126, name: "애플워치", price: "5000", heartIsSelected: true),
            ItemModel(itemImg: .image127, name: "가방", price: "5000", heartIsSelected: true),
            ItemModel(itemImg: .image128, name: "헤드셋", price: "5000", heartIsSelected: true),
            ItemModel(itemImg: .image129, name: "틴트", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .image130, name: "카메라", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .image131, name: "로션", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .rectangle2, name: "락스", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .rectangle3, name: "가방", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .rectangle4, name: "헤드셋", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .rectangle5, name: "틴트", price: "5000", heartIsSelected: false)
        ]
    }
}
