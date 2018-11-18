using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using InforumInterfaceServices.Models;


//https://stackoverflow.com/questions/46386436/insert-or-update-mapped-model-data-into-database


namespace InforumInterfaceServices.Controllers
{
    [EnableCors("*", "*", "*")]
    public class ARTICULOSController : ApiController
    {

        //List<ARTICULOS> art = new List<ARTICULOS>();

        public ARTICULOSController()
        {

        }

        // GET api/<controller>
        [HttpGet]
        public List<ARTICULOS> Get()
        {
            dbUtility db = new dbUtility();
            ARTICULOS retorno = new ARTICULOS();
            return null;// new string[] { "value1", "value2", "values3" };
        }

        [HttpPost]
        [System.Web.Http.Route("api/ARTICULOS/ObtieneArticulos")]
        public IHttpActionResult ObtieneArticulos()
        {
            dbUtility db = new dbUtility();
            string r = db.obtieneArticulos();
            if (string.IsNullOrEmpty(r))
                return NotFound();
            return Ok(r);
        }
        // POST api/<controller>
        [HttpPost]
        public IHttpActionResult Post(ARTICULOS value)
        {
            string r = null;
            if (string.IsNullOrEmpty(r))
                return NotFound();
            return Ok(r);
        }

        // PUT api/<controller>/5
        public void Put( ARTICULOS value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(ARTICULOS value)
        {
        }
    }
}
