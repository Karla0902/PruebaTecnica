//
//  DetalleUsuarioView.swift
//  PruebaTecnica
//
//  Created by Karla Compean on 05/08/22.
//

import SwiftUI

struct DetalleUsuarioView: View {
    
    var infoDetalleView : InformacionUsuariosBD
    
    var body: some View {
        
        VStack{
            Text(self.infoDetalleView.iniciales)
                .foregroundColor(.white)
                .padding(40)
                .background(Color.pink)
                .font(.custom("Arial",size: 40))
                .clipShape (Circle())
            Text(self.infoDetalleView.correo).font(.custom("Arial",size: 35)).foregroundColor(.black)
            Text(self.infoDetalleView.nombre).font(.custom("Arial",size: 25)).foregroundColor(.black)
            Text(self.infoDetalleView.apaterno).font(.custom("Arial",size: 25)).foregroundColor(.black)
            Text(self.infoDetalleView.amaterno).font(.custom("Arial",size: 25)).foregroundColor(.black)
            Text(self.infoDetalleView.telefono).font(.custom("Arial",size: 25)).foregroundColor(.black)
            
        }
        
    }
}

struct DetalleUsuarioView_Previews: PreviewProvider {
    static var previews: some View {
        DetalleUsuarioView(infoDetalleView: InformacionUsuariosBD())
    }
}
