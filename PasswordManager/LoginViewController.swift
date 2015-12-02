//
//  ViewController.swift
//  PasswordManager
//
//  Created by touzi on 15/11/27.
//  Copyright © 2015年 touzi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var MainView: UIView!
    
    @IBOutlet weak var NumberOne: UIButton!
    @IBOutlet weak var NumberTwo: UIButton!
    @IBOutlet weak var NumberThree: UIButton!
    @IBOutlet weak var NumberFour: UIButton!
    @IBOutlet weak var NumberFive: UIButton!
    @IBOutlet weak var NumberSix: UIButton!
    @IBOutlet weak var NumberSeven: UIButton!
    @IBOutlet weak var NumberEight: UIButton!
    @IBOutlet weak var NumberNine: UIButton!
    @IBOutlet weak var NumberZero: UIButton!
    
    
    @IBOutlet weak var DropOne: UIImageView!
    @IBOutlet weak var DropTwo: UIImageView!
    @IBOutlet weak var DropThree: UIImageView!
    @IBOutlet weak var DropFour: UIImageView!
    
    
    //计数，输入的位数
    //var counts: Int = 0
    var inputPWD = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initButton()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //手指松开事件
    @IBAction func clickButton(sender: UIButton) {
        if(inputPWD.characters.count == 4) {
            if(inputPWD == "2222") {
                print("->Done")
                let sb = UIStoryboard(name:"Main", bundle: nil)
                //let vc = sb.instantiateViewControllerWithIdentifier("CategoryViewController") as! CategoryViewController
                //self.presentViewController(vc, animated: true, completion: nil)
                //加在TabBar
                //let sb = UIStoryboard(name:"Main", bundle: nil)
                let vn = sb.instantiateViewControllerWithIdentifier("TabBarController") as! UITabBarController
                self.presentViewController(vn, animated: true, completion: nil)
                
            }else {
                //密码不匹配，drop圆点变红
                DropOne.image = UIImage(named:"Drop Red")
                DropTwo.image = UIImage(named:"Drop Red")
                DropThree.image = UIImage(named:"Drop Red")
                DropFour.image = UIImage(named:"Drop Red")
                
                //圆点全部复原，并且重置计数器
                DropOne.image = UIImage(named:"Drop")
                DropTwo.image = UIImage(named:"Drop")
                DropThree.image = UIImage(named:"Drop")
                DropFour.image = UIImage(named:"Drop")
                inputPWD = ""
            }
        }
    }
    

    //删除按钮
    @IBAction func deleteNumber(sender: AnyObject) {
        if(inputPWD.characters.count == 1) {
            DropOne.image = UIImage(named: "Drop")
        }else if(inputPWD.characters.count == 2) {
            DropTwo.image = UIImage(named: "Drop")
        }else if(inputPWD.characters.count == 3) {
            DropThree.image = UIImage(named: "Drop")
        }else if(inputPWD.characters.count == 4) {
            DropFour.image = UIImage(named: "Drop")
        }
        if(inputPWD.characters.count != 0) {
           inputPWD = self.StrSubstringWithRange(0, endNumber: inputPWD)
        }
    }
    
    func StrSubstringWithRange(startNumber: Int , endNumber: String) -> String {
        //从第几位开始截取，截取的长度
        let r:NSRange = NSMakeRange(startNumber,endNumber.characters.count - 1)
        let nsString: NSString = endNumber
        return nsString.substringWithRange(r)
    }
    //手指按下按钮事件
    @IBAction func dragOutside(sender: UIButton) {
        if(inputPWD.characters.count < 4) {
            //获得输入的主密码
            if(sender == NumberOne) {
                inputPWD += "1"
            }else if(sender == NumberTwo) {
                inputPWD += "2"
            }else if(sender == NumberThree) {
                inputPWD += "3"
            }else if(sender == NumberFour) {
                inputPWD += "4"
            }else if(sender == NumberFive) {
                inputPWD += "5"
            }else if(sender == NumberSix) {
                inputPWD += "6"
            }else if(sender == NumberSeven) {
                inputPWD += "7"
            }else if(sender == NumberEight) {
                inputPWD += "8"
            }else if(sender == NumberNine) {
                inputPWD += "9"
            }else if(sender == NumberZero) {
                inputPWD += "0"
            }
            
            //输入一次改变一次图片的状态
            //当输入满4位的时候开始于对比
            if(inputPWD.characters.count == 1) {
                DropOne.image = UIImage(named:"Drops")
            }else if(inputPWD.characters.count == 2) {
                DropTwo.image = UIImage(named:"Drops")
            }else if(inputPWD.characters.count == 3) {
                DropThree.image = UIImage(named:"Drops")
            }else if(inputPWD.characters.count == 4) {
                DropFour.image = UIImage(named:"Drops")
            }
        }
    }
    
    //初始化button按钮的状态
    func initButton() {
        NumberOne.adjustsImageWhenHighlighted = false
        NumberOne.setBackgroundImage(UIImage(named: "Number 1s.png"), forState: UIControlState.Highlighted)
        NumberTwo.adjustsImageWhenHighlighted = false
        NumberTwo.setBackgroundImage(UIImage(named: "Number 2s.png"), forState: UIControlState.Highlighted)
        NumberThree.adjustsImageWhenHighlighted = false
        NumberThree.setBackgroundImage(UIImage(named: "Number 3s.png"), forState: UIControlState.Highlighted)
        NumberFour.adjustsImageWhenHighlighted = false
        NumberFour.setBackgroundImage(UIImage(named: "Number 4s.png"), forState: UIControlState.Highlighted)
        NumberFive.adjustsImageWhenHighlighted = false
        NumberFive.setBackgroundImage(UIImage(named: "Number 5s.png"), forState: UIControlState.Highlighted)
        NumberSix.adjustsImageWhenHighlighted = false
        NumberSix.setBackgroundImage(UIImage(named: "Number 6s.png"), forState: UIControlState.Highlighted)
        NumberSeven.adjustsImageWhenHighlighted = false
        NumberSeven.setBackgroundImage(UIImage(named: "Number 7s.png"), forState: UIControlState.Highlighted)
        NumberEight.adjustsImageWhenHighlighted = false
        NumberEight.setBackgroundImage(UIImage(named: "Number 8s.png"), forState: UIControlState.Highlighted)
        NumberNine.adjustsImageWhenHighlighted = false
        NumberNine.setBackgroundImage(UIImage(named: "Number 9s.png"), forState: UIControlState.Highlighted)
        NumberZero.adjustsImageWhenHighlighted = false
        NumberZero.setBackgroundImage(UIImage(named: "Number 0s.png"), forState: UIControlState.Highlighted)
    }
    
   
}

