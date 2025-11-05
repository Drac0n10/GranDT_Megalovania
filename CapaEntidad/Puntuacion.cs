using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class Puntuacion
    {
        
        public int IdPuntuacion { get; set; }
        public float Puntuacion { get; set; }
        public short CantFecha { get; set; }
        public short FK_IdFutbolista { get; set; }
        

    }
}
