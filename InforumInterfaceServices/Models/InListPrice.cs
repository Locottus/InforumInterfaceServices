using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class InListPrice
    {
        public string ItemCode { get; set; }
        public int PriceList { get; set; }
        public string ListName { get; set; }
        public double Price { get; set; }
        public int Procesado { get; set; }
    }
}