﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace InforumInterfaceServices.Controllers
{
    public class TraIn_HController : ApiController
    {        // GET api/<controller>
        public IEnumerable<string> Get()
        {
            //dbUtility db = new dbUtility();
            return new string[] { "value1", "value2", "values3" };
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}
