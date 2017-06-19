//
//  ViewModelXib.swift
//  ScrollView1
//
//  Created by DinhTien on 6/19/17.
//  Copyright © 2017 DinhTien. All rights reserved.
//

import UIKit

class ViewModelXib: UIView {
    
    @IBOutlet weak var lblInfo: UILabel!
    @IBOutlet weak var tfInput: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
    }
    
    func setUpView(){
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "ViewModel", bundle: bundle)
        let view = nib.instantiate(withOwner: self , options: nil)[0] as! UIView
        view.frame = bounds
        addSubview(view)
    }
}
