using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class TraIn_D
    {
        public int Cod_TraIn_H { get; set; }
        public int Cod_TraIn_D { get; set; }
        public string ItemCode { get; set; }
        public string ItemName { get; set; }
        public double Quantity { get; set; }
        public string WhsCode { get; set; }
        public double Price { get; set; }
        public string ProjectCode { get; set; }
        public string Currency { get; set; }
        public double DiscountPercent { get; set; }
        public string DistributionRule { get; set; }
        public string DistributionRule2 { get; set; }
        public string DistributionRule3 { get; set; }
        public string DistributionRule4 { get; set; }

        public string DistributionRule5 { get; set; }

        public double Factor { get; set; }
        public double Factor2 { get; set; }
        public double Factor3 { get; set; }
        public double Facto4 { get; set; }

        public string MeasureUnit { get; set; }
        public double Rate { get; set; }
        public string SerialNumber { get; set; }
        public double UnitsOfMeasurment { get; set; }
        public char UseBaseUnits { get; set; }
        public string VendorNum { get; set; }
    }

}