using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class InCotizacion_H
    {
        public int DocNum { get; set; }
        public string CardCode { get; set; }
        public string CardName { get; set; }
        public int Serie { get; set; }
        public string SerieName { get; set; }
        public string DocDate { get; set; }
        public string DocDueDate { get; set; }
        public string TaxDate { get; set; }
        public int Procesado { get; set; }
    }
}