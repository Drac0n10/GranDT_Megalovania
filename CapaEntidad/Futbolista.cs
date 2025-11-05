using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class Futbolista
    {
        public short IdFutbolista { get; set; }
        public required string Nombre { get; set; }
        public required string Apellido { get; set; }
        public string? Apodo { get; set; }
        public DateTime FechaNac { get; set; }
        public decimal Cotizacion { get; set; }
        public required byte Equipo { get; set; }
        public required byte TipoFutbolista { get; set; }
        public IEnumerable<Puntuacion> Puntuaciones { get; set; } = [];

    }
}
