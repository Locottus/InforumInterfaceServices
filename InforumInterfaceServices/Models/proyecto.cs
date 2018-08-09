using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using InforumInterfaceServices.Models;

namespace InforumInterfaceServices.Models
{
    public class proyecto
    {
        public int id { get; set; }
        public string nombre { get; set; }

        public int activo { get; set; }
        public string fechaCreacion { get; set; }
        public string catalogo { get; set; }
    }
}