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
using DevExpress.Charts;

namespace ticari_otomasyon
{
    public partial class kasalar : Form
    {
        public kasalar()
        {
            InitializeComponent();
        }

        baglanti bgl = new baglanti();

        private void xtraTabPage1_Paint(object sender, PaintEventArgs e)
        {

        }

        public void Musterihareketleri()
        {
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("Execute MüsteriHareketleri1",bgl.bgl());
            da.Fill(table);
            gridControl1.DataSource = table;

        }

        public void Firmahareketleri()
        {
            DataTable table2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter("Execute FİRMAHAREKLER",bgl.bgl());
            da2.Fill(table2);
            gridControl3.DataSource = table2;

        }
        public  string ad;
        private void kasalar_Load(object sender, EventArgs e)
        {
            lblaktifkullanıcı.Text = ad;

            Musterihareketleri();
            Firmahareketleri();
  
            //toplam tutarı hesaplama
            SqlCommand komut1 = new SqlCommand("SELECT SUM(TUTAR) FROM faturaDetay",bgl.bgl());
            SqlDataReader dr = komut1.ExecuteReader();
            while (dr.Read())
            {
                lbltoplamtutar.Text = dr[0].ToString()+" TL";
            }

            bgl.bgl().Close();

            //son ayın faturaları
            SqlCommand komut2 = new SqlCommand("SELECT (ELEKTRİK+SU+DOGALGAZ+İNTERNET+EKSTRA) FROM giderler ORDER BY İD ASC",bgl.bgl());
            SqlDataReader dr2 = komut2.ExecuteReader();
            while (dr2.Read())
            {
                lblödemeler.Text = dr2[0].ToString()+" TL";

            }
            bgl.bgl().Close();

            //son ayın personel maaşları
            SqlCommand komut3 = new SqlCommand("SELECT MAAS FROM giderler ORDER BY İD ASC",bgl.bgl());
            SqlDataReader dr3 = komut3.ExecuteReader();
            while (dr3.Read())
            {
                lblpersonelmaaşları.Text = dr3[0].ToString() + " TL";

            }
            bgl.bgl().Close();

            //toplam müşteri sayısı
            SqlCommand komut4 = new SqlCommand("SELECT COUNT(*) FROM musteriler", bgl.bgl());
            SqlDataReader dr4 = komut4.ExecuteReader();
            while (dr4.Read())
            {
                lblmüşterisayısı.Text = dr4[0].ToString();

            }
            bgl.bgl().Close();

            //toplam firma sayısı
            SqlCommand komut5 = new SqlCommand("SELECT COUNT(*) FROM firmalar", bgl.bgl());
            SqlDataReader dr5 = komut5.ExecuteReader();
            while (dr5.Read())
            {
                lblfirmasayısı.Text = dr5[0].ToString();

            }
            bgl.bgl().Close();


            //toplam firma sehir sayısı
            SqlCommand komut6 = new SqlCommand("SELECT COUNT(Distinct(İL)) FROM firmalar", bgl.bgl());
            SqlDataReader dr6 = komut6.ExecuteReader();
            while (dr6.Read())
            {
                lblfirnasehirsayısı.Text = dr6[0].ToString();

            }
            bgl.bgl().Close();

            //toplam müsteri sehir sayısı
            SqlCommand komut7 = new SqlCommand("SELECT COUNT(Distinct(İL)) FROM musteriler", bgl.bgl());
            SqlDataReader dr7 = komut7.ExecuteReader();
            while (dr7.Read())
            {
                lblmüsterifilmasayısı.Text = dr7[0].ToString();

            }
            bgl.bgl().Close();


            //toplam personel  sayısı
            SqlCommand komut8 = new SqlCommand("SELECT COUNT(*) FROM personeller", bgl.bgl());
            SqlDataReader dr8 = komut8.ExecuteReader();
            while (dr8.Read())
            {
                lblpersonelsayısı.Text = dr8[0].ToString();

            }
            bgl.bgl().Close();


            //toplam stok sayısı
            SqlCommand komut9 = new SqlCommand("SELECT SUM(ADET) FROM urunler", bgl.bgl());
            SqlDataReader dr9 = komut9.ExecuteReader();
            while (dr9.Read())
            {
                lblstoksayısı.Text = dr9[0].ToString();

            }
            bgl.bgl().Close();
        }

        private void xtraTabPage2_Paint(object sender, PaintEventArgs e)
        {

        }

        int sayac = 0;
        private void timer1_Tick(object sender, EventArgs e)
        {
            sayac++;
            //Elektrik
            if (sayac>0 &&sayac<=5)
            {
                groupControl10.Text = "Elektrik";
                chartControl1.Series["Aylar"].Points.Clear();
                SqlCommand komut10 = new SqlCommand("SELECT TOP 4 AY,ELEKTRİK FROM giderler ORDER BY İD DESC", bgl.bgl());
                SqlDataReader dr10 = komut10.ExecuteReader();
                while (dr10.Read())
                {
                    chartControl1.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(dr10[0], dr10[1]));
                }
                bgl.bgl().Close();
            }

