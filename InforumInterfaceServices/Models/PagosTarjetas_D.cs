using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class PagosTarjetas_D
    {
        public double Cod_Pagos_H { get; set; }
        public int BPLID { get; set; }
        public double Cod_PagosTarjetas_D { get; set; }
        public string CreditCard { get; set; }
        public string CreditCardNumber { get; set; }
        public string CreditValidUntil { get; set; }
        public string PaymentMethodCode { get; set; }
        public double CreditSum { get; set; }
        public string CountryCode { get; set; }
        public string CreditAcct { get; set; }
        public string VoucherNum { get; set; }
    }
}