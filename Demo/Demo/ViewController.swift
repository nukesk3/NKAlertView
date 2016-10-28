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
        
        let alert = NKAlertView(
            title: "#Dark",
            description: "This is a more descriptive info text.",
            image: UIImage(named: "animals_1.png"),
            style: .dark)
        
        alert.addAction(NKAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alert.addAction(NKAlertAction(title: "OK", style: .default, action: { () in
            print("OK")
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showAlertLight(_ sender: AnyObject) {
        
        let alert = NKAlertView(
            title: "#Light",
            description: "This is a more descriptive info text.",
            image: UIImage(named: "animals_2.png"),
            style: .light)
        
        alert.addAction(NKAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alert.addAction(NKAlertAction(title: "OK", style: .default, action: { () in
            print("OK")
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showAlertExtraLight(_ sender: AnyObject) {
        
        let alert = NKAlertView(
            title: "#ExtraLight",
            description: "This is a more descriptive info text.",
            image: UIImage(named: "animals_3.png"),
            style: .extralight)
        
        alert.addAction(NKAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alert.addAction(NKAlertAction(title: "OK", style: .default, action: { () in
            print("OK")
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showAlertNone(_ sender: AnyObject) {
        
        let alert = NKAlertView(
            title: "#None",
            description: "This is a more descriptive info text.",
            image: UIImage(named: "animals_4.png"),
            style: .none)
        
        alert.addAction(NKAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alert.addAction(NKAlertAction(title: "OK", style: .default, action: { () in
            print("OK")
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showAlert3Buttons(_ sender: AnyObject) {
        
        let alert = NKAlertView(
            title: "#3Buttons",
            description: "This is a more descriptive info text.",
            image: UIImage(named: "animals_5.png"),
            style: .dark)
        
        alert.addAction(NKAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alert.addAction(NKAlertAction(title: "No Thanks", style: .cancel, action: { () in
            print("No thanks")
        }))
        
        alert.addAction(NKAlertAction(title: "OK", style: .default, action: { () in
            print("OK")
        }))
        
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func showNotImage(_ sender: AnyObject) {
        let alert = NKAlertView(
            title: "#Info",
            description: "This is a more descriptive info text.",
            image: nil,
            style: .dark)
        
        alert.addAction(NKAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alert.addAction(NKAlertAction(title: "OK", style: .default, action: { () in
            print("OK")
        }))
        
        self.present(alert, animated: true, completion: nil)
    }

}

