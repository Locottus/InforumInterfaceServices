using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class InInvenario
    {
        public string WhsCode { get; set; }
        public string WhsName { get; set; }
        public string ItemCode { get; set; }
        public string ItemName { get; set; }
        public double Disponible { get; set; }
        public int Procesado { get; set; }
    }
}