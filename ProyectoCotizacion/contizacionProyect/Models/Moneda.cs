using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace contizacionProyect.Models
{
    public class Moneda
    {
       public Decimal ValorCompra { get; set; }
       public Decimal ValorVenta { get; set; }
       public String UltimaActualizacion { get; set; }
        public Moneda  (Decimal compra, Decimal venta, String ultimaActualizacion)
        {
            this.ValorCompra = compra;
            this.ValorVenta = venta;
            this.UltimaActualizacion = ultimaActualizacion;
        }
    }
}