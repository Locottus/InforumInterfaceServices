using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class Pagos_H
    {
        public double Cod_Pagos_H { get; set; }
        public int BPLID { get; set; }
        public char DocType { get; set; }
        public string CardCode { get; set; }
        public string CardName { get; set; }
        public string DocDate { get; set; }
        public string DocDueDate { get; set; }
        public string TaxDate { get; set; }
        public double CashSum { get; set; }
        public string CashAcct { get; set; }
        public double TrsfrSum { get; set; }
        public string TrsfrAcct { get; set; }
        public string TrsfrDate { get; set; }
        public string TrsfrRef { get; set; }
        public int Procesado { get; set; }
        public string DocCur { get; set; }
        public string Comments { get; set; }
        public string JrnlMemo { get; set; }

    }
}