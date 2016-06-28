﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace UGELNorte.Resoluciones.DataAccess.SQL
{
    public static class Scripts
    {
        // Consulta SQL para obtener una Resolucion por su Numero
        public static readonly string sqlGetResolucionByNro = "Select" +
            " IN_NroResolucion, IN_NroProyecto, IN_TipoResolucion, IN_UGEL, IN_InstitucionEducativa, " +
            " IN_DNI, IN_Situacion, IN_Concepto, IN_ExpedienteJudicial  " +
            " From TBL_Resolucion Where IN_NroResolucion = @NroResolucion";

        // Consulta SQL para obtener todas las Resoluciones
        public static readonly string SqlGetAllResolucion = "Select" +
            " IN_NroResolucion, IN_NroProyecto, IN_TipoResolucion, IN_UGEL, IN_InstitucionEducativa, " +
            " IN_DNI, IN_Situacion, IN_Concepto, IN_ExpedienteJudicial" +
            " From TBL_Resolucion";

        // Consulta SQL para registrar una Resolucion
        public static readonly string SqlInsertResolucion = "Insert Into" +
            " TBL_Resolucion(IN_NroResolucion, IN_NroProyecto, IN_TipoResolucion, IN_UGEL, IN_InstitucionEducativa, " +
            " IN_DNI, IN_Situacion, IN_Concepto, IN_ExpedienteJudicial)" +
            " Values(@NroResolucion, @NroProyecto, @TipoResolucion, @UGEL, @InstitucionEducativa, "+
            " @DNI, @Situacion, @Concepto , @ExpedienteJudicial )";

         // Consulta para buscar una Resolucion
        public static readonly string SqlSearchResolucion = "Select" +
            " IN_NroResolucion, IN_NroProyecto, IN_TipoResolucion, IN_UGEL, IN_InstitucionEducativa, " +
            " IN_DNI, IN_Situacion, IN_Concepto, IN_ExpedienteJudicial" +
            " From TBL_Resolucion Where (@NroResolucion Is NULL OR @NroResolucion = NroResolucion) {0}" +
            " (@NroProyecto Is NULL OR @NroProyecto = NroProyecto)";
        
         // Consulta para actualizar o modificar una Resolucion
        public static readonly string sqlUpdateResolucion = "Update Resolucion " +
            " Set [IN_NroResolucion] = @NroResolucion, [IN_NroProyecto] = @NroProyecto, [IN_TipoResolucion] = @TipoResolucion, [IN_UGEL] = @UGEL, " +
            " [IN_InstitucionEducativa] = @InstitucionEducativa, [IN_DNI] = @DNI, [IN_Situacion] = @Situacion,  [IN_Concepto] = @Concepto, [IN_ExpedienteJudicial] = @ExpedienteJudicial" +
            " Where ([IN_NroResolucion] = @NroResolucion)";

         // Consulta para eliminar una Resolucion
        public static readonly string sqlDeleteResolucion = "Delete From Resolucion Where (IN_NroResolucion = @NroResolucion)";
    }
}

