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
using DevExpress.XtraEditors;

namespace ticari_otomasyon
{
    public partial class firmalar : Form
    {
        public firmalar() { 
       
            InitializeComponent();
        }

        private void xtraTabPage2_Paint(object sender, PaintEventArgs e)
        {

        }

        baglanti bgl = new baglanti();
        
        public void temizle()
        {
            textad.Text = "";
            textid.Text = "";
            textsektor.Text = "";
            textyetkili.Text = "";
            textgörev.Text = "";
            texttc.Text = "";
            texttelfon.Text = "";
            texttelfon2.Text = "";
            texttelefon3.Text = "";
            textmail.Text = "";
            textfax.Text = "";
            comboxil.Text = "";
            comboxilçe.Text = "";
            textvergi.Text = "";
            richTextBox1.Text = "";
            textözelkod1.Text = "";
            textözelkod2.Text = "";
            textözelkod3.Text = "";
            richTextBox2.Text = "";
            richTextBox3.Text = "";
            richTextBox4.Text = "";
            textad.Focus();
        }

        public void Listele()
        {
            SqlCommand komut = new SqlCommand("select * from firmalar", bgl.bgl());
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable table = new DataTable();
            da.Fill(table);
            gridControl1.DataSource = table;
            bgl.bgl().Close();
        }

        public void Özelkodlar()
        {
            SqlCommand komut = new SqlCommand("select FİRMAKOD1 from kodlar", bgl.bgl());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                richTextBox2.Text = dr[0].ToString();
            }

            bgl.bgl().Close();
        }

        public  void sehirListesi()
        {
            SqlCommand komut = new SqlCommand("select SEHİR from iller ", bgl.bgl());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                comboxil.Properties.Items.Add(dr["SEHİR"]);
            }
            bgl.bgl().Close();
        }

        private void firmalar_Load(object sender, EventArgs e)
        {
            Listele();

            sehirListesi();

            Özelkodlar();

        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            DataRow dr = gridView1.GetDataRow(gridView1.FocusedRowHandle);
            textid.Text = dr["İD"].ToString();
            textad.Text = dr["AD"].ToString();
            textsektor.Text = dr["SEKTOR"].ToString();
            textyetkili.Text = dr["YETKİLİADSOYAD"].ToString();
            textgörev.Text = dr["YETKİLİSTATU"].ToString();
            texttc.Text = dr["YETKİLİTC"].ToString();
            texttelfon.Text = dr["TELEFON1"].ToString();
            texttelfon2.Text = dr["TELEFON2"].ToString();
            texttelefon3.Text = dr["TELEFON3"].ToString();
            textmail.Text = dr["MAİL"].ToString();
            textfax.Text = dr["FAX"].ToString();
            comboxil.Text = dr["İL"].ToString();
            comboxilçe.Text = dr["İLÇE"].ToString();
            textvergi.Text = dr["VERGİDAİRESİ"].ToString();
            richTextBox1.Text = dr["ADRESS"].ToString();
            textözelkod1.Text = dr["OZELKOD1"].ToString();
            textözelkod2.Text = dr["OZELKOD2"].ToString();
            textözelkod3.Text = dr["OZELKOD3"].ToString();
        }

        private void butonkaydet_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into firmalar(AD,YETKİLİSTATU,YETKİLİADSOYAD,YETKİLİTC,SEKTOR,TELEFON1,TELEFON2,TELEFON3,MAİL,FAX,İL,İLÇE,VERGİDAİRESİ,ADRESS,OZELKOD1,OZELKOD2,OZELKOD3) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11,@p12,@p13,@p14,@p15,@p16,@p17)",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",textad.Text);
            komut.Parameters.AddWithValue("@p2", textgörev.Text);
            komut.Parameters.AddWithValue("@p3",textyetkili.Text);
            komut.Parameters.AddWithValue("@p4",texttc.Text);
            komut.Parameters.AddWithValue("@p5",textsektor.Text);
            komut.Parameters.AddWithValue("@p6",texttelfon.Text);
            komut.Parameters.AddWithValue("@p7",texttelfon2.Text);
            komut.Parameters.AddWithValue("@p8",texttelefon3.Text);
            komut.Parameters.AddWithValue("@p9",textmail.Text);
            komut.Parameters.AddWithValue("@p10",textfax.Text);
            komut.Parameters.AddWithValue("@p11",comboxil.Text);
            komut.Parameters.AddWithValue("@p12",comboxilçe.Text);
            komut.Parameters.AddWithValue("@p13",textvergi.Text);
            komut.Parameters.AddWithValue("@p14",richTextBox1.Text);
            komut.Parameters.AddWithValue("@p15", richTextBox2.Text);
            komut.Parameters.AddWithValue("@p16", richTextBox3.Text);
            komut.Parameters.AddWithValue("@p17", richTextBox4.Text);
            komut.ExecuteNonQuery();
            XtraMessageBox.Show("ekleme işlemi yapıldı");
            bgl.bgl().Close();
            Listele();
            temizle();

        }

        private void comboxil_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select İLCE from ilceler where SEHİR=@p1",bgl.bgl());
            komut.Parameters.AddWithValue("@p1", comboxil.SelectedIndex + 1);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                comboxilçe.Properties.Items.Add(dr["İLCE"]);
            }
            bgl.bgl().Close();
        }

        private void butonsil_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("delete from firmalar where İD=@p1",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",textid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            XtraMessageBox.Show("silme işlemi yapıldı","silme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            Listele();
            temizle();

        }

        private void butongüncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update firmalar set AD=@p1,YETKİLİSTATU=@p2,YETKİLİADSOYAD=@p3,YETKİLİTC=@p4,SEKTOR=@p5,TELEFON1=@p6,TELEFON2=@p7,TELEFON3=@p8,MAİL=@p9,FAX=@p10,İL=@p11,İLÇE=@p12,VERGİDAİRESİ=@p13,ADRESS=@p14,OZELKOD1=@p15,OZELKOD2=@p16,OZELKOD3=@p17 where İD=@p18",bgl.bgl());
            komut.Parameters.AddWithValue("@p1", textad.Text);
            komut.Parameters.AddWithValue("@p2", textgörev.Text);
            komut.Parameters.AddWithValue("@p3", textyetkili.Text);
            komut.Parameters.AddWithValue("@p4", texttc.Text);
            komut.Parameters.AddWithValue("@p5", textsektor.Text);
            komut.Parameters.AddWithValue("@p6", texttelfon.Text);
            komut.Parameters.AddWithValue("@p7", texttelfon2.Text);
            komut.Parameters.AddWithValue("@p8", texttelefon3.Text);
            komut.Parameters.AddWithValue("@p9", textmail.Text);
            komut.Parameters.AddWithValue("@p10", textfax.Text);
            komut.Parameters.AddWithValue("@p11", comboxil.Text);
            komut.Parameters.AddWithValue("@p12", comboxilçe.Text);
            komut.Parameters.AddWithValue("@p13", textvergi.Text);
            komut.Parameters.AddWithValue("@p14", richTextBox1.Text);
            komut.Parameters.AddWithValue("@p15", richTextBox2.Text);
            komut.Parameters.AddWithValue("@p16", richTextBox3.Text);
            komut.Parameters.AddWithValue("@p17", richTextBox4.Text);
            komut.Parameters.AddWithValue("@p18",textid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            XtraMessageBox.Show("güncelleme işlemi yapıldı","güncelleme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            Listele();
            temizle();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            temizle();
        }

        private void comboxilçe_SelectedIndexChanged(object sender, EventArgs e)
        {



        }
    }
}
