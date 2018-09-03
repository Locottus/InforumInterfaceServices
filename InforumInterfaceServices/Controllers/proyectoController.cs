using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Http.Cors;
using System.Web.Mvc;
using InforumInterfaceServices.Models;

namespace InforumInterfaceServices.Controllers
{
    [EnableCors("*","*","*")]
    public class proyectoController : ApiController
    {
        public string Get()
        {
            dbUtility db = new dbUtility();
            return db.obtieneProyectos();
        }

        // GET api/<controller>/5
        /*public string Get(int id)
        {
            dbUtility db = new dbUtility();
            return db.obtieneProyecto(id);
        }*/

        public IHttpActionResult Get(int id)
        {
            dbUtility db = new dbUtility();
            string r = db.obtieneProyecto(id);
            if (string.IsNullOrEmpty(r))
                return NotFound();
            return Ok(r);
                
        }

        /*[System.Web.Http.Route("api/proyecto/{id}/nombre")]
        public HttpResponseMessage GetName(int id)
        {
            dbUtility db = new dbUtility();
            string r = db.obtieneProyecto(id);
            if (string.IsNullOrEmpty(r))
                return Request.CreateErrorResponse(HttpStatusCode.NotFound, "ID not found");
            return Request.CreateResponse(r);

        }*/


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