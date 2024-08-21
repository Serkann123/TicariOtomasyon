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
    public partial class giderler : Form
    {
        public giderler()
        {
            InitializeComponent();
        }

        private void labelControl3_Click(object sender, EventArgs e)
        {

        }

        public void temizle()
        {
            textid.Text = "";
            textekstra.Text = "";
            textelektrik.Text = "";
            richTextBox1.Text = "";
            textsu.Text = "";
            textmaas.Text = "";
            textinternet.Text = "";
            textdogalgaz.Text = "";
            comboxay.Text = "";
            comboxyıl.Text = "";

        }

        public void listele()
        {
            SqlDataAdapter komut = new SqlDataAdapter("select * from giderler", bgl.bgl());
            DataTable table = new DataTable();
            komut.Fill(table);
            gridControl1.DataSource = table;
        }

        baglanti bgl = new baglanti();

        private void giderler_Load(object sender, EventArgs e)
        {

            listele();


        }

        private void butonkaydet_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into giderler(ELEKTRİK,AY,YIL,SU,DOGALGAZ,İNTERNET,MAAS,EKSTRA,NOTLAR) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9) ",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",decimal.Parse(textelektrik.Text));
            komut.Parameters.AddWithValue("@p2",comboxay.Text);
            komut.Parameters.AddWithValue("@p3", comboxyıl.Text);
            komut.Parameters.AddWithValue("@p4",decimal.Parse( textsu.Text));
            komut.Parameters.AddWithValue("@p5", decimal.Parse(textdogalgaz.Text));
            komut.Parameters.AddWithValue("@p6", decimal.Parse(textinternet.Text));
            komut.Parameters.AddWithValue("@p7", decimal.Parse(textmaas.Text));
            komut.Parameters.AddWithValue("@p8", decimal.Parse(textekstra.Text));
            komut.Parameters.AddWithValue("@p9", richTextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            listele();
            XtraMessageBox.Show("ekleme işlemi başarılı","ekleme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            temizle();
        }

        private void butonsil_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("delete from giderler where İD=@p1",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",textid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            listele();
            XtraMessageBox.Show("silme işlemi yapıldı","silme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            temizle();

        }

        private void butongüncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update giderler set ELEKTRİK=@p1,AY=@p2,YIL=@p3,SU=@p4,DOGALGAZ=@p5,İNTERNET=@p6,MAAS=@p7,EKSTRA=@p8,NOTLAR=@p9 where İD=@p10",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",decimal.Parse(textelektrik.Text));
            komut.Parameters.AddWithValue("@p2", comboxay.Text);
            komut.Parameters.AddWithValue("@p3", comboxyıl.Text);
            komut.Parameters.AddWithValue("@p4", decimal.Parse(textsu.Text));
            komut.Parameters.AddWithValue("@p5", decimal.Parse(textdogalgaz.Text));
            komut.Parameters.AddWithValue("@p6", decimal.Parse(textinternet.Text));
            komut.Parameters.AddWithValue("@p7", decimal.Parse(textmaas.Text));
            komut.Parameters.AddWithValue("@p8", decimal.Parse(textekstra.Text));
            komut.Parameters.AddWithValue("@p9", richTextBox1.Text);
            komut.Parameters.AddWithValue("@p10",textid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            listele();
            XtraMessageBox.Show("günceleleme işlemi yapıldı","güncelelme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            temizle();
        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            DataRow dr = gridView1.GetDataRow(gridView1.FocusedRowHandle);
            textid.Text = dr["İD"].ToString();
            textelektrik.Text = dr["ELEKTRİK"].ToString();
            textsu.Text = dr["SU"].ToString();
            textdogalgaz.Text = dr["DOGALGAZ"].ToString();
            textekstra.Text = dr["EKSTRA"].ToString();
            richTextBox1.Text = dr["NOTLAR"].ToString();
            comboxay.Text = dr["AY"].ToString();
            comboxyıl.Text = dr["YIL"].ToString();
            textinternet.Text = dr["İNTERNET"].ToString();
            textmaas.Text = dr["MAAS"].ToString();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            temizle();
        }
    }
}
