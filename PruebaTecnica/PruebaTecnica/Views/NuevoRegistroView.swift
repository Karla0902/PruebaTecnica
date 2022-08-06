//
//  NuevoRegistroView.swift
//  PruebaTecnica
//
//  Created by Karla Compean on 05/08/22.
//

import SwiftUI

struct NuevoRegistroView: View {

    //creamos las variables donde se almacerá nombre, apaterno, apaterno,etc..
    
    @State private var correo = ""
    @State private var nombre = ""
    @State private var apaterno = ""
    @State private var amaterno = ""
    @State private var telefono = ""
    @State private var showingAlert = false
    //para almacenar valores
    @Environment(\.managedObjectContext) var conexionBase
    
    //Para regresar a la view anterior
    @Environment(\.presentationMode) var atrasView
    
    var body: some View {
        
      
        

        VStack{
           
            
            // -------
            Text("Nuevo Registro").font(.title)
            
            //ingreso de valores
            
            TextField("correo...",text: self.$correo)
                .font(.custom("Arial", size: 20))
                .keyboardType(.emailAddress)
            TextField("nombre...",text: self.$nombre)
                .font(.custom("Arial", size: 20))
            TextField("apaterno...",text: self.$apaterno)
                .font(.custom("Arial", size: 20))
            TextField("amaterno...",text: self.$amaterno)
                .font(.custom("Arial", size: 20))
            TextField("telefono...",text: self.$telefono)
                .font(.custom("Arial", size: 20))
                .keyboardType(.phonePad)
            
            
            Spacer()
            Button(action:{
            // proceso para grabar
                //aqui va un IF
                
                let nuevoDatoGrabar = InformacionUsuariosBD(context: self.conexionBase)
                //Ingresamos los atributos para la clase
                
                nuevoDatoGrabar.correo = self.correo
                nuevoDatoGrabar.nombre = self.nombre
                nuevoDatoGrabar.apaterno = self.apaterno
                nuevoDatoGrabar.amaterno = self.amaterno
                nuevoDatoGrabar.telefono = self.telefono
                    
                
                do{
                    try self.conexionBase.save()
                    self.atrasView.wrappedValue.dismiss()
                    print("Registro alamacenado")
                }catch let VerificarError as NSError{
                    print("Existe un problema para almacenar los datos",VerificarError.localizedDescription)
                }
                
            
            }){
                HStack{
                    Image(systemName: "person.badge.clock.fill")
                    Text("Guardar Nuevo Usuario")
                }.foregroundColor(.white).padding(12).background(Color.pink).cornerRadius(18)
            }
            
        }.padding()
        
    }
}

struct NuevoRegistroView_Previews: PreviewProvider {
    static var previews: some View {
        NuevoRegistroView()
    }
}
