//
//  InformacionUsuariosBD.swift
//  PruebaTecnica
//
//  Created by Karla Compean on 05/08/22.
//

import Foundation
import CoreData

class InformacionUsuariosBD : NSManagedObject , Identifiable {
    @NSManaged public var correo : String
    @NSManaged public var nombre : String
    @NSManaged public var apaterno : String
    @NSManaged public var amaterno : String
    @NSManaged public var iniciales : String
    @NSManaged public var telefono : String
//es publico por que será usado a lo largo de la aplicación.
}

