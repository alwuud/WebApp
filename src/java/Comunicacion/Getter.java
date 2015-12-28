/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Comunicacion;

/**
 *
 * @author Daniel
 */
public class Getter {

    public static java.util.List<org.input.negocio.Carrera> getCarreras() {
        org.input.negocio.ResponseLogic_Service service = new org.input.negocio.ResponseLogic_Service();
        org.input.negocio.ResponseLogic port = service.getResponseLogicPort();
        return port.getCarreras();
    }

  
    
    
    
}