            //Su
            if (sayac>5 && sayac<=10)
            {
                // kontrole son 4 su elektrik fautrası listeleme
                groupControl10.Text = "Su";
                chartControl1.Series["Aylar"].Points.Clear();
                SqlCommand komut10 = new SqlCommand("SELECT TOP 4 AY,SU FROM giderler ORDER BY İD DESC", bgl.bgl());
                SqlDataReader dr10 = komut10.ExecuteReader();
                while (dr10.Read())
                {
                    chartControl1.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(dr10[0], dr10[1]));
                }
                bgl.bgl().Close();
            }

            //Dogalgaz
            if (sayac>10 && sayac<=15)
            {
                groupControl10.Text = "Dogalgaz";
                SqlCommand komut10 = new SqlCommand("SELECT TOP 4 AY,DOGALGAZ FROM giderler ORDER BY İD DESC", bgl.bgl());
                SqlDataReader dr10 = komut10.ExecuteReader();
                while (dr10.Read())
                {
                    chartControl1.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(dr10[0], dr10[1]));
                }
                bgl.bgl().Close();

            }
            //İnternet
            if (sayac > 15 && sayac <= 20)
            {
                groupControl10.Text = "İnternet";
                SqlCommand komut10 = new SqlCommand("SELECT TOP 4 AY,İNTERNET FROM giderler ORDER BY İD DESC", bgl.bgl());
                SqlDataReader dr10 = komut10.ExecuteReader();
                while (dr10.Read())
                {
                    chartControl1.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(dr10[0], dr10[1]));
                }
                bgl.bgl().Close();

            }

            //Ekstra
            if (sayac > 20 && sayac <= 25)
            {
                groupControl10.Text = "Ekstra";
                SqlCommand komut10 = new SqlCommand("SELECT TOP 4 AY,EKSTRA FROM giderler ORDER BY İD DESC", bgl.bgl());
                SqlDataReader dr10 = komut10.ExecuteReader();
                while (dr10.Read())
                {
                    chartControl1.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(dr10[0], dr10[1]));
                }
                bgl.bgl().Close();
            }

            if (sayac == 26)
            {
                sayac = 0;
            }
        }

        //ikinci chart 

        int sayac2 = 0;
        private void timer2_Tick(object sender, EventArgs e)
        {
            sayac2++;
            //Elektrik
            if (sayac2 > 0 && sayac2 <= 5)
            {
                groupControl11.Text = "Elektrik";
                chartControl2.Series["Aylar"].Points.Clear();
                SqlCommand komut10 = new SqlCommand("SELECT TOP 4 AY,ELEKTRİK FROM giderler ORDER BY İD DESC", bgl.bgl());
                SqlDataReader dr10 = komut10.ExecuteReader();
                while (dr10.Read())
                {
                    chartControl2.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(dr10[0], dr10[1]));
                }
                bgl.bgl().Close();
            }

            //Su
            if (sayac2 > 5 && sayac2 <= 10)
            {
                // kontrole son 4 su elektrik fautrası listeleme
                groupControl11.Text = "Su";
                chartControl2.Series["Aylar"].Points.Clear();
                SqlCommand komut10 = new SqlCommand("SELECT TOP 4 AY,SU FROM giderler ORDER BY İD DESC", bgl.bgl());
                SqlDataReader dr10 = komut10.ExecuteReader();
                while (dr10.Read())
                {
                    chartControl2.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(dr10[0], dr10[1]));
                }
                bgl.bgl().Close();
            }

            //Dogalgaz
            if (sayac2 > 10 && sayac2 <= 15)
            {
                groupControl11.Text = "Dogalgaz";
                SqlCommand komut10 = new SqlCommand("SELECT TOP 4 AY,DOGALGAZ FROM giderler ORDER BY İD DESC", bgl.bgl());
                SqlDataReader dr10 = komut10.ExecuteReader();
                while (dr10.Read())
                {
                    chartControl2.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(dr10[0], dr10[1]));
                }
                bgl.bgl().Close();

            }
            //İnternet
            if (sayac2 > 15 && sayac2 <= 20)
            {
                groupControl11.Text = "İnternet";
                SqlCommand komut10 = new SqlCommand("SELECT TOP 4 AY,İNTERNET FROM giderler ORDER BY İD DESC", bgl.bgl());
                SqlDataReader dr10 = komut10.ExecuteReader();
                while (dr10.Read())
                {
                    chartControl2.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(dr10[0], dr10[1]));
                }
                bgl.bgl().Close();

            }

            //Ekstra
            if (sayac2 > 20 && sayac2 <= 25)
            {
                groupControl11.Text = "Ekstra";
                SqlCommand komut10 = new SqlCommand("SELECT TOP 4 AY,EKSTRA FROM giderler ORDER BY İD DESC", bgl.bgl());
                SqlDataReader dr10 = komut10.ExecuteReader();
                while (dr10.Read())
                {
                    chartControl2.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(dr10[0], dr10[1]));
                }
                bgl.bgl().Close();
            }

            if (sayac2 == 26)
            {
                sayac2 = 0;
            }
        }


    }
}
