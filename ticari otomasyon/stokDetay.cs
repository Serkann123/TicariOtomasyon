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
    public partial class stokDetay : Form
    {
        public stokDetay()
        {
            InitializeComponent();
        }

        baglanti bgl = new baglanti();
        public string ad;

        public void listele()
        {
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM urunler WHERE URUNAD='"+ad+"'",bgl.bgl());
            da.Fill(table);
            gridControl1.DataSource = table;
        }

        private void stokDetay_Load(object sender, EventArgs e)
        {
            listele();
        }
    }
}
