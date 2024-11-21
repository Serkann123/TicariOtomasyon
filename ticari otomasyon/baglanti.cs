using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace ticari_otomasyon
{
    class baglanti
    {
        public SqlConnection bgl()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-3U064FC;Initial Catalog=TicariOtomasyon;Integrated Security=True");
            con.Open();
            return con;

        }


    }
}
