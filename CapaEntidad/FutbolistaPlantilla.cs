using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class FutbolistaPlantilla
    {
        public byte IdFutbolistaPlantilla { get; set; }
        public byte Futbolista_titulares { get; set; }
        public byte Futbolista_suplentes { get; set; } 
        public int ValidacionP { get; set; }
        public int ValidacionR { get; set; }
        public byte FK_idPlantilla { get; set; }
        public short FK_idFutbolista { get; set; }
    }
}
