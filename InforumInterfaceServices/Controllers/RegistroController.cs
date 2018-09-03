using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace InforumInterfaceServices.Controllers
{
    [EnableCors("*", "*", "*")]
    public class RegistroController : ApiController
    {
        public IHttpActionResult Get(string usr, string pwd, string proyecto)
        {
            dbUtility db = new dbUtility();
            string r = db.inciaSesion(usr, pwd, proyecto);// db.obtieneProyecto(id);
            if (string.IsNullOrEmpty(r))
                return NotFound();
            return Ok(r);

        }


        public IHttpActionResult Post([FromBody]string value)
        {


            //Movie m = JsonConvert.DeserializeObject<Movie>(json);

            dbUtility db = new dbUtility();
            string r = null;
            //string r = db.inciaSesion(usr, pwd, proyecto);// db.obtieneProyecto(id);
            if (string.IsNullOrEmpty(r))
                return NotFound();
            return Ok(r);

        }

    }
}
