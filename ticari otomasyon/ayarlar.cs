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
    public partial class ayarlar : Form
    {
        public ayarlar()
        {
            InitializeComponent();
        }

        baglanti bgl = new baglanti();

        public void temizle()
        {
            textkullanıcıadı.Text = "";
            textsifre.Text = "";
        }


        public void listele()
        {
            SqlCommand komut = new SqlCommand("select * from admin", bgl.bgl());
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable table = new DataTable();
            da.Fill(table);
            gridControl2.DataSource = table;
        }

        private void ayarlar_Load(object sender, EventArgs e)
        {
            listele();
            temizle();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (button1.Text == "KAYDET")
            {
                SqlCommand komut = new SqlCommand("insert into admin(KULLANICIADİ,SİFRE) values(@p1,@p2)", bgl.bgl());
                komut.Parameters.AddWithValue("@p1", textkullanıcıadı.Text);
                komut.Parameters.AddWithValue("@p2", textsifre.Text);
                komut.ExecuteNonQuery();
                bgl.bgl().Close();
                XtraMessageBox.Show("Ekleme İşlemi Yapıldı", "Ekleme İşlemi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                listele();
            }
            else
            {
                SqlCommand komut = new SqlCommand("update admin set SİFRE=@p2 where KULLANICIADİ=@p1",bgl.bgl());
                komut.Parameters.AddWithValue("@p1",textkullanıcıadı.Text);
                komut.Parameters.AddWithValue("@p2",textsifre.Text);
                komut.ExecuteNonQuery();
                bgl.bgl().Close();
                temizle();
                XtraMessageBox.Show("Güncelleme İşlemi Yapıldı","Güncelleme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
                listele();
            }
        }

   
        private void textkullanıcıadı_EditValueChanged(object sender, EventArgs e)
        {
            if (textkullanıcıadı.Text!="")
            {
                button1.Text = "GÜNCELLE";
                button1.BackColor = Color.FromArgb(255,255, 192);

            }
            else
            {
                button1.Text = "KAYDET";
                button1.BackColor = Color.FromArgb(255, 192, 128);
            }


        }

        private void gridView2_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {

            DataRow dr = gridView2.GetDataRow(gridView2.FocusedRowHandle);
            if (dr != null)
            {
                textkullanıcıadı.Text = dr["KULLANICIADİ"].ToString();
                textsifre.Text = dr["SİFRE"].ToString();
            }
            bgl.bgl().Close();
        }
    }
}
