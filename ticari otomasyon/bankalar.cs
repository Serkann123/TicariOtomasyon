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
    public partial class bankalar : Form
    {
        public bankalar()
        {
            InitializeComponent();
        }

        baglanti bgl = new baglanti();

        public void listele()
        {
            DataTable table = new DataTable();
            SqlCommand komut = new SqlCommand("Execute BankaBilgileri", bgl.bgl());
            SqlDataAdapter da = new SqlDataAdapter(komut);
            da.Fill(table);
            gridControl1.DataSource = table;
        }

        public void temizle()
        {
            textbankadı.Text = "";
            comboxil.Text = "";
            comboxilçe.Text = "";
            textsube.Text = "";
            textiban.Text = "";
            texthesapno.Text = "";
            textyetkili.Text = "";
            texttelefon.Text="";
            texttarih.Text = "";
            lookUpEdit1.Text = "";
        }

        private void butonkaydet_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into bankalar(BANKAADI,İL,İLÇE,SUBE,İBAN,HESAPNO,YETKİLİ,TELEFON,TARİH,HESAPTURU,FİRMAİD) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11)",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",textbankadı.Text);
            komut.Parameters.AddWithValue("@p2",comboxil.Text);
            komut.Parameters.AddWithValue("@p3",comboxilçe.Text);
            komut.Parameters.AddWithValue("@p4",textsube.Text);
            komut.Parameters.AddWithValue("@p5",textiban.Text);
            komut.Parameters.AddWithValue("@p6",texthesapno.Text);
            komut.Parameters.AddWithValue("@p7",textyetkili.Text);
            komut.Parameters.AddWithValue("@p8",texttelefon.Text);
            komut.Parameters.AddWithValue("@p9",texttarih.Text);
            komut.Parameters.AddWithValue("@p10",texthesapno.Text);
            komut.Parameters.AddWithValue("@p11",lookUpEdit1.EditValue);

            komut.ExecuteNonQuery();
            listele();
            bgl.bgl().Close();
            XtraMessageBox.Show("ekleme işlemi yapıldı","ekleem işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            temizle();
        }

        public void sehirListesi()
        {
            SqlCommand komut = new SqlCommand("select SEHİR from iller ", bgl.bgl());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                comboxil.Properties.Items.Add(dr["SEHİR"]);
            }
            bgl.bgl().Close();
        }

        private void bankalar_Load(object sender, EventArgs e)
        {
            listele();
            sehirListesi();
            firmaListeleme();
        }

        private void firmaListeleme()
        {
            DataTable table = new DataTable();
            SqlCommand komut = new SqlCommand("select İD,AD from firmalar",bgl.bgl());
            SqlDataAdapter da = new SqlDataAdapter(komut);
            da.Fill(table);

            lookUpEdit1.Properties.ValueMember = "İD";
            lookUpEdit1.Properties.DisplayMember = "AD";
            lookUpEdit1.Properties.DataSource = table;

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

            textid.Text = dr["İD"].ToString();
            comboxil.Text = dr["İL"].ToString();
            comboxilçe.Text = dr["İLÇE"].ToString();
            textbankadı.Text = dr["BANKAADI"].ToString();
            textiban.Text = dr["İBAN"].ToString();
            texthesapno.Text = dr["HESAPNO"].ToString();
            texttarih.Text = dr["TARİH"].ToString();
            texttelefon.Text = dr["TELEFON"].ToString();
            textsube.Text = dr["SUBE"].ToString();
            textyetkili.Text = dr["YETKİLİ"].ToString();
            textEdit1.Text = dr["HESAPTURU"].ToString();

        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            temizle();
        }

        private void butonsil_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("delete from bankalar where İD=@p1",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",textid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            temizle();
            XtraMessageBox.Show("silme işlemi yapıldı","Bilgi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            listele();
        }

        private void butongüncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update bankalar set BANKAADI=@p1,İL=@p2,İLÇE=@p3,SUBE=@p4,İBAN=@p5,HESAPNO=@p6,YETKİLİ=@p7,TELEFON=@p8,TARİH=@p9,HESAPTURU=@p10,FİRMAİD=@p11 where İD=@p12",bgl.bgl());
            komut.Parameters.AddWithValue("@p1", textbankadı.Text);
            komut.Parameters.AddWithValue("@p2", comboxil.Text);
            komut.Parameters.AddWithValue("@p3", comboxilçe.Text);
            komut.Parameters.AddWithValue("@p4", textsube.Text);
            komut.Parameters.AddWithValue("@p5", textiban.Text);
            komut.Parameters.AddWithValue("@p6", texthesapno.Text);
            komut.Parameters.AddWithValue("@p7", textyetkili.Text);
            komut.Parameters.AddWithValue("@p8", texttelefon.Text);
            komut.Parameters.AddWithValue("@p9", texttarih.Text);
            komut.Parameters.AddWithValue("@p10", texthesapno.Text);
            komut.Parameters.AddWithValue("@p11", lookUpEdit1.EditValue);
            komut.Parameters.AddWithValue("@p12",textid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            temizle();
            XtraMessageBox.Show("güncelleme işlemi yapıldı","güncelleme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            listele();
        }
    }
}
