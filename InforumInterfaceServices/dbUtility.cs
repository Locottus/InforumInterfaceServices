using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using InforumInterfaceServices.Models;
using System.Collections;
using Newtonsoft.Json;

namespace InforumInterfaceServices
{
    public class dbUtility
    {
        public static String connectionString { get; set; } = ConfigurationManager.AppSettings["connSimpleOne"];
        public static String connSource { get; set; } = ConfigurationManager.AppSettings["connSimpleOneSource"];
        public static String connCatalog { get; set; } = ConfigurationManager.AppSettings["connSimpleOneCatalog"];
        public static String connUser { get; set; } = ConfigurationManager.AppSettings["connSimpleOneUser"];
        public static String connPassword { get; set; } = ConfigurationManager.AppSettings["connSimpleOnePassword"];


        /*dbUtility()
       {
           //@"Data Source=HERLICH-DESKTOP;Initial Catalog=InforumIL_Seguritec;User ID=sa;Password=Guatemala1";
           connectionString = ConfigurationManager.AppSettings["DefaultConnection"];
           Console.WriteLine(connectionString);
       }*/

        public String getConnString()
        {

            Console.WriteLine(connectionString);
            connectionString = ConfigurationManager.AppSettings["connSimpleOne"];
            return connectionString;
        }



        private string generateToken()
        {
            byte[] time = BitConverter.GetBytes(DateTime.UtcNow.ToBinary());
            byte[] key = Guid.NewGuid().ToByteArray();
            string token = Convert.ToBase64String(time.Concat(key).ToArray());
            //MessageBox.Show(token);
            return token;

        }


        /*
             create table jazzUsrs(
	        usuario varchar(100) not null,
	        clave varchar(100) not null,
	        activo int not null
	        PRIMARY KEY (usuario)
        )
         */


        public string inciaSesion(string usr, string pwd, string proyecto)
        {
            int ok = 0;
            string tmp = "0";
            //ArrayList list = new ArrayList();
            string Query = "select tablaUsrs from proyectos (nolock) where id =  " + proyecto;
            string tabla = regresa1valor(Query);
            Query = "select count(*) from " + tabla + " where activo  = 1 and usuario = '" + usr + "' and clave = '" + pwd + "' ";
            tmp = regresa1valor(Query);
            ok = Convert.ToInt32(tmp);
            if (ok > 0)
            {
                string json = "{\"token\":\"" + generateToken().ToString() + "\"}";

                return json;
            }


            //'{ "name":"John", "age":30, "city":"New York"}'
            //paso inverso List<Product> products = JsonConvert.DeserializeObject<List<Product>>(json);
            //https://www.newtonsoft.com/json/help/html/SerializingCollections.htm
            return "{\"token\":\"0\"}";
        }




        public static String regresa1valor(String Query)
        {
            String ret = "";
            SqlConnection cnn;
            cnn = new SqlConnection(connectionString);
            cnn.Open();
            SqlCommand sqlComm = new SqlCommand(Query, cnn);
            SqlDataReader r = sqlComm.ExecuteReader();
            try
            {
                while (r.Read())
                    ret = (r[0].ToString());
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                r.Close();
                cnn.Close();
            }
            return ret;

        }


        public static String Inserta_Actualiza(String Query)
        {
            String Mensaje = "OK";
            SqlConnection cnn;
            cnn = new SqlConnection(connectionString);
            cnn.Open();

            try
            {
                SqlCommand sqlComm = new SqlCommand(Query, cnn);
                sqlComm.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                cnn.Close();
            }
            return Mensaje;
        }


