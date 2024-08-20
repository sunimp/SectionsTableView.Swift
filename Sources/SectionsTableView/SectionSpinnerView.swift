//
//  SectionSpinnerView.swift
//  SectionsTableView
//
//  Created by Sun on 2024/8/20.
//

import UIKit

import UIExtensions
import SnapKit

public class SectionSpinnerView: UITableViewHeaderFooterView {

    private let activityIndicator = UIActivityIndicatorView()

    override public init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(activityIndicator)
        activityIndicator.snp.makeConstraints { maker in
            maker.top.bottom.equalToSuperview().inset(LayoutHelper.shared.marginContentInset)
            maker.centerX.equalToSuperview()
        }
    }
    
    @available(*, unavailable)
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func bind() {
        activityIndicator.startAnimating()
    }

}
