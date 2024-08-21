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
    public partial class musteriler : Form
    {
        public musteriler()
        {
            InitializeComponent();
        }

        baglanti bgl = new baglanti();

        public void temizle()
        {
            textid.Text = "";
            textad.Text = "";
            textmail.Text = "";
            texttelfon.Text = "";
            texttelfon2.Text = "";
            richTextBox1.Text = "";
            comboxil.Text = "";
            comboxilçe.Text = "";
            textvergi.Text = "";
            textsoyad.Text = "";
            texttc.Text = "";

        }

        public void Listele()
        {
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("select * from musteriler", bgl.bgl());
            da.Fill(table);
            gridControl1.DataSource = table;
            bgl.bgl().Close();
        }

        private void butonkaydet_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into musteriler(AD,SOYAD,TELEFON,TELEFON2,TC,MAİL,İL,İLÇE,ADRES,VERGİDAİRESİ) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10)",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",textad.Text);
            komut.Parameters.AddWithValue("@p2",textsoyad.Text);
            komut.Parameters.AddWithValue("@p3",texttelfon.Text);
            komut.Parameters.AddWithValue("@p4",texttelfon2.Text);
            komut.Parameters.AddWithValue("@p5",texttc.Text);
            komut.Parameters.AddWithValue("@p6",textmail.Text);
            komut.Parameters.AddWithValue("@p7",comboxil.Text);
            komut.Parameters.AddWithValue("@p8",comboxilçe.Text);
            komut.Parameters.AddWithValue("@p9",richTextBox1.Text);
            komut.Parameters.AddWithValue("@p10",textvergi.Text);

            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            temizle();
            XtraMessageBox.Show("Ekleme işlemi yapıldı","ekleme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            Listele();
        }

        private void groupControl1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void İllerListesi()
        {
            SqlCommand komut = new SqlCommand("select SEHİR from iller",bgl.bgl());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                comboxil.Properties.Items.Add ( dr["SEHİR"].ToString());

            }
            bgl.bgl().Close();
        }

        private void musteriler_Load(object sender, EventArgs e)
        {
            Listele();
            İllerListesi();
            temizle();
        }

        private void comboxil_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select İLCE from ilceler where SEHİR=@p1",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",comboxil.SelectedIndex+1);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                comboxilçe.Properties.Items.Add(dr["İLCE"]);
            }

            bgl.bgl().Close();
        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            DataRow dr = gridView1.GetDataRow(gridView1.FocusedRowHandle);
            textid.Text = dr["İD"].ToString();
            textad.Text = dr["AD"].ToString();
            textsoyad.Text = dr["SOYAD"].ToString();
            texttelfon.Text = dr["TELEFON"].ToString();
            texttelfon2.Text = dr["TELEFON2"].ToString();
            texttc.Text = dr["TC"].ToString();
            textmail.Text = dr["MAİL"].ToString();
            comboxil.Text = dr["İL"].ToString();
            comboxilçe.Text = dr["İLÇE"].ToString();
            richTextBox1.Text = dr["ADRES"].ToString();
            textvergi.Text = dr["VERGİDAİRESİ"].ToString();

        }

        private void butonsil_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("delete from musteriler where id=@p1",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",textid.Text);
            komut.ExecuteNonQuery();

            DialogResult result = XtraMessageBox.Show("Silme istediginizden eminmisiniz","silme işlemi",MessageBoxButtons.YesNo,MessageBoxIcon.Warning);

            if (result == DialogResult.Yes)
             temizle();
             Listele();
            
            bgl.bgl().Close();
        }

        private void butongüncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update  musteriler set AD=@P1,SOYAD=@P2,TELEFON=@P3,TELEFON2=@P4,TC=@P5,MAİL=@P6,İL=@P7,İLÇE=@P8,ADRES=@P9,VERGİDAİRESİ=@P10 where İD=@p11",bgl.bgl());
            komut.Parameters.AddWithValue("@p1", textad.Text);
            komut.Parameters.AddWithValue("@p2", textsoyad.Text);
            komut.Parameters.AddWithValue("@p3", texttelfon.Text);
            komut.Parameters.AddWithValue("@p4", texttelfon2.Text);
            komut.Parameters.AddWithValue("@p5", texttc.Text);
            komut.Parameters.AddWithValue("@p6", textmail.Text);
            komut.Parameters.AddWithValue("@p7", comboxil.Text);
            komut.Parameters.AddWithValue("@p8", comboxilçe.Text);
            komut.Parameters.AddWithValue("@p9", richTextBox1.Text);
            komut.Parameters.AddWithValue("@p10", textvergi.Text);
            komut.Parameters.AddWithValue("@p11",textid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            temizle();
            XtraMessageBox.Show("güncelleme işlemi yapıldı"," güncelleme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            Listele();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            temizle();
        }
    }
}