        public static int envia_correo(String Destinatario, String Cuerpo, String asunto, String Adjunto)
        {
            //envia_correo(Tok[i], Log2.Text, "Proceso Recurrente de sms a clientes", "tmp.csv");
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("correo.eegsa.net");
            SmtpServer.Port = 25;
            mail.From = new MailAddress("herlichg@eegsa.net");
            mail.To.Add(Destinatario);


            mail.Subject = asunto;// "Proceso Envio de Mensajes ";
            mail.Body = Cuerpo;

            if (Adjunto != null)
            {
                System.Net.Mail.Attachment attachment;
                attachment = new System.Net.Mail.Attachment(Adjunto);
                mail.Attachments.Add(attachment);
            }

            try
            {
                SmtpServer.Send(mail);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return -1;//hubo error
            }
            return 0;//se envio correctamente el correo

        }

        public static List<String> LeeCSV(String Archivo)
        {
            List<String> x = new List<String>();
            String ret = "OK";
            try
            {

                StreamReader ar = new StreamReader(Archivo);
                int ilinea = 0;
                String Linea = "";
                while ((Linea = ar.ReadLine()) != null)
                {
                    if (ilinea > 0) //evito el encabezado
                    {

                        try
                        {
                            Linea = "|" + Linea.Replace('\t', '|').Replace(',', ' ');
                        }
                        catch
                        {
                            Linea = Linea + "|";
                        }
                        String[] str = Linea.Split('|');//me garantizo que no vengan campos invalidos en la orden.
                        if (str[5].Length > 5)
                            x.Add(Linea);
                    }
                    ilinea++;
                }

                ar.Close();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                ret = ex.Message;
                x.Clear();
                x.Add("ERROR");
                x.Add(ret);
            }
            return x;

        }



