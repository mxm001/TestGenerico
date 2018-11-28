using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TestGenericoProyect.Models;

namespace contizacionProyect.Models.Estrategias
{
    public class RealStrategy : IMonedaStrategy
    {
        public Moneda getMoneda()
        {
            throw new UnauthorizedAccessExceptionSinTrace();

        }

    }
}