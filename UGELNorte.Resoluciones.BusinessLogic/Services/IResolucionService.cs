﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using UGELNorte.Resoluciones.DataAccess.Access;
using UGELNorte.Resoluciones.Core.Models;
namespace UGELNorte.Resoluciones.BusinessLogic.Services
{
    public interface IResolucionService
    {
        DataRow GetResolucionByNro(string NroResolucion);

        DataTable GetAllResoluciones();

        DataTable SearchResolucion(string NroProyecto, string NroResolucion);

        bool RegisterResolucion(ResolucionModel resolucion);

        bool UpdateResolucion(ResolucionModel resolucion);

        bool DeleteResolucion(string resolucion);


    }
}
