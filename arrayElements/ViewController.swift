//
//  ViewController.swift
//  arrayElements
//
//  Created by ISSC_411_2022 on 27/04/22.
//

import Cocoa

class ViewController: NSViewController {
    
    @objc dynamic var clientLog: [personaOBJ] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        //mostrar
        if (segue.identifier == "showSegue"){
            (segue.destinationController as! Tabla).clientLog = clientLog
            (segue.destinationController as! Tabla).vcTabla = self
        }
        //agregar
        else if (segue.identifier == "addSegue"){
            (segue.destinationController as! Agregar).vc = self
        }
        
    }


}

