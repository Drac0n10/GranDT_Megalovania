using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class Plantilla
    {
        public byte IdPlantilla { get; set; }
        public required string NombreP { get; set; }
        public decimal CantMaxMonto { get; set; }
        public byte CantMaxFutbolista { get; set; }
        public short Fk_idUsuario { get; set; }
        public int Fk_idPuntuacion { get; set; }

    }
}
