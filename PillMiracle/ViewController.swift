//
//  ViewController.swift
//  PillMiracle
//
//  Created by Glorymar Figueroa on 1/27/17.
//  Copyright © 2017 Joel Diaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    var states = ["Alabama", "Alaska", "California","Nevada", "Florida","Washingtong D.C."]
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryText: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipText: UITextField!
    @IBOutlet weak var success: UIImageView!
    @IBOutlet weak var buyNow: UIButton!
    @IBOutlet weak var pill: UIImageView!
    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var pillPrice: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var street: UILabel!
    @IBOutlet weak var stretText: UITextField!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var state: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipLabel.isHidden = true
        zipText.isHidden = true
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        
        countryLabel.isHidden = false
        countryText.isHidden = false
        zipLabel.isHidden = false
        zipText.isHidden = false
    }

    @IBAction func buyBtnpressed(_ sender: Any) {
        buyNow.isHidden = true
        
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipLabel.isHidden = true
        zipText.isHidden = true
        pill.isHidden = true
        pillLabel.isHidden = true
        pillPrice.isHidden = true
        divider.isHidden = true
        name.isHidden = true
        nameText.isHidden = true
        street.isHidden = true
        stretText.isHidden = true
        city.isHidden = true
        cityText.isHidden = true
        state.isHidden = true
        statePickerBtn.isHidden = true
        
        success.isHidden = false
        
    }
}

