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
    public partial class hareketler : Form
    {
        public hareketler()
        {
            InitializeComponent();
        }
        baglanti bgl = new baglanti();
        public void firmaListele()
        {
            DataTable table = new DataTable();
            SqlCommand komut = new SqlCommand("Exec firmaHarekler", bgl.bgl());
            SqlDataAdapter da = new SqlDataAdapter(komut);
            da.Fill(table);
            gridControl2.DataSource = table;

        }

        public void müsteriListele()
        {
            DataTable table2 = new DataTable();
            SqlCommand komut2 = new SqlCommand("Exec MüsteriHareketleri1", bgl.bgl());
            SqlDataAdapter da2 = new SqlDataAdapter(komut2);
            da2.Fill(table2);
            gridControl1.DataSource = table2;
        }

        private void xtraTabPage3_Paint(object sender, PaintEventArgs e)
        {

        }

        private void hareketler_Load(object sender, EventArgs e)
        {
            firmaListele();
            müsteriListele();

        }
    }
}
