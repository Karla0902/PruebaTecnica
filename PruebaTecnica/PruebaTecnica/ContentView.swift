//
//  ContentView.swift
//  PruebaTecnica
//
//  Created by Karla Compean on 05/08/22.
//

import SwiftUI

struct ContentView: View {
    
//Este Query hace la concexión con la base de datos y lo trae por nombre
    
    @FetchRequest(entity: InformacionUsuariosBD.entity(), sortDescriptors: [NSSortDescriptor(keyPath:\ InformacionUsuariosBD.nombre, ascending: true)]) var conexionDataBase : FetchedResults<InformacionUsuariosBD>
    
    @Environment(\.managedObjectContext) var conexionBase
    
    @State private var correo = ""
    @State var username: String = ""
       @State var password: String = ""
    var body: some View{
        NavigationView{
            VStack{
                
                
                
                
                Image("imagen1" )
                
                
                TextField("e-mail...",text: self.$correo)
                    .font(.custom("Arial", size: 20))
                    .keyboardType(.emailAddress)
                
                
                Button(action:{
                    // Crear nueva View
                }){
                    let x=0
                    
                   
                        NavigationLink(destination: ListaUsuariosView()){
                            HStack{
                                Image(systemName: "arrowshape.zigzag.right.fill")
                                Text("Login")
                            }.foregroundColor(.white).padding(14.0).background(Color.pink).cornerRadius(20)
                        }
                        
                    
                }
                
                
            }//Fin de VStack
           
            .navigationBarTitle("Iniciar Sesión")
            
        }// Fin de navigationView
    
        
        
    }//cierra body
    
}



struct ContentView_Previews: PreviewProvider{
    static var  previews: some View {
        ContentView()
    }
}
