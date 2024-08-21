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
    public partial class faturaDüzenleme : Form
    {
        public faturaDüzenleme()
        {
            InitializeComponent();
        }

        public string id;

        baglanti bgl = new baglanti();

        private void faturaDüzenleme_Load(object sender, EventArgs e)
        {
            txtürünid.Text = id;
            SqlCommand komut = new SqlCommand("select * from faturaDetay where FATURAURUNİD=@p1",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtmiktar.Text = dr["MİKTAR"].ToString();
                txttutat.Text = dr["TUTAR"].ToString();
                txtürünad.Text = dr["URUNAD"].ToString();
                txtfiyat.Text = dr["FİYAT"].ToString();
                bgl.bgl().Close();
            }
        }

        private void butongüncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update faturaDetay set URUNAD=@P1,MİKTAR=@P2,FİYAT=@P3,TUTAR=@P4 where FATURAURUNİD=@P5",bgl.bgl());
            komut.Parameters.AddWithValue("@P1",txtürünad.Text);
            komut.Parameters.AddWithValue("@P2",txtmiktar.Text);
            komut.Parameters.AddWithValue("@P3",decimal.Parse(txtfiyat.Text));
            komut.Parameters.AddWithValue("@P4",decimal.Parse(txttutat.Text));
            komut.Parameters.AddWithValue("@P5",txtürünid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            XtraMessageBox.Show("güncelleme işlemi yapıldı","güncelleme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
        }

        private void butonsil_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("delete faturadetay where FATURAURUNİD=@p1",bgl.bgl());
            komut.Parameters.AddWithValue("@p1",id);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            XtraMessageBox.Show("silme işlemi yapıldı","silme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);

        }
    }
}
