using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class InSocio
    {
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public string Alias { get; set; }
        public string NIT { get; set; }
        public string Direccion { get; set; }
        public string Telefono1 { get; set; }
        public string Telefono2 { get; set; }
        public string Email { get; set; }
        public double SaldoCuenta { get; set; }
        public double LimiteCredito { get; set; }
        public double CreditoDisponible { get; set; }
        public int Procesado { get; set; }
    }
}