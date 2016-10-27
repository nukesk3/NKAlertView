//
//  NKAlertView.swift
//  NKAlertView
//

import UIKit

@objc public enum NKAlertViewMaskStyle : Int {
    case none
    case dark
    case light
    case extralight
}

@objc open class NKAlertView: UIViewController {

    // MARK: Properties
    
    @IBOutlet weak open var alertMaskBackground: UIVisualEffectView!
    @IBOutlet weak open var alertView: UIView!
    @IBOutlet weak open var headerView: UIView!
    @IBOutlet weak open var headerViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak open var alertImage: UIImageView!
    @IBOutlet weak open var alertTitle: UILabel!
    @IBOutlet weak open var alertDescription: UILabel!
    @IBOutlet weak open var alertActionStackView: UIStackView!
    @IBOutlet weak open var alertStackViewHeightConstraint: NSLayoutConstraint!
    open var ALERT_STACK_VIEW_HEIGHT : CGFloat = UIScreen.main.bounds.height < 568.0 ? 40 : 62
    var animator : UIDynamicAnimator?
    
    open var gravityDismissAnimation = true
    
    
    // MARK: - Initialiser
    
    @objc public convenience init(title: String, description: String, image: UIImage?, style: NKAlertViewMaskStyle) {
        self.init()
        let nib = loadNibAlertController()
        
        if nib != nil{
            self.view = nib![0] as! UIView
        }
        
        self.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        self.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        
        alertView.layer.cornerRadius = 5
        (image != nil) ? (alertImage.image = image) : (headerViewHeightConstraint.constant = 0)
        alertTitle.text = title
        alertDescription.text = description
        
        setShadowAlertView()
        
        setBackgroundEffect(style)
    }
    
    
    // MARK: - Actions
    
    @objc open func addAction(_ alertAction: NKAlertAction) {
        alertActionStackView.addArrangedSubview(alertAction)
        
        if alertActionStackView.arrangedSubviews.count > 2 {
            alertStackViewHeightConstraint.constant = ALERT_STACK_VIEW_HEIGHT * CGFloat(alertActionStackView.arrangedSubviews.count)
            alertActionStackView.axis = .vertical
        } else{
            alertStackViewHeightConstraint.constant = ALERT_STACK_VIEW_HEIGHT
            alertActionStackView.axis = .horizontal
        }
        
        alertAction.addTarget(self, action: #selector(NKAlertView.dismissAlertController(_:)), for: .touchUpInside)
        
    }
    
    @objc fileprivate func dismissAlertController(_ sender: NKAlertAction) {
        self.animateDismissWithGravity(sender.actionStyle)
        self.dismiss(animated: true, completion: nil)
    }
    
    
    //MARK: - Customizations
    
    @objc fileprivate func setBackgroundEffect(_ style:NKAlertViewMaskStyle) {
        
        switch style {
        case .none:
            alertMaskBackground.removeFromSuperview()
            break
        case .dark:
            alertMaskBackground.effect = UIBlurEffect(style: .dark)
            break
        case .light:
            alertMaskBackground.effect = UIBlurEffect(style: .light)
            break
        case .extralight:
            alertMaskBackground.effect = UIBlurEffect(style: .extraLight)
            break
        }
        
    }
    
    @objc fileprivate func setShadowAlertView() {
        alertView.layer.masksToBounds = false
        alertView.layer.shadowOffset = CGSize(width: 0, height: 0)
        alertView.layer.shadowRadius = 8
        alertView.layer.shadowOpacity = 0.3
    }
    
    @objc fileprivate func loadNibAlertController() -> [AnyObject]? {
        let podBundle = Bundle(for: self.classForCoder)
        
        if let bundleURL = podBundle.url(forResource: "NKAlertView", withExtension: "bundle") {
            
            if let bundle = Bundle(url: bundleURL) {
                return bundle.loadNibNamed("NKAlertView", owner: self, options: nil) as [AnyObject]?
            } else {
                assertionFailure("Could not load the bundle")
            }
            
        } else if let nib = podBundle.loadNibNamed("NKAlertView", owner: self, options: nil) as [AnyObject]? {
            return nib
        } else {
            assertionFailure("Could not create a path to the bundle")
        }
        return nil
    }
    
    
    //MARK: - Animations
    
    @objc fileprivate func animateDismissWithGravity(_ style: NKAlertActionStyle) {
        
        if gravityDismissAnimation {
            
            if style == .cancel {
                
                animator = UIDynamicAnimator(referenceView: self.view)
                
                let gravityBehavior = UIGravityBehavior(items: [alertView])
                gravityBehavior.gravityDirection = CGVector(dx: 0, dy: 10)
                
                animator?.addBehavior(gravityBehavior)
                
                let itemBehavior = UIDynamicItemBehavior(items: [alertView])
                animator?.addBehavior(itemBehavior)
                
            }
        }
    }

}
