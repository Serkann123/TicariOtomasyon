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
    public partial class personel : Form
    {
        public personel()
        {
            InitializeComponent();
        }
        public void temizle()
        {
            textad.Text = "";
            textsoyad.Text = "";
            textid.Text = "";
            textgörev.Text = "";
            texttc.Text = "";
            texttelfon.Text = "";
            comboxil.Text = "";
            comboxilçe.Text = "";
            textmail.Text = "";
            richTextBox1.Text = "";
            textad.Focus();
        }

        private void labelControl11_Click(object sender, EventArgs e)
        {

        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        baglanti bgl = new baglanti();

        public void listele()
        {
            SqlCommand komut = new SqlCommand("select * from personeller",bgl.bgl());
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(komut);
            da.Fill(table);
            gridControl1.DataSource = table;
            bgl.bgl().Close();

        }
        public void İller()
        {
            SqlCommand komut = new SqlCommand("select SEHİR from iller ", bgl.bgl());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                comboxil.Properties.Items.Add(dr["SEHİR"]);
            }
            bgl.bgl().Close();
        }

        private void personel_Load(object sender, EventArgs e)
        {
            listele();
            İller();
        }

        private void labelControl4_Click(object sender, EventArgs e)
        {

        }

        private void butonkaydet_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into personeller(AD,SOYAD,TELEFON,TC,MAİL,İL,İLÇE,ADRES,GÖREV) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9)",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",textad.Text);
            komut.Parameters.AddWithValue("@p2",textsoyad.Text);
            komut.Parameters.AddWithValue("@p3",texttelfon.Text);
            komut.Parameters.AddWithValue("@p4",texttc.Text);
            komut.Parameters.AddWithValue("@p5",textmail.Text);
            komut.Parameters.AddWithValue("@p6",comboxil.Text);
            komut.Parameters.AddWithValue("@p7",comboxilçe.Text);
            komut.Parameters.AddWithValue("@p8",richTextBox1.Text);
            komut.Parameters.AddWithValue("@p9",textgörev.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            XtraMessageBox.Show("ekleme işlemi yapıldı","ekleem işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            listele();
            temizle();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            temizle();
        }

        private void comboxil_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select İLCE from ilceler where SEHİR=@p1", bgl.bgl());
            komut.Parameters.AddWithValue("@p1", comboxil.SelectedIndex + 1);
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
            textad.Text = dr["AD"].ToString();
            textsoyad.Text = dr["SOYAD"].ToString();
            textid.Text = dr["İD"].ToString();
            textgörev.Text = dr["GÖREV"].ToString();
            texttc.Text = dr["TC"].ToString();
            texttelfon.Text = dr["TELEFON"].ToString();
            comboxil.Text = dr["İL"].ToString();
            comboxilçe.Text = dr["İLÇE"].ToString();
            textmail.Text = dr["MAİL"].ToString();
            richTextBox1.Text = dr["ADRES"].ToString();


        }

        private void butonsil_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("delete from personeller where id=@p1",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",textid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            XtraMessageBox.Show("silem işlemi yapıldı","silme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            listele();
            temizle();
        }

        private void butongüncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update personeller set AD=@p1,SOYAD=@p2,TELEFON=@p3,TC=@p4,MAİL=@p5,İL=@p6,İLÇE=@p7,ADRES=@p8,GÖREV=@p9  where id=@p10",bgl.bgl());
            komut.Parameters.AddWithValue("@p1", textad.Text);
            komut.Parameters.AddWithValue("@p2", textsoyad.Text);
            komut.Parameters.AddWithValue("@p3", texttelfon.Text);
            komut.Parameters.AddWithValue("@p4", texttc.Text);
            komut.Parameters.AddWithValue("@p5", textmail.Text);
            komut.Parameters.AddWithValue("@p6", comboxil.Text);
            komut.Parameters.AddWithValue("@p7", comboxilçe.Text);
            komut.Parameters.AddWithValue("@p8", richTextBox1.Text);
            komut.Parameters.AddWithValue("@p9", textgörev.Text);
            komut.Parameters.AddWithValue("@p10", textid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            XtraMessageBox.Show("güncelleme işlemi yapıldı", "güncelleme işlemi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            listele();
            temizle();
        }
    }
}
