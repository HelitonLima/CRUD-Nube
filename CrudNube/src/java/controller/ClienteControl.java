//
//   Document   : ClienteControl
//   Created on : 25/09/2020
//   Author     : Heliton Lima
//  

package controller;

import dao.ClienteDAO;
import java.util.List;
import modelo.Cliente;

public class ClienteControl {
    
    public void adicionar(String nome, String idade, String email, String telefone){
        
        Cliente c = new Cliente();
        c.setNome(nome);
        c.setIdade(Integer.parseInt(idade));
        c.setEmail(email);
        c.setTelefone(telefone);
        ClienteDAO d = new ClienteDAO();
        d.adicionar(c);
        
    }
    
    public void alterar(String nome, String idade,String email, String telefone, String id){
        
        Cliente c = new Cliente();
        c.setNome(nome);
        c.setIdade(Integer.parseInt(idade));
        c.setEmail(email);
        c.setTelefone(telefone);
        c.setId(Integer.parseInt(id));
        ClienteDAO d = new ClienteDAO();
        d.alterar(c);
        
    }
    
    public void deletar(String query){     
        
        ClienteDAO d = new ClienteDAO();
        d.deletar(query);
        
    }
    
    public List<Cliente> listar(String query){
        
        ClienteDAO d = new ClienteDAO();
        List<Cliente> clientes=d.listar(query);
        return clientes;
        
    }
}
