using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class InTraslados_H
    {
        public int DocNum { get; set; }
        public string CardCode { get; set; }
        public string CardName { get; set; }
        public int Serie { get; set; }
        public string SeriesName { get; set; }
        public string DocDate { get; set; }
        public string TaxDate { get; set; }
    }
}