using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using InforumInterfaceServices.Models;

namespace InforumInterfaceServices.Controllers
{
    public class proyectoController : ApiController
    {
        public string Get()
        {
            dbUtility db = new dbUtility();
            return db.obtieneProyectos();
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            dbUtility db = new dbUtility();
            return db.obtieneProyecto(id);
        }

        // POST api/<controller>
        public string Post([FromBody]string value)
        {
            Console.Out.WriteLine(value);
            //dbUtility db = new dbUtility();
            //return db.obtieneProyectos();
            return "ok";
        }


        public string Put(int id, [FromBody]string value)
        {
            Console.Out.WriteLine(value);
            return "ok";
        }

        // DELETE api/<controller>/5
        public string Delete(int id)
        {
            Console.Out.WriteLine(id);
            return "ok";
        }

    }
}