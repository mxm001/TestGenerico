using contizacionProyect.Models;
using contizacionProyect.Models.Estrategias;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using TestGenericoProyect.Models;

namespace contizacionProyect.Controllers
{
    public class CotizacionController : ApiController
    {
        public IHttpActionResult GetMoneda (String Id)
        {
            IMonedaStrategy MonedaStrategy;
            switch (Id)
            {
                case "Peso":
                    MonedaStrategy = new PesoStrategy();

                    break;
                case "Dolar":
                    MonedaStrategy = new DolarStrategy();
                    break;
                case "Real":

                    MonedaStrategy = new RealStrategy();
                    break;
                default:
                    throw new UnauthorizedAccessExceptionSinTrace();
            }
            return Ok( MonedaStrategy.getMoneda());

        }
    }
}
