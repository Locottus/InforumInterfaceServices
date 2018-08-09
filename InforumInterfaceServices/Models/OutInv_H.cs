using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class OutInv_H
    {
        public int DocNum { get; set; }
        public string Series { get; set; }
        public string SeriesName { get; set; }
        public string DocDate { get; set; }
        public string TaxDate { get; set; }
        public string Referencia { get; set; }
        public string Comments { get; set; }
        public int Procesado { get; set; }
    }
}