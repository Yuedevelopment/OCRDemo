//
//  ViewController.swift
//  TesseractOCRDemo
//
//  Created by Tangguo on 15/10/27.
//  Copyright © 2015年 Tangguo. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //TestObjectcClass.init()
        
        
        let image = UIImage(named: "94.jpg")!
        
        let tesseract = G8Tesseract()
        
        // 2
        tesseract.language = "eng+chi_sim"
        
        // 3
        tesseract.engineMode = .TesseractOnly
        
        // 4
        tesseract.pageSegmentationMode = .Auto
        
        // 5
        tesseract.maximumRecognitionTime = 60.0
        
        // 6
        tesseract.image = image.g8_blackAndWhite()
        tesseract.recognize()
        
        // 7
        
        print("解析：\(tesseract.recognizedText)----")
        
        //textView.text = tesseract.recognizedText
        //textView.editable = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


extension ViewController:G8TesseractDelegate {
    
    func shouldCancelImageRecognitionForTesseract(tesseract: G8Tesseract!) -> Bool {
        print("---\(tesseract.progress)")
        return false
    }
    
}
