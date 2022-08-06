//
//  ListaUsuariosView.swift
//  PruebaTecnica
//
//  Created by Karla Compean on 05/08/22.
//

import SwiftUI

struct ListaUsuariosView: View {
    
    @FetchRequest(entity: InformacionUsuariosBD.entity(), sortDescriptors: [NSSortDescriptor(keyPath:\ InformacionUsuariosBD.nombre, ascending: true)]) var conexionDataBase : FetchedResults<InformacionUsuariosBD>


    @Environment(\.managedObjectContext) var conexionBase
    
    
    
    var body: some View{
        NavigationView{
            VStack{
                
                List{
                    ForEach(self.conexionDataBase){ i in
                        NavigationLink(destination: DetalleUsuarioView(infoDetalleView: i)){
                        ListaCelda(correo: i.correo,
                                   nombre: i.nombre,
                                   apaterno: i.apaterno,
                                   amaterno: i.amaterno,
                                   telefono: i.telefono,
                                   inicieles: i.iniciales)
                            
                        }
                    }.onDelete { (IndexSet) in
                        let datoBorrar=self.conexionDataBase[IndexSet.first!]
                        self.conexionBase.delete(datoBorrar)
                    
                        do{
                            try self.conexionBase.save()
                            print("se eliminan datos del coreData")
                        
                        }catch let errorCode as NSError{
                            print("Error al borrar datos", errorCode.localizedDescription)
                        }
                        
                    }
                }
                
                Button(action:{
                    // Crear nueva View
                }){
                    NavigationLink(destination: NuevoRegistroView()){
                        
                        HStack{
                            Image(systemName: "person.badge.clock.fill")
                            Text("Crear nuevo registro")
                        }.foregroundColor(.white).padding(12).background(Color.pink).cornerRadius(18)
                    }
                }
                
                .navigationBarItems(leading:EditButton())
            }//Fin de VStack
           
            .navigationBarTitle("Usuarios")
            
        }// Fin de navigationView
    
        
        
    }//cierra body
    
}



struct ListaUsuariosView_Previews: PreviewProvider{
    static var  previews: some View {
        ContentView()
    }
}

