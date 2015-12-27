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
public class Caller {

    public static Boolean nuevaCarrera(int codigo, java.lang.String nombre) {
        org.input.negocio.GameLogic_Service service = new org.input.negocio.GameLogic_Service();
        org.input.negocio.GameLogic port = service.getGameLogicPort();
        return port.nuevaCarrera(codigo, nombre);
    }
    
    
    
}
