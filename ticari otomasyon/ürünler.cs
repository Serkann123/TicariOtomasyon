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
    public partial class ürünler : Form
    {
        public ürünler()
        {
            InitializeComponent();
        }

        baglanti bgl = new baglanti();

        public void listele()
        {
            SqlCommand komut = new SqlCommand("select * from urunler ",bgl.bgl());
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(komut);
            da.Fill(table);
            gridControl1.DataSource = table;

        }

        public void temizle()
        {
            textid.Text = "";
            textad.Text = "";
            textalısfiyat.Text = "";
            textsatısfiyat.Text = "";
            textmarka.Text = "";
            textmodel.Text = "";
            numericUpDown1.Value = 0;
            richTextBox1.Text = "";
            textyıl.Text = "";

        }

        private void ürünler_Load(object sender, EventArgs e)
        {
            listele();
            temizle();
        }

        private void butonkaydet_Click(object sender, EventArgs e)
        {
            try
            {

                SqlCommand komut = new SqlCommand("insert into urunler(URUNAD,MARKA,MODEL,YIL,ADET,ALISFİYAT,SATISFİYAT,DETAY) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)", bgl.bgl());
                komut.Parameters.AddWithValue("@p1", textad.Text);
                komut.Parameters.AddWithValue("@p2", textmarka.Text);
                komut.Parameters.AddWithValue("@p3", textmodel.Text);
                komut.Parameters.AddWithValue("@p4", textyıl.Text);
                komut.Parameters.AddWithValue("@p5", int.Parse(numericUpDown1.Value.ToString()));
                komut.Parameters.AddWithValue("@p6", decimal.Parse(textalısfiyat.Text));
                komut.Parameters.AddWithValue("@p7", decimal.Parse(textsatısfiyat.Text));
                komut.Parameters.AddWithValue("@p8", richTextBox1.Text);
                komut.ExecuteNonQuery();
                bgl.bgl().Close();
                XtraMessageBox.Show("Ürününüz kaydedildi", "kaydetme işlemi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                listele();
            }
            catch(Exception ex)
            {
                XtraMessageBox.Show("Hata: "+ex.Message);
            }

        }

        private void butonsil_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("delete from urunler where İD=@p1 ",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",textid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            XtraMessageBox.Show("Silme İşlemi Yapıldı","silme işlmei",MessageBoxButtons.OK,MessageBoxIcon.Information);
            listele();
        }

        private void butongüncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update urunler set URUNAD=@P1,MARKA=@P2,MODEL=@P3,YIL=@P4,ADET=@P5,ALISFİYAT=@P6,SATISFİYAT=@P7,DETAY=@P8 WHERE İD=@P9",bgl.bgl());
            komut.Parameters.AddWithValue("@P1", textad.Text);
            komut.Parameters.AddWithValue("@P2", textmarka.Text);
            komut.Parameters.AddWithValue("@P3", textmodel.Text);
            komut.Parameters.AddWithValue("@P4", textyıl.Text);
            komut.Parameters.AddWithValue("@P5", int.Parse(numericUpDown1.Value.ToString()));
            komut.Parameters.AddWithValue("@P6", decimal.Parse(textalısfiyat.Text));
            komut.Parameters.AddWithValue("@P7", decimal.Parse(textsatısfiyat.Text));
            komut.Parameters.AddWithValue("@P8", richTextBox1.Text);
            komut.Parameters.AddWithValue("@P9",textid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            temizle();
            XtraMessageBox.Show("güncelleme işlemi başarılı bir şekilde yapıldı","güncelleme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            listele();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            temizle();
        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            DataRow dr = gridView1.GetDataRow(gridView1.FocusedRowHandle);
            textid.Text = dr["İD"].ToString();
            textad.Text = dr["URUNAD"].ToString();
            textmarka.Text = dr["MARKA"].ToString();
            textmodel.Text = dr["MODEL"].ToString();
            textyıl.Text = dr["YIL"].ToString();
            numericUpDown1.Value = decimal.Parse(dr["ADET"].ToString());
            textalısfiyat.Text = dr["ALISFİYAT"].ToString();
            textsatısfiyat.Text = dr["SATISFİYAT"].ToString();
            richTextBox1.Text = dr["DETAY"].ToString();
        }
    }
}
