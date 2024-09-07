//
//  ViewController.swift
//  kiemtra_bai1denbai3
//
//  Created by apple on 2024/09/07.
//

import UIKit

class ViewController: UIViewController {

    //khai bao bai 1
    @IBOutlet weak var bai1_Lable: UILabel!
    var thanhpho:[String]!
    var mavung:[Int]!
    var Dictthanhphomavung = [Int:String]()
    //het phan khai bao bai 1
    
    //khai bao bai 2
    @IBOutlet weak var songuyen_TextField: UITextField!
    @IBOutlet weak var ketquabai2_Lable: UILabel!
    @IBOutlet weak var btnketqua_UIButton: UIButton!
    var chuoi:String = ""
    var k:Double!
    //het phan khai bao bai 2
    
    //khai bao bai 3
    var mang1:[Int] = [1,2,3,9,8,5]
    var mang2:[Float] = [1.1,1.6,9.2,7.1,1.7,6.8]
    var mang3:[Float]!
    @IBOutlet weak var bai3_Lable: UILabel!
    //het phan khai bao bai 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bai1()
        bai2()
        mang3 = []
    }
    
    func bai1()  {
        //bai1
        thanhpho = ["tphcm","da nang","quy nhon"]
        mavung = [200,210,220]
        Dictthanhphomavung = Dictionary(uniqueKeysWithValues: zip(mavung, thanhpho))
        //het bai 1

    }
    func bai2() {
        songuyen_TextField.isHidden = true
        btnketqua_UIButton.isHidden = true
    }
    
    @IBAction func bai1(_ sender: Any) {
        bai1_Lable.text = "Tạo dict từ key[] và value[] cho trước"
        print("Mảng key")
        print(mavung!)
        print("Mảng value")
        print(thanhpho!)
        print("create dict from key[] and value[]")
        print(Dictthanhphomavung)
    }
    
    @IBAction func bai2(_ sender: Any) {
        bai1_Lable.text = ""
        songuyen_TextField.text = ""
        songuyen_TextField.isHidden = false
        btnketqua_UIButton.isHidden = false
        
    }
    
    @IBAction func ketquabai2_UIButton(_ sender: Any) {
        ketquabai2_Lable.text = kiemtrachanle()
    }
    func tinhtong(n:Int) -> Double {
        var tong:Double = 0.0
        for i in 1...n {
            tong = tong + Double(i)
        }
        print(tong)
        return tong
    }
    func kiemtrachanle() -> String {
        if let inputText = songuyen_TextField.text {
            if let inputInteger = Int(inputText) {
                if inputInteger < 10000
                {
                    k = tinhtong(n: inputInteger)
                    if Int(k) % 2 == 0
                    {
                        chuoi = "Tổng từ 1 đến \(inputInteger) số chẵn"
                    }
                    else
                    {
                        chuoi = "Tổng từ 1 đến \(inputInteger) số lẽ"
                    }
                }
                else
                {
                    print("Bạn phải nhập số bất kì nhỏ hơn 10.000")
                }
               
            } else {
                print("nhập chữ không cộng được , bạn phải nhập số bất kì nhỏ hơn 10.000")
            }
        }
        
        return chuoi
    }
    
    @IBAction func bai3(_ sender: Any) {
        //mang3 la tong mang1 va mang2
        var k:Float!
        for i in 0..<mang1.count
        {
            for j in 0..<mang2.count
            {
                if i == j
                {
                    k = Float(mang1[i]) + mang2[j]
                    mang3.append(k)
                }
            }
        }
        bai1_Lable.text = "cho mang[Int] và mang[Float] tạo mảng mới tổng 2 mảng trước đó,sắp xếp và hiển thị ra màn hình"
        print("Mang 1 : \(mang1)")
        print("Mang 2 : \(mang2)")
        print("Mảng Mới : \(mang3!)")
        //sap xep mang3 tang dan
        mang3.sort()
        print("Mảng mới sau khi sắp xếp : \(mang3!)")
    }
    
    
}

