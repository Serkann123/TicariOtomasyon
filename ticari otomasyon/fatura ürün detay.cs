using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace ticari_otomasyon
{
    public partial class faturaUrunleri : Form
    {
        public faturaUrunleri()
        {
            InitializeComponent();
        }

        public string id;
        baglanti bgl = new baglanti();

        void listele()
        {
            SqlCommand komut = new SqlCommand("select * from faturaDetay where FATURAİD=@p1",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",id);  
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(komut);
            da.Fill(table);
            gridControl1.DataSource = table;
 
        }

        private void faturaUrunleri_Load(object sender, EventArgs e)
        {
                listele();
        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            DataRow dr = gridView1.GetDataRow(gridView1.FocusedRowHandle);
            faturaDüzenleme yeni = new faturaDüzenleme();
            if (dr!=null)
            {
                yeni.id = dr["FATURAURUNİD"].ToString();
                
            }
            yeni.Show();

        }
    }
}
