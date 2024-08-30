

namespace CapaDatos
{
    public class CD_Conexion
    {
        
        private SqlConnection Conexion = new SqlConnection("Data Source=LAPTOP-2JMS5E5I\\SQLEXPRESS;Initial Catalog=Registro;Integrated Security=True;");

        
        public SqlConnection AbrirConexion()
        {
           
            if (Conexion.State == ConnectionState.Closed)
                Conexion.Open();
            return Conexion;
        }

       
        public SqlConnection CerrarConexion()
        {
            
            if (Conexion.State == ConnectionState.Open)
                Conexion.Close();
            return Conexion;
        }
    }
}

