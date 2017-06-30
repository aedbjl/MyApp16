//
//  ViewController.swift
//  MyApp16
//
//  Created by iii-user on 2017/6/30.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let fmgr = FileManager.default
    let home = NSHomeDirectory()
    var appdata:String?
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urls = fmgr.urls(for: FileManager.SearchPathDirectory.documentDirectory, in: FileManager.SearchPathDomainMask.userDomainMask)
        for i in 0..<urls.count{
            print(urls[i].absoluteString)
        }
        
        let home = NSHomeDirectory()
        print (home)
        
//        let docuPath = home + "/Documents"
//        let newdir = docuPath + "/dir1"
//        let copydir = docuPath + "/dir2"
        appdata = home + "/Documents/mydata"
        if !fmgr.fileExists(atPath: appdata!){
            do {
                try fmgr.createDirectory(atPath: appdata!, withIntermediateDirectories: true, attributes: nil)
                  print("create Dir")

            }catch{
                
            }
        }else {
            print("dir ok")
        }
        
        
//        do {
//           try fmgr.createDirectory(atPath: newdir, withIntermediateDirectories: true, attributes: nil)
            
////            try fmgr.copyItem(atPath: newdir, toPath: copydir)
//            try fmgr.removeItem(atPath: copydir)
//            print("ok")
//            
        
//        }catch{
//            print(error)
//        }
        
    }

    
}

