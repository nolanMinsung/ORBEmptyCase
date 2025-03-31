// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

import SnapKit


public protocol ORBEmptyCaseStyle: UIView {
    func showEmptyPlaceholder(view: some ORBEmptyCaseViewType)
    func removeEmptyPlaceholder()
}

extension ORBEmptyCaseStyle {
    
    func showEmptyPlaceholder(view: some ORBEmptyCaseViewType) {
        addSubview(view)
        view.snp.makeConstraints { make in
            if let scrollView = self as? UIScrollView {
                make.edges.equalTo(scrollView.frameLayoutGuide)
            } else {
                make.edges.equalToSuperview()
            }
        }
        layoutIfNeeded()
    }
    
    func removeEmptyPlaceholder() {
        subviews.forEach { view in
            if view is ORBEmptyCaseViewType {
                view.removeFromSuperview()
            }
        }
    }
    
}

public protocol ORBEmptyCaseViewType: UIView {
    var emptyCaseMessage: String { get }
    var emptyCaseImage: UIImage { get }
}
