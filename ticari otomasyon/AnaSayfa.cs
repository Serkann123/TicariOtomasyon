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
using System.Xml;

namespace ticari_otomasyon
{
    public partial class AnaSayfa : Form
    {
        public AnaSayfa()
        {
            InitializeComponent();
        }

        baglanti bgl = new baglanti();

        public void Stoklar()
        {
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("select URUNAD,Sum(ADET) as 'ADET' from urunler group by URUNAD having Sum(ADET) <= 20 order by Sum(ADET)",bgl.bgl());
            da.Fill(table);
            gridControl1.DataSource = table;
        }

        public void Ajanda()
        {
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("SELECT TOP 10 TARİH,SAAT,BASLIK FROM notlar ORDER BY İD DESC",bgl.bgl());
            da.Fill(table);
            gridControl2.DataSource = table;
        }

        public void Firmahareketleri()
        {
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("Execute FİRMAHAREKETLER2",bgl.bgl());
            da.Fill(table);
            gridControl3.DataSource = table;
        }

        public void Fihrist()
        {
            DataTable table=new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("SELECT AD,TELEFON1 FROM firmalar",bgl.bgl());
            da.Fill(table);
            gridControl4.DataSource = table;
        }

        public void haberler()
        {
            XmlTextReader xmloku = new XmlTextReader("https://www.hurriyet.com.tr/rss/anasayfa");
            while (xmloku.Read())
            {
                if (xmloku.Name == "title")
                {
                    listBox1.Items.Add(xmloku.ReadString());
                }

            }
        }

        private void AnaSayfa_Load(object sender, EventArgs e)
        {
            Stoklar();
            Ajanda();
            Firmahareketleri();
            Fihrist();
            haberler();
            chromiumWebBrowser1.LoadUrl("https://www.tcmb.gov.tr/kurlar/kurlar_tr.html");
        }
    }
}
