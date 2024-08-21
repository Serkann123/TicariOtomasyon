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
    public partial class stoklar : Form
    {
        public stoklar()
        {
            InitializeComponent();
        }
        baglanti bgl = new baglanti();

        private void stoklar_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("SELECT URUNAD,SUM(ADET) FROM urunler GROUP BY URUNAD",bgl.bgl());
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable table = new DataTable();
            da.Fill(table);
            gridControl1.DataSource = table;
            bgl.bgl().Close();

            SqlCommand komut2 = new SqlCommand("SELECT URUNAD,SUM(ADET) FROM urunler GROUP BY URUNAD",bgl.bgl());
            SqlDataReader dr =komut2.ExecuteReader();
            while (dr.Read())
            {
                chartControl1.Series["Series 1"].Points.AddPoint(Convert.ToString(dr[0]),int.Parse(dr[1].ToString()));

            }
            bgl.bgl().Close();

            SqlCommand komut3 = new SqlCommand("SELECT İL,COUNT(*) FROM firmalar GROUP BY İL",bgl.bgl());
            SqlDataReader dr3 = komut3.ExecuteReader();
            while (dr3.Read())
            {
                chartControl3.Series["Series 1"].Points.AddPoint(Convert.ToString(dr3[0]),int.Parse(dr3[1].ToString()));

            }
            bgl.bgl().Close();

        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            stokDetay yeni = new stokDetay();
            DataRow dr = gridView1.GetDataRow(gridView1.FocusedRowHandle);
            if (dr!=null)
            {
                yeni.ad = dr["URUNAD"].ToString();
            }
            yeni.Show();
        }
    }
}
