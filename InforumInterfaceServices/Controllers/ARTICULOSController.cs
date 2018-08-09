using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using InforumInterfaceServices.Models;


//https://stackoverflow.com/questions/46386436/insert-or-update-mapped-model-data-into-database


namespace InforumInterfaceServices.Controllers
{
    public class ARTICULOSController : ApiController
    {

        //List<ARTICULOS> art = new List<ARTICULOS>();

        public ARTICULOSController()
        {

        }

        // GET api/<controller>
        public List<ARTICULOS> Get()
        {
            dbUtility db = new dbUtility();
            ARTICULOS retorno = new ARTICULOS();
            return null;// new string[] { "value1", "value2", "values3" };
        }


        // POST api/<controller>
        public void Post(ARTICULOS value)
        {
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
