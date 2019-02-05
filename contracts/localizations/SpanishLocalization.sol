pragma solidity ^0.4.24;

import "./FissionLocalization.sol";

contract SpanishLocalization is FissionLocalization {
    constructor() public {
        set(hex"00", "Fallo");
        set(hex"01", "Exito");
        set(hex"02", "Aceptado/Iniciado");
        set(hex"03", "Esperando/Anterior");
        set(hex"04", "Accion Requerida");
        set(hex"05", "Expirado");

        set(hex"0F", "Solo Metadata");

        set(hex"10", "Prohibido");
        set(hex"11", "Permitido");
        set(hex"12", "Solicitar Permiso");
        set(hex"13", "Esperando Permiso");
        set(hex"14", "Esperando tu Permiso");
        set(hex"15", "Ya no es Permitido");

        set(hex"20", "No Encontrado");
        set(hex"21", "Encontrado");
        set(hex"22", "Solicitud de Busqueda Enviada");
        set(hex"23", "Esperando Busqueda");
        set(hex"24", "Solicitud de Busqueda Recibida");
        set(hex"25", "Fuera de Rango");

        set(hex"30", "Contraparte Rechazo");
        set(hex"31", "Contraparte Acepto");
        set(hex"32", "Enviar Oferta");
        set(hex"33", "Esperando Aprobacion de Ellos");
        set(hex"34", "Esperando tu Aprobacion");
        set(hex"35", "Oferta Expirada");

        set(hex"40", "No Disponible");
        set(hex"41", "Disponible");
        set(hex"42", "Puede Iniciar");
        set(hex"43", "Aun no Disponible");
        set(hex"44", "Esperando tu Disponibilidad/Señal");
        set(hex"45", "Ya no esta Disponible");

        set(hex"E0", "Desencriptar Falla");
        set(hex"E1", "Desencriptar Exito");
        set(hex"E2", "Firmado");
        set(hex"E3", "Firma de Contraparte Requerida");
        set(hex"E4", "Tu Firma Expiro");
        set(hex"E5", "Token Expirado");

        set(hex"F0", "Falla Off Chain");
        set(hex"F1", "Exito Off Chain");
        set(hex"F2", "Proceso Off Chain Iniciado");
        set(hex"F3", "Esperando Completacion Off Chain");
        set(hex"F4", "Accion Off Chain Requerida");
        set(hex"F5", "Servicio Off Chain No Disponible");

        set(hex"FF", "Fuente de Datos es Off Chain (ej. sin garantias)");
    }
}
