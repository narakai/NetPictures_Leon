//
//  CustomCell.swift
//  NetPictures_Leon
//
//  Created by lai leon on 2017/12/20.
//  Copyright © 2017 clem. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    let nickname: UILabel = {
        let nickname = UILabel()
        nickname.frame = CGRect(x: 60, y: 10, width: YHWidth - 60, height: 20)
        nickname.font = UIFont.systemFont(ofSize: 18)
        nickname.textColor = .black
        return nickname
    }()

    let detail: UILabel = {
        let detail = UILabel()
        detail.frame = CGRect(x: 60, y: 30, width: YHWidth - 60, height: 20)
        detail.font = UIFont.systemFont(ofSize: 12)
        detail.adjustsFontSizeToFitWidth = true
        detail.textColor = .gray
        return detail
    }()

    let headerImage: UIImageView = {
        let headerImage = UIImageView()
        headerImage.frame = CGRect(x: 10, y: 10, width: 40, height: 40)
        headerImage.contentMode = .scaleAspectFill
        headerImage.layer.cornerRadius = 20
        headerImage.clipsToBounds = true
        return headerImage
    }()

    let showImage: UIImageView = {
        let showImage = UIImageView()
        showImage.frame = CGRect(x: 10, y: 90, width: YHWidth - 20, height: YHWidth - 20)
        showImage.contentMode = .scaleAspectFill
        showImage.clipsToBounds = true
        return showImage
    }()

    let title: UILabel = {
        let title = UILabel()
        title.frame = CGRect(x: 10, y: 60, width: YHWidth - 20, height: 20)
        title.font = UIFont.systemFont(ofSize: 18)
        title.adjustsFontSizeToFitWidth = true
        title.textColor = .black
        return title
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(headerImage)
        addSubview(nickname)
        addSubview(detail)
        addSubview(title)
        addSubview(showImage)
    }

    func buildUI(data: MMData) {
        headerImage.setImageWith(URL(string: "\(HeadImage)\(data.headerUrl)")!, placeholderImage: UIImage(named: "placeholder"))
        nickname.text = data.nickname
        detail.text = "生日：\(data.birthday) 三围：\(data.bwh) 身高：\(data.height) 体重：\(data.weight)"
        title.text = "\(data.title)"
        showImage.setImageWith(URL(string: "\(HeadImage)\(data.headerUrl)")!, placeholderImage: UIImage(named: "placeholder"))
    }

}
