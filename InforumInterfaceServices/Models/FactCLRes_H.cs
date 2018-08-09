using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InforumInterfaceServices.Models
{
    public class FactCLRes_H
    {
        public int Cod_FactCLRes_H { get; set; }
        public int BPLID { get; set; }
        public char DocType { get; set; }
        public string CardCode { get; set; }
        public string CardName { get; set; }
        public string SAPSerie { get; set; }
        public string U_TipoDoc { get; set; }
        public string DocDate { get; set; }
        public string DocDueDate { get; set; }
        public string TaxDate { get; set; }
        public string NumAtCard { get; set; }
        public string SlpCode { get; set; }
        public string U_FacSerie { get; set; }
        public string U_FacNum { get; set; }
        public string U_FacNit { get; set; }
        public string U_CAE { get; set; }
        public int Procesado { get; set; }
        public int IsICT { get; set; }
        public string U_FacNom { get; set; }
        public string U_FacFecha { get; set; }
        public string U_Tienda { get; set; }
        public string U_Caja { get; set; }
        public string U_Cajero { get; set; }
        public string DocCur { get; set; }
        public double DocRate { get; set; }
        public string Comments { get; set; }
        public string Pago_CuentaCaja { get; set; }
        public string Pago_CentroCosto { get; set; }
        public string Cod_Direccion { get; set; }
        public string Descrip_Direccion { get; set; }
        public string Fecha_Grabacion { get; set; }
        public double Porcent_Comision { get; set; }
        public double Monto_Comision { get; set; }
        public string FecHor_Grabacion { get; set; }
        public string GroupNum { get; set; }
        public string U_Llave { get; set; }
        public string DocNum { get; set; }
        public string Handwrtten { get; set; }
        public int Cod_Empresa { get; set; }

    }
}