using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Entidades
{
    [Table("Vehiculo")]
    public class Vehiculo
    {
        [Key]
        [Column("VehiculoId")]
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Cilindros{ get; set; }
        public string ImagenUrl{ get; set; }
        public decimal Precio{ get; set; }
        public int MarcaId { get; set; }
        [ForeignKey("MarcaId")]
        public Marca Marca { get; set;}
        
    }
}
