using contizacionProyect.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace TestGenericoProyect.Models
{
   internal interface IMonedaStrategy
    {
        Moneda getMoneda();

    }
}

