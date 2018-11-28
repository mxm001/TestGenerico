using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace contizacionProyect.Models
{
    //Elimino el stack trace de la excepción
    public class UnauthorizedAccessExceptionSinTrace : UnauthorizedAccessException
    {
        public UnauthorizedAccessExceptionSinTrace() : base() { } //constructor

        public override string StackTrace
        {
            get { return ""; }
        }
    }
}