//
//  NKAlertAction.swift
//  NKAlertView
//

import UIKit

@objc public enum NKAlertActionStyle : Int {
    case `default`
    case cancel
}


@objc open class NKAlertAction: UIButton {

    fileprivate var action: (() -> Void)?
    
    open var actionStyle : NKAlertActionStyle
    
    var separator = UIImageView()
    
    init() {
        self.actionStyle = .cancel
        super.init(frame: CGRect.zero)
    }
    
    @objc public convenience init(title: String?, style: NKAlertActionStyle, action: (() -> Void)? = nil) {
        self.init()
        
        self.action = action
        self.addTarget(self, action: #selector(NKAlertAction.tapped(_:)), for: .touchUpInside)
        
        self.setTitle(title, for: UIControlState())
        self.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 17)
        
        self.actionStyle = style
        style == .default ? (self.setTitleColor(UIColor(red: 191.0/255.0, green: 51.0/255.0, blue: 98.0/255.0, alpha: 1.0), for: UIControlState())) : (self.setTitleColor(UIColor.gray, for: UIControlState()))
        
        self.addSeparator()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tapped(_ sender: NKAlertActionStyle) {
        self.action?()
    }
    
    @objc fileprivate func addSeparator() {
        separator.backgroundColor = UIColor.lightGray.withAlphaComponent(0.2)
        self.addSubview(separator)
        
        // Autolayout separator
        separator.translatesAutoresizingMaskIntoConstraints = false
        separator.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        separator.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor, constant: 8).isActive = true
        separator.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor, constant: -8).isActive = true
        separator.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }

}
