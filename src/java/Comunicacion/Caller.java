/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Comunicacion;

import org.input.negocio.Carrera;

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

    private static Boolean addAvatar(java.lang.String nombre, int usuario) {
        org.input.negocio.GameLogic_Service service = new org.input.negocio.GameLogic_Service();
        org.input.negocio.GameLogic port = service.getGameLogicPort();
        return port.addAvatar(nombre, usuario);
    }

    public static Boolean addCurso(int codigo, java.lang.String nombre, boolean activo, java.lang.String descripcion, int carrera) {
        org.input.negocio.GameLogic_Service service = new org.input.negocio.GameLogic_Service();
        org.input.negocio.GameLogic port = service.getGameLogicPort();
        return port.addCurso(codigo, nombre, activo, descripcion, carrera);
    }

    public static Boolean addDificultad(java.lang.String nombre, int experiencia) {
        org.input.negocio.GameLogic_Service service = new org.input.negocio.GameLogic_Service();
        org.input.negocio.GameLogic port = service.getGameLogicPort();
        return port.addDificultad(nombre, experiencia);
    }

    public static Boolean addItem(java.lang.String nombre, java.lang.String descripcion, int rareza, int efectividad, int gana, int pierde, boolean unUso) {
        org.input.negocio.GameLogic_Service service = new org.input.negocio.GameLogic_Service();
        org.input.negocio.GameLogic port = service.getGameLogicPort();
        return port.addItem(nombre, descripcion, rareza, efectividad, gana, pierde, unUso);
    }

    public static Boolean addItemUsuario(int item, int usuario) {
        org.input.negocio.GameLogic_Service service = new org.input.negocio.GameLogic_Service();
        org.input.negocio.GameLogic port = service.getGameLogicPort();
        return port.addItemUsuario(item, usuario);
    }


    public static Boolean addUser(java.lang.String nombre, java.lang.String user, java.lang.String password, java.lang.String email, int rol) {
        org.input.negocio.GameLogic_Service service = new org.input.negocio.GameLogic_Service();
        org.input.negocio.GameLogic port = service.getGameLogicPort();
        return port.addUser(nombre, user, password, email, rol);
    }

    public static Boolean equiparItem(int avatar, int usuario, int item) {
        org.input.negocio.GameLogic_Service service = new org.input.negocio.GameLogic_Service();
        org.input.negocio.GameLogic port = service.getGameLogicPort();
        return port.equiparItem(avatar, usuario, item);
    }

    public static String getCarrera(int codigo) {
        org.input.negocio.GameLogic_Service service = new org.input.negocio.GameLogic_Service();
        org.input.negocio.GameLogic port = service.getGameLogicPort();
        return port.getCarrera(codigo);
    }

    public static Boolean addPregunta(java.lang.String pregunta, java.lang.String tiempo, int curso, int dificultad, java.util.List<java.lang.String> respuestas) {
        org.input.negocio.GameLogic_Service service = new org.input.negocio.GameLogic_Service();
        org.input.negocio.GameLogic port = service.getGameLogicPort();
        return port.addPregunta(pregunta, tiempo, curso, dificultad, respuestas);
    }

  

    
    
    
    
}
