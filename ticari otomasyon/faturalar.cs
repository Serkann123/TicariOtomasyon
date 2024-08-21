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
    public partial class faturalar : Form
    {
        public faturalar()
        {
            InitializeComponent();
        }

        baglanti bgl = new baglanti();

        public void listele()
        {
            DataTable table = new DataTable();
            SqlCommand komut = new SqlCommand("select * from faturaBilgi",bgl.bgl());
            SqlDataAdapter da = new SqlDataAdapter(komut);
            da.Fill(table);
            gridControl1.DataSource = table;

        }
        public void temizle()
        {
            txtid.Text = "";
            txtsaat.Text = "";
            txttarih.Text = "";
            txtseri.Text = "";
            txtsırano.Text = "";
            txtalıcı.Text = "";
            txtteslimalan.Text = "";
            txtteslimeden.Text = "";
            txtvergidairesi.Text = "";

        }

        private void faturalar_Load(object sender, EventArgs e)
        {
            listele();
           
        }

        private void butonkaydet_Click(object sender, EventArgs e)
        {
            if (txtfaturaid.Text == "")
            {
                SqlCommand komut = new SqlCommand("insert into faturaBilgi(SERİ,SIRANO,TARİH,SAAT,VERGİDAİRESİ,ALICI,TESLİMEDEN,TESLİMALAN) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)", bgl.bgl());
                komut.Parameters.AddWithValue("@p1", txtseri.Text);
                komut.Parameters.AddWithValue("@p2", txtsırano.Text);
                komut.Parameters.AddWithValue("@p3", txttarih.Text);
                komut.Parameters.AddWithValue("@p4", txtsaat.Text);
                komut.Parameters.AddWithValue("@p5", txtvergidairesi.Text);
                komut.Parameters.AddWithValue("@p6", txtalıcı.Text);
                komut.Parameters.AddWithValue("@p7", txtteslimeden.Text);
                komut.Parameters.AddWithValue("@p8", txtteslimalan.Text);
                komut.ExecuteNonQuery();
                temizle();
                bgl.bgl().Close();
                XtraMessageBox.Show("ekleme işlemi yapıldı", "ekleme işlemi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                listele();
            }
            //firma carisi
            if (txtfaturaid.Text != "" && comboBox1.Text == "Firma")
            {
                double miktar, fiyat, tutar;
                fiyat = Convert.ToDouble(txtfiyat.Text);
                miktar = Convert.ToDouble(txtmiktar.Text);
                tutar = fiyat * miktar;
                txttutat.Text = tutar.ToString();

                SqlCommand komut2 = new SqlCommand("insert into faturaDETAY(URUNAD,MİKTAR,FİYAT,TUTAR,FATURAİD) values(@p1,@p2,@p3,@p4,@p5)", bgl.bgl());
                komut2.Parameters.AddWithValue("@p1", txtürünad.Text);
                komut2.Parameters.AddWithValue("@p2", txtmiktar.Text);
                komut2.Parameters.AddWithValue("@p3", decimal.Parse(txtfiyat.Text));
                komut2.Parameters.AddWithValue("@p4", decimal.Parse(txttutat.Text));
                komut2.Parameters.AddWithValue("@p5", txtfaturaid.Text);
                komut2.ExecuteNonQuery();
                temizle();
                bgl.bgl().Close();

                //hareketler için veri girişi
                SqlCommand komut3 = new SqlCommand("insert into firmaHareketleri(URUNİD,ADET,PERSONEL,FİRMALAR,FİYAT,TOPLAM,FATURAİD,TARİH) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)", bgl.bgl());
                komut3.Parameters.AddWithValue("@p1", txtürünid.Text);
                komut3.Parameters.AddWithValue("@p2", txtmiktar.Text);
                komut3.Parameters.AddWithValue("@p3", txtpersonel.Text);
                komut3.Parameters.AddWithValue("@p4", txtfirma.Text);
                komut3.Parameters.AddWithValue("@p5", decimal.Parse(txtfiyat.Text));
                komut3.Parameters.AddWithValue("@p6", decimal.Parse(txttutat.Text));
                komut3.Parameters.AddWithValue("@p7", txtfaturaid.Text);
                komut3.Parameters.AddWithValue("@p8", txttarih.Text);
                komut3.ExecuteNonQuery();
                bgl.bgl().Close();

                SqlCommand komut4 = new SqlCommand("update urunler set ADET=ADET-@p1 where İD=@p2", bgl.bgl());
                komut4.Parameters.AddWithValue("@p1", txtmiktar.Text);
                komut4.Parameters.AddWithValue("@p2", txtürünid.Text);
                komut4.ExecuteNonQuery();
                bgl.bgl().Close();
                XtraMessageBox.Show("ekleme işlemi yapıldı", "ekleme işlemi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                listele();
            }
       
            // müsteri carisi
            if (txtfaturaid.Text != ""&& comboBox1.Text == "Müşteri")
            {
                double miktar, fiyat, tutar;
                fiyat = Convert.ToDouble(txtfiyat.Text);
                miktar = Convert.ToDouble(txtmiktar.Text);
                tutar = fiyat * miktar;
                txttutat.Text = tutar.ToString();

                SqlCommand komut2 = new SqlCommand("insert into faturaDETAY(URUNAD,MİKTAR,FİYAT,TUTAR,FATURAİD) values(@p1,@p2,@p3,@p4,@p5)", bgl.bgl());
                komut2.Parameters.AddWithValue("@p1", txtürünad.Text);
                komut2.Parameters.AddWithValue("@p2", txtmiktar.Text);
                komut2.Parameters.AddWithValue("@p3", decimal.Parse(txtfiyat.Text));
                komut2.Parameters.AddWithValue("@p4", decimal.Parse(txttutat.Text));
                komut2.Parameters.AddWithValue("@p5", txtfaturaid.Text);
                komut2.ExecuteNonQuery();
                temizle();
                bgl.bgl().Close();

                //hareketler için veri girişi
                SqlCommand komut3 = new SqlCommand("insert into müsteriHareketleri(URUNİD,ADET,PERSONEL,MUSTERİ,FİYAT,TOPLAM,FATURAİD,TARİH) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)", bgl.bgl());
                komut3.Parameters.AddWithValue("@p1", txtürünid.Text);
                komut3.Parameters.AddWithValue("@p2", txtmiktar.Text);
                komut3.Parameters.AddWithValue("@p3", txtpersonel.Text);
                komut3.Parameters.AddWithValue("@p4", txtfirma.Text);
                komut3.Parameters.AddWithValue("@p5", decimal.Parse(txtfiyat.Text));
                komut3.Parameters.AddWithValue("@p6", decimal.Parse(txttutat.Text));
                komut3.Parameters.AddWithValue("@p7", txtfaturaid.Text);
                komut3.Parameters.AddWithValue("@p8", txttarih.Text);
                komut3.ExecuteNonQuery();
                bgl.bgl().Close();

                SqlCommand komut4 = new SqlCommand("update urunler set ADET=ADET-@p1 where İD=@p2", bgl.bgl());
                komut4.Parameters.AddWithValue("@p1", txtmiktar.Text);
                komut4.Parameters.AddWithValue("@p2", txtürünid.Text);
                komut4.ExecuteNonQuery();
                bgl.bgl().Close();
                XtraMessageBox.Show("ekleme işlemi yapıldı", "ekleme işlemi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                listele();
            }
        }
    
        private void simpleButton1_Click(object sender, EventArgs e)
        {
            temizle();
        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            DataRow dr = gridView1.GetDataRow(gridView1.FocusedRowHandle);

            txtid.Text = dr["FATURABİLGİİD"].ToString();
            txtvergidairesi.Text=dr["VERGİDAİRESİ"].ToString();
            txtteslimalan.Text = dr["TESLİMALAN"].ToString();
            txtteslimeden.Text = dr["TESLİMEDEN"].ToString();
            txttarih.Text = dr["TARİH"].ToString();
            txtseri.Text = dr["SERİ"].ToString();
            txtsırano.Text = dr["SIRANO"].ToString();
            txtsaat.Text = dr["SAAT"].ToString();
            txtalıcı.Text = dr["ALICI"].ToString();
        }

        private void butonsil_Click(object sender, EventArgs e)
        {
           
                SqlCommand komut = new SqlCommand("delete from faturaBilgi where FATURABİLGİİD=@P1 ", bgl.bgl());
                komut.Parameters.AddWithValue("@P1",txtid.Text);
                komut.ExecuteNonQuery();
                bgl.bgl().Close();
                temizle();
                XtraMessageBox.Show("silme işlemi yapıldı", "silme işlemi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                listele();
              
        }

        private void butongüncelle_Click(object sender, EventArgs e)
        {
                SqlCommand komut = new SqlCommand("update faturaBilgi set SERİ=@p1,SIRANO=@p2,TARİH=@p3,SAAT=@p4,VERGİDAİRESİ=@p5,ALICI=@p6,TESLİMEDEN=@p7,TESLİMALAN=@p8 where FATURABİLGİİD=@p9", bgl.bgl());
            komut.Parameters.AddWithValue("@p1", txtseri.Text);
            komut.Parameters.AddWithValue("@p2", txtsırano.Text);
            komut.Parameters.AddWithValue("@p3", txttarih.Text);
            komut.Parameters.AddWithValue("@p4", txtsaat.Text);
            komut.Parameters.AddWithValue("@p5", txtvergidairesi.Text);
            komut.Parameters.AddWithValue("@p6", txtalıcı.Text);
            komut.Parameters.AddWithValue("@p7", txtteslimeden.Text);
            komut.Parameters.AddWithValue("@p8", txtteslimalan.Text);
            komut.Parameters.AddWithValue("@p9",txtid.Text);
            komut.ExecuteNonQuery();
            bgl.bgl().Close();
            temizle();
            XtraMessageBox.Show("güncelleme işlemi yapıldı","güncelleme işlemi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            listele();
            }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            DataRow dr = gridView1.GetDataRow(gridView1.FocusedRowHandle);
            faturaUrunleri yeni = new faturaUrunleri();
            if (dr!=null)
            {
                yeni.id = dr["FATURABİLGİİD"].ToString();
            }
            yeni.Show();
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select URUNAD,SATISFİYAT FROM urunler WHERE id=@p1", bgl.bgl());
            komut.Parameters.AddWithValue("@p1",txtürünid.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                txtürünad.Text = dr[0].ToString();
                txtfiyat.Text = dr[1].ToString();

            }
            bgl.bgl().Close();

        }
    }
    }

