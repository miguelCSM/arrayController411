//
//  Tabla.swift
//  arrayElements
//
//  Created by ISSC_411_2022 on 27/04/22.
//

import Cocoa

class Tabla: NSViewController {

    @IBOutlet var vcTabla: ViewController!
    
    @IBOutlet weak var eliminado: NSTextField!
    @objc dynamic var clientLog: [personaOBJ]=[]
    var flag: Bool = false
    var index: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func modify(_ sender: NSButton) {
        if clientLog.contains(where: {$0.id == eliminado.integerValue}) {
            let indecs = clientLog.map({$0.id})
            index = indecs.firstIndex(of: eliminado.integerValue)!
            dismiss(self)
            performSegue(withIdentifier: "modifySegue", sender: self)
        }
    }
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if (segue.identifier == "modifySegue"){
            (segue.destinationController as! Agregar).vc = vcTabla
            flag = true
            (segue.destinationController as! Agregar).flag = flag
            (segue.destinationController as! Agregar).posicion = index
        }
    }
    
    
    
    @IBAction func eliminar(_ sender: Any) {

            if clientLog.contains(where: {$0.id == eliminado.integerValue}) {
                
                let indecs = clientLog.map({$0.id})
                
                index = indecs.firstIndex(of: eliminado.integerValue)!
                
                vcTabla.clientLog.remove(at: index)
                clientLog.remove(at: index)
               
                
            } else {
                print("No existe")
            }
    }
}
