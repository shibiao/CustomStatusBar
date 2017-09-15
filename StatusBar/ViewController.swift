//
//  ViewController.swift
//  StatusBar
//
//  Created by sycf_ios on 2017/9/15.
//  Copyright © 2017年 shibiao. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    var status = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let playBtn = NSButton(image: #imageLiteral(resourceName: "pause"), target: self, action: #selector(play))
        let previewBtn = NSButton(image: #imageLiteral(resourceName: "preview"), target: self, action: #selector(preview))
        let nextBtn = NSButton(image: #imageLiteral(resourceName: "next"), target: self, action: #selector(next))
        let label = NSButton(frame: CGRect(x: 250-20-2*25-150, y: 0, width: 150, height: 20))
        label.focusRingType = .none
        label.setButtonType(.momentaryPushIn)
        label.bezelStyle = .recessed
        label.isBordered = false
        label.title = "酷狗音乐"
        let iconBtn = NSButton(image: #imageLiteral(resourceName: "kugou"), target: self, action: #selector(kugou))
        toImageBtn(button: playBtn)
        toImageBtn(button: previewBtn)
        toImageBtn(button: nextBtn)
        toImageBtn(button: iconBtn)
        previewBtn.frame = CGRect(x: 250-20-2*25, y: 0, width: 20, height: 20)
        playBtn.frame = CGRect(x: 250-20-25, y: 0, width: 20, height: 20)
        nextBtn.frame = CGRect(x: 250-20, y: 0, width: 20, height: 20)
        iconBtn.frame = CGRect(x: 250-20-2*25-150, y: 0, width: 20, height: 20)
        let customView = NSView(frame: NSRect(x: 0, y: 0, width: 250, height: 0) )
        customView.addSubview(playBtn)
        customView.addSubview(previewBtn)
        customView.addSubview(nextBtn)
        customView.addSubview(label)
        customView.addSubview(iconBtn)
        status.view = customView

        
    }
    func toImageBtn(button: NSButton){
        button.focusRingType = .none
        button.setButtonType(.momentaryPushIn)
        button.bezelStyle = .regularSquare
        button.isBordered = false
        button.imageScaling = .scaleAxesIndependently
    }
    func play() {
        print("play")
    }
    func preview() {
        print("preview")
    }
    func next() {
        print("next")
    }
    func kugou() {
        print("kugou")
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

