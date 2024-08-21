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
    public partial class notlar : Form
    {
        public notlar()
        {
            InitializeComponent();
        }

        baglanti bgl = new baglanti();

        public void listele()
        {
            SqlCommand komut = new SqlCommand("select * from notlar",bgl.bgl());
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(komut);
            da.Fill(table);
            gridControl1.DataSource = table;
        }

        public void temizle()
        {
            textid.Text = "";
            texttarih.Text = "";
            textssat.Text = "";
            richTextBox1.Text = "";
            textbaşlık.Text = "";
            textoluşturan.Text = "";
            texthitap.Text = "";
        }


        private void notlar_Load(object sender, EventArgs e)
        {
            listele();
        }

        private void butonkaydet_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into notlar(TARİH,SAAT,BASLIK,DETAY,OLUSTURAN,HİTAP) values(@p1,@p2,@p3,@p4,@p5,@p6)",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",texttarih.Text);
            komut.Parameters.AddWithValue("@p2",textssat.Text);
            komut.Parameters.AddWithValue("@p3",textbaşlık.Text);
            komut.Parameters.AddWithValue("@p4",richTextBox1.Text);
            komut.Parameters.AddWithValue("@p5",textoluşturan.Text);
            komut.Parameters.AddWithValue("@p6",texthitap.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            temizle();
            XtraMessageBox.Show("ekleme işlemi yapıldı","ekleme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            listele();

        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            DataRow dr = gridView1.GetDataRow(gridView1.FocusedRowHandle);

            texttarih.Text = dr["TARİH"].ToString();
            textssat.Text = dr["SAAT"].ToString();
            textbaşlık.Text = dr["BASLIK"].ToString();
            texthitap.Text = dr["HİTAP"].ToString();
            textid.Text = dr["İD"].ToString();
            textoluşturan.Text = dr["OLUSTURAN"].ToString();
            richTextBox1.Text = dr["DETAY"].ToString();

        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            temizle();
        }

        private void butonsil_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("delete from notlar where İD=@p1",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",textid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            temizle();
            XtraMessageBox.Show("silme işlemi yapıldı","silme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            listele();
        }

        private void butongüncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update notlar set TARİH=@p1,SAAT=@p2,BASLIK=@p3,DETAY=@p4,OLUSTURAN=@p5,HİTAP=@p6 where İD=@p7", bgl.bgl());
            komut.Parameters.AddWithValue("@p1", texttarih.Text);
            komut.Parameters.AddWithValue("@p2", textssat.Text);
            komut.Parameters.AddWithValue("@p3", textbaşlık.Text);
            komut.Parameters.AddWithValue("@p4", richTextBox1.Text);
            komut.Parameters.AddWithValue("@p5", textoluşturan.Text);
            komut.Parameters.AddWithValue("@p6", texthitap.Text);
            komut.Parameters.AddWithValue("@p7", textid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            temizle();
            XtraMessageBox.Show("güncelleme işlemi yapıldı", "güncelleme işlemi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            listele();

        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            notDetay yeni = new notDetay();
            DataRow dr = gridView1.GetDataRow(gridView1.FocusedRowHandle);
            if (dr!=null)
            {
                yeni.metin=dr["DETAY"].ToString();
            }
            yeni.Show();

        }
    }
}
