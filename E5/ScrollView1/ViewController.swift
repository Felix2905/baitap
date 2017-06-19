//
//  ViewController.swift
//  ScrollView1
//
//  Created by DinhTien on 6/19/17.
//  Copyright © 2017 DinhTien. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
//    @IBOutlet weak var lblProfile: UILabel!
    @IBOutlet weak var lblChange: UILabel!
    @IBOutlet weak var lblRemove: UILabel!
    @IBOutlet weak var imgPhoto: UIImageView!
    @IBOutlet weak var vFName: ViewModelXib!
    @IBOutlet weak var vMName: ViewModelXib!
    @IBOutlet weak var vLName: ViewModelXib!
    @IBOutlet weak var vEmail: ViewModelXib!
    @IBOutlet weak var vPass: ViewModelXib!
    @IBOutlet weak var vConfirm: ViewModelXib!
    @IBOutlet weak var scrollView:UIScrollView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        vFName.lblInfo.text = "First Name"
        vMName.lblInfo.text = "Middle Name"
        vLName.lblInfo.text = "Last Name"
        vEmail.lblInfo.text = "Email"
        vPass.lblInfo.text = "Password"
        vConfirm.lblInfo.text = "Password Confirm"
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapView(gesture:)))
        view.addGestureRecognizer(tapGesture)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addObserver()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        removeObserver()    }
    func didTapView(gesture: UIGestureRecognizer){
        view.endEditing(true)
    }
    func addObserver(){
//                NotificationCenter.default.addObserver(forName: .UIKeyboardWillHide, object: nil, queue: nil){
//                    notification in self.keyboardWillShow(notification: notification)
//                }
//                NotificationCenter.default.addObserver(forName: .UIKeyboardWillShow, object: nil, queue: nil){
//                    notification in self.keyboardWillHide(notification: notification)
//                }
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: .UIKeyboardWillShow, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: .UIKeyboardWillHide, object: nil)
        
    }
    func removeObserver(){
        NotificationCenter.default.removeObserver(self)
    }
    func keyboardWillShow(notification: Notification){
        
        
        guard let frame = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else { return }
        
        //print(“scrollView.contentInset: \(scrollView.contentInset)“)
        let contentInset = UIEdgeInsets(top: 0, left: 0, bottom: frame.height, right: 0)
        scrollView.contentInset = contentInset
        
        //print(“scrollView.contentInset: \(scrollView.contentInset)“)
    }
    
    func keyboardWillHide(notification: Notification){
        scrollView.contentInset = UIEdgeInsets.zero
    }

    
    

    
}
