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
    public partial class rehberler : Form
    {
        public rehberler()
        {
            InitializeComponent();
        }

        baglanti bgl = new baglanti();

        private void rehberler_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select AD,SOYAD,TELEFON,TELEFON2,MAİL from musteriler", bgl.bgl());
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(komut);
            da.Fill(table);
            gridControl1.DataSource = table;
            bgl.bgl().Close();

            SqlCommand komut2 = new SqlCommand("select AD,YETKİLİADSOYAD,TELEFON1,TELEFON2,TELEFON3,MAİL,FAX from firmalar",bgl.bgl());
            DataTable table2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter(komut2);
            da2.Fill(table2);
            gridControl2.DataSource = table2;
          
        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            mail yeni = new mail();
            DataRow dr = gridView1.GetDataRow(gridView1.FocusedRowHandle);

            if (dr!=null)
            {
                yeni.adres = dr["MAİL"].ToString();

            }
            yeni.Show();
        }

        private void gridView2_DoubleClick(object sender, EventArgs e)
        {
            mail yeni = new mail();
            DataRow dr = gridView2.GetDataRow(gridView2.FocusedRowHandle);

            if (dr != null)
            {
                yeni.adres = dr["MAİL"].ToString();

            }
            yeni.Show();
        }

    }
    }

