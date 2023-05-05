//
//  Agregar.swift
//  arrayElements
//
//  Created by ISSC_411_2022 on 27/04/22.
//

import Cocoa

class Agregar: NSViewController {

    @IBOutlet weak var campoRecibido: NSTextField!
    
    @IBOutlet weak var id: NSTextField!
    
    @IBOutlet weak var name: NSTextField!
    
    @IBOutlet weak var age: NSTextField!
    
    @IBOutlet var vc: ViewController!
    
    @IBOutlet weak var modifyBtn: NSButton!
    
    @IBOutlet weak var addBtn: NSButton!
    
    var flag: Bool = false
    var posicion: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        modifyBtn.isHidden = !flag
        addBtn.isHidden = flag
        if flag {
            id.integerValue = vc.clientLog[posicion].id
            name.stringValue = vc.clientLog[posicion].name
            age.integerValue = vc.clientLog[posicion].age
        }
        }
    
    
    
    @IBAction func agregarEvent(_ sender: Any) {
        vc.clientLog.append(personaOBJ(Int(id.intValue), name.stringValue, Int(age.intValue)))
        
        dismiss(self)
    }
    
    
    @IBAction func modificarEvent(_ sender: Any) {
        //Agregar objeto nuevo en cierta posicion
        vc.clientLog[posicion] = (personaOBJ(Int(id.intValue), name.stringValue, Int(age.intValue)))
        
        dismiss(self)
    }
    
}
    

