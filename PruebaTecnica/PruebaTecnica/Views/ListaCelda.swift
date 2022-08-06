//
//  ListaCelda.swift
//  PruebaTecnica
//
//  Created by Karla Compean on 05/08/22.
//

import SwiftUI

struct ListaCelda: View {
    
    var correo : String
    var nombre : String
    var apaterno : String
    var amaterno : String
    var telefono : String
    var inicieles : String
    
    
    var body: some View {
        
        HStack{
            Text(self.inicieles)
                .foregroundColor(.white)
                .padding(40)
                .background(Color.pink)
                .font(.custom("Arial",size: 40))
                .clipShape (Circle())
            
            VStack (alignment: .leading){
                Text(self.correo).font(.custom("Arial",size: 15)).foregroundColor(.black)
                Text(self.nombre).font(.custom("Arial",size: 20)).foregroundColor(.black)
                Text(self.apaterno).font(.custom("Arial",size: 20)).foregroundColor(.black)
                Text(self.amaterno).font(.custom("Arial",size: 20)).foregroundColor(.black)
                Text(self.telefono).font(.custom("Arial",size: 20)).foregroundColor(.black)
                
            }
            
        }
        
    }
}

struct ListaCelda_Previews: PreviewProvider {
    static var previews: some View {
        ListaCelda(correo:"", nombre: "", apaterno: "", amaterno: "", telefono: "", inicieles: "")
    }
}
