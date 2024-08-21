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
    public partial class admin : Form
    {
        public admin()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_MouseHover(object sender, EventArgs e)
        {
            button1.BackColor = Color.Yellow;
        }

        private void button1_MouseLeave(object sender, EventArgs e)
        {
            button1.BackColor = Color.LightSeaGreen;
        }

        baglanti bgl = new baglanti();
        kasalar kasa = new kasalar();

        private void button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from admin where KULLANICIADİ=@p1 and SİFRE=@p2",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",textBoxkullanıcıadı.Text);
            komut.Parameters.AddWithValue("@p2",textBoxşifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                AnaMenu giris = new AnaMenu();
                giris.kullanici = textBoxkullanıcıadı.Text;
                giris.Show();
                this.Hide();
            }
            else
            {
                XtraMessageBox.Show("Hattalı Giriş","HATA",MessageBoxButtons.OK,MessageBoxIcon.Information);
            }
            bgl.bgl().Close();
        }
        private void admin_Load(object sender, EventArgs e)
        {
            
        }
    }
}
