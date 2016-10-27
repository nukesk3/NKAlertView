//
//  ViewController.swift
//  Demo
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showAlertDark(_ sender: AnyObject) {
        
        let alertVC = NKAlertView(
            title: "#Dark",
            description: "This is a more descriptive info text.",
            image: UIImage(named: "animals_1.png"),
            style: .dark)
        
        alertVC.addAction(NKAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alertVC.addAction(NKAlertAction(title: "OK", style: .default, action: { () in
            print("OK")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func showAlertLight(_ sender: AnyObject) {
        
        let alertVC = NKAlertView(
            title: "#Light",
            description: "This is a more descriptive info text.",
            image: UIImage(named: "animals_2.png"),
            style: .light)
        
        alertVC.addAction(NKAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alertVC.addAction(NKAlertAction(title: "OK", style: .default, action: { () in
            print("OK")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func showAlertExtraLight(_ sender: AnyObject) {
        
        let alertVC = NKAlertView(
            title: "#ExtraLight",
            description: "This is a more descriptive info text.",
            image: UIImage(named: "animals_3.png"),
            style: .extralight)
        
        alertVC.addAction(NKAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alertVC.addAction(NKAlertAction(title: "OK", style: .default, action: { () in
            print("OK")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func showAlertNone(_ sender: AnyObject) {
        
        let alertVC = NKAlertView(
            title: "#None",
            description: "This is a more descriptive info text.",
            image: UIImage(named: "animals_4.png"),
            style: .none)
        
        alertVC.addAction(NKAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alertVC.addAction(NKAlertAction(title: "OK", style: .default, action: { () in
            print("OK")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func showAlert3Buttons(_ sender: AnyObject) {
        
        let alertVC = NKAlertView(
            title: "#3Buttons",
            description: "This is a more descriptive info text.",
            image: UIImage(named: "animals_5.png"),
            style: .dark)
        
        alertVC.addAction(NKAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alertVC.addAction(NKAlertAction(title: "No Thanks", style: .cancel, action: { () in
            print("No thanks")
        }))
        
        alertVC.addAction(NKAlertAction(title: "OK", style: .default, action: { () in
            print("OK")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }


}

