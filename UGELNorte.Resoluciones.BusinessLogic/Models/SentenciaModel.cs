﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace UGELNorte.Resoluciones.BusinessLogic.Models
{
    class SentenciaModel
    {
        public DateTime FechaSentencia { get; set; }

        public string Sentencia { get; set; }

        public string ExpedienteJudicial { get; set; }

        public float Monto { get; set; }
    }
}
