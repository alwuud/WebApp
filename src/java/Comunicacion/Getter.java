/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Comunicacion;

import org.input.negocio.Usuario;

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

    public static java.util.List<org.input.negocio.Curso> getCurso(int carrera) {
        org.input.negocio.ResponseLogic_Service service = new org.input.negocio.ResponseLogic_Service();
        org.input.negocio.ResponseLogic port = service.getResponseLogicPort();
        return port.getCurso(carrera);
    }

    public static java.util.List<org.input.negocio.Dificultad> getDificultades() {
        org.input.negocio.ResponseLogic_Service service = new org.input.negocio.ResponseLogic_Service();
        org.input.negocio.ResponseLogic port = service.getResponseLogicPort();
        return port.getDificultades();
    }

    public  static Usuario checkPassword(java.lang.String user, java.lang.String password) {
        org.input.negocio.ResponseLogic_Service service = new org.input.negocio.ResponseLogic_Service();
        org.input.negocio.ResponseLogic port = service.getResponseLogicPort();
        return port.checkPassword(user, password);
    }

    public static Integer getExperiencia(int idUsuario) {
        org.input.negocio.ResponseLogic_Service service = new org.input.negocio.ResponseLogic_Service();
        org.input.negocio.ResponseLogic port = service.getResponseLogicPort();
        return port.getExperiencia(idUsuario);
    }

    public static int numAvatares(int idUsuario) {
        org.input.negocio.ResponseLogic_Service service = new org.input.negocio.ResponseLogic_Service();
        org.input.negocio.ResponseLogic port = service.getResponseLogicPort();
        return port.numAvatares(idUsuario);
    }

    public static java.util.List<org.input.negocio.Item> getItemUsuario(int idUsuer) {
        org.input.negocio.ResponseLogic_Service service = new org.input.negocio.ResponseLogic_Service();
        org.input.negocio.ResponseLogic port = service.getResponseLogicPort();
        return port.getItemUsuario(idUsuer);
    }

    public static java.util.List<org.input.negocio.Avatar> getAvataresUsuario(int idUser) {
        org.input.negocio.ResponseLogic_Service service = new org.input.negocio.ResponseLogic_Service();
        org.input.negocio.ResponseLogic port = service.getResponseLogicPort();
        return port.getAvataresUsuario(idUser);
    }

    public static java.util.List<org.input.negocio.Item> getItemUsuarioLibre(int idUsuer) {
        org.input.negocio.ResponseLogic_Service service = new org.input.negocio.ResponseLogic_Service();
        org.input.negocio.ResponseLogic port = service.getResponseLogicPort();
        return port.getItemUsuarioLibre(idUsuer);
    }
    
    
    
    

  
    
    
    
}