        public string obtieneProyectos()
        {
            ArrayList list = new ArrayList();
            String Query = "select id,nombre,activo,fechaCreacion,catalogo from proyectos where activo = 1 ";
            SqlConnection cnn = new SqlConnection(connectionString);
            cnn.Open();
            SqlCommand sqlComm = new SqlCommand(Query, cnn);
            SqlDataReader r = sqlComm.ExecuteReader();
            try
            {
                while (r.Read())
                {
                    proyecto p = new proyecto();
                    p.id = (Convert.ToInt32(r[0].ToString()));
                    p.nombre = r[1].ToString();
                    p.activo = (Convert.ToInt32(r[2].ToString()));
                    p.fechaCreacion = r[3].ToString();
                    p.catalogo = r[4].ToString();

                    list.Add(p);
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                r.Close();
                cnn.Close();
            }

            string json = JsonConvert.SerializeObject(list, Formatting.Indented);
            //paso inverso List<Product> products = JsonConvert.DeserializeObject<List<Product>>(json);
            //https://www.newtonsoft.com/json/help/html/SerializingCollections.htm
            return json;
        }


        public string obtieneProyecto(int id)
        {
            ArrayList list = new ArrayList();
            String Query = "select id,nombre,activo,fechaCreacion,catalogo from proyectos where activo = 1 and id = " + id.ToString();
            SqlConnection cnn = new SqlConnection(connectionString);
            cnn.Open();
            SqlCommand sqlComm = new SqlCommand(Query, cnn);
            SqlDataReader r = sqlComm.ExecuteReader();
            try
            {
                while (r.Read())
                {
                    proyecto p = new proyecto();
                    p.id = (Convert.ToInt32(r[0].ToString()));
                    p.nombre = r[1].ToString();
                    p.activo = (Convert.ToInt32(r[2].ToString()));
                    p.fechaCreacion = r[3].ToString();
                    p.catalogo = r[4].ToString();

                    list.Add(p);
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                r.Close();
                cnn.Close();
            }

            string json = JsonConvert.SerializeObject(list, Formatting.Indented);
            //paso inverso List<Product> products = JsonConvert.DeserializeObject<List<Product>>(json);
            //https://www.newtonsoft.com/json/help/html/SerializingCollections.htm
            return json;
        }

        public int convierteInt(string val)
        {
            int ret = 0;
            try
            {
                ret = Convert.ToInt32(val);
            }
            catch { }
            return ret;
        }


        public double convierteDoble(string val)
        {
            double ret = 0;
            try
            {
                ret = Convert.ToDouble(val);
            }
            catch { }
            return ret;
        }

        public string obtieneArticulos()
        {
            ArrayList list = new ArrayList();
            String Query = "select ItemCode , ItemName ,  FrgnName , ItmsGrpCod ,  AvgPrice ,U_TipoA2 ,  U_CodigoAnterior , U_SubGrupo ,  U_Temporada ,  U_TipoCompra , U_Decorado ,  U_Familia ,  U_CatFamilia , U_Nacionalidad , U_Distintivo ,  U_Linea ,  U_Rango , U_Piezas , U_Tamanio ,  U_Dimensional ,  U_Oferta ,  U_Hoja ,  U_Proveedor , U_FechaCompra ,  U_UltCompra ,  U_Precio ,  U_Ofertado ,   U_PreOferta ,  U_Neto ,  U_NetoEsp ,   U_Gasto ,  U_Estado ,  U_NetoFin ,  U_IdMarca , U_Catalogo ,  Procesado ,  Cod_Empresa  from Articulos (nolock)  ";
            SqlConnection cnn = new SqlConnection(connectionString);
            cnn.Open();
            SqlCommand sqlComm = new SqlCommand(Query, cnn);
            SqlDataReader r = sqlComm.ExecuteReader();
            try
            {
                while (r.Read())
                {
                    ARTICULOS p = new ARTICULOS();
                    //p.id = (Convert.ToInt32(r[0].ToString()));
                    p.ItemCode = r[0].ToString();
                    p.ItemName = r[1].ToString();
                    p.FrgnName = r[2].ToString();
                    p.ItmsGrpCod = r[3].ToString();
                    p.AvgPrice = r[4].ToString();
                    p.U_TipoA2 = r[5].ToString();
                    p.U_CodigoAnterior = r[6].ToString();
                    p.U_SubGrupo = r[7].ToString();
                    p.U_Temporada = r[8].ToString();
                    p.U_TipoCompra = r[9].ToString();
                    p.U_Decorado = r[10].ToString();
                    p.U_Familia = r[11].ToString();
                    p.U_CatFamilia = r[12].ToString();
                    p.U_Nacionalidad = r[13].ToString();
                    p.U_Distintivo = r[14].ToString();
                    p.U_Linea = r[15].ToString();
                    p.U_Rango = r[16].ToString();
                    p.U_Piezas = r[17].ToString();
                    p.U_Tamanio = r[18].ToString();
                    p.U_Dimensional = r[19].ToString();
                    p.U_Oferta = r[20].ToString();
                    p.U_Hoja = r[21].ToString();
                    p.U_Proveedor = r[22].ToString();
                    p.U_FechaCompra = r[23].ToString();
                    p.U_UltCompra = r[24].ToString();
                    p.U_Precio = convierteDoble(r[25].ToString());
                    p.U_Ofertado = r[26].ToString();
                    p.U_PreOferta = convierteDoble(r[27].ToString());
                    p.U_Neto = r[28].ToString();
                    p.U_NetoEsp = convierteDoble(r[29].ToString());
                    p.U_Gasto = convierteDoble(r[30].ToString());
                    p.U_Estado = r[31].ToString();
                    p.U_NetoFin = convierteDoble(r[32].ToString());
                    p.U_IdMarca = r[33].ToString();
                    p.U_Catalogo = r[34].ToString();
                    p.Procesado = convierteInt(r[35].ToString());
                    p.Cod_Empresa = convierteInt(r[36].ToString());

                    list.Add(p);
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                r.Close();
                cnn.Close();
            }

            string json = JsonConvert.SerializeObject(list, Formatting.Indented);
            //paso inverso List<Product> products = JsonConvert.DeserializeObject<List<Product>>(json);
            //https://www.newtonsoft.com/json/help/html/SerializingCollections.htm
            return json;
        }


    }
}