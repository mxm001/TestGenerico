using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using TestGenericoProyect.Models;



namespace contizacionProyect.Models.Estrategias
{
    public class DolarStrategy : IMonedaStrategy
    {
        public Moneda getMoneda()
        {
            Moneda dolar;
            using (WebClient Cliente = new WebClient())
            {
                var json = JsonConvert.DeserializeObject<List<String>>(Cliente.DownloadString("https://www.bancoprovincia.com.ar/Principal/Dolar"));
                dolar = new Moneda(Convert.ToDecimal(json[0], CultureInfo.InvariantCulture), Convert.ToDecimal(json[1], CultureInfo.InvariantCulture), Convert.ToString(json[2]));
            }
            return dolar;
            

        }

    }
}