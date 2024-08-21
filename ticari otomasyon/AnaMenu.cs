using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ticari_otomasyon
{
    public partial class AnaMenu : Form
    {
        public AnaMenu()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            if (yeni15 == null || yeni15.IsDisposed)
            {
                yeni15 = new AnaSayfa();
                yeni15.MdiParent = this;
                yeni15.Show();
            }

        }
        ürünler yeni;

        private void butonUrunler_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (yeni == null || yeni.IsDisposed ) {
                yeni = new ürünler();
                yeni.MdiParent = this;
                yeni.Show();
            
            }
        }

        musteriler yeni2;
        private void butonMusteriler_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if(yeni2==null || yeni2.IsDisposed)
            {
                yeni2 = new musteriler();
                yeni2.MdiParent = this;
                yeni2.Show();
            }

        }

        firmalar yeni3;
        private void butonFirmalar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if(yeni3==null || yeni3.IsDisposed)
            {
                yeni3 = new firmalar();
                yeni3.MdiParent=this;
                yeni3.Show();
            }

        }

        personel yeni4;
        private void butonPersoneller_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if(yeni4==null || yeni4.IsDisposed)
            {
                yeni4 = new personel();
                yeni4.MdiParent = this;
                yeni4.Show();
            }

        }

        rehberler yeni5;
        private void butonRehberler_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (yeni5==null || yeni5.IsDisposed)
            {
                yeni5 = new rehberler();
                yeni5.MdiParent = this;
                yeni5.Show();

            }

        }

        giderler yeni6;
        private void butonGiderler_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (yeni6==null || yeni6.IsDisposed)
            {
                yeni6 = new giderler();
                yeni6.MdiParent = this;
                yeni6.Show();

            }
        }

        bankalar yeni7;
        private void butonBankalar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (yeni7==null || yeni7.IsDisposed)
            {
                yeni7 = new bankalar();
                yeni7.MdiParent = this;
                yeni7.Show();
            }
        }

        faturalar yeni8;
        private void butonFaturalar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (yeni8==null || yeni8.IsDisposed)
            {
                yeni8 = new faturalar();
                yeni8.MdiParent = this;
                yeni8.Show();

            }

        }

        notlar yeni9;
        private void butonNotlar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (yeni9==null || yeni9.IsDisposed)
            {
                yeni9 = new notlar();
                yeni9.MdiParent = this;
                yeni9.Show();

            }

        }

        hareketler yeni10;
        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (yeni10==null || yeni10.IsDisposed)
            {
                yeni10 = new hareketler();
                yeni10.MdiParent = this;
                yeni10.Show();

            }

        }

        raporlar yeni11;
        private void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (yeni11==null || yeni11.IsDisposed)
            {
                yeni11 = new raporlar();
                yeni11.MdiParent = this;
                yeni11.Show();

            }

        }
        stoklar yeni12;
        private void butonStoklar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (yeni12==null || yeni12.IsDisposed)
            {
                yeni12 = new stoklar();
                yeni12.MdiParent = this;
                yeni12.Show();

            }

        }
        ayarlar yeni13;
        private void butonAyarlar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (yeni13==null || yeni13.IsDisposed)
            {
                yeni13 = new ayarlar();
                yeni13.Show();

            }

        }
        public string kullanici;
        kasalar yeni14;
        private void butonKasa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            if (yeni14==null || yeni14.IsDisposed)
            {
                yeni14 = new kasalar();
                yeni14.ad = kullanici;
                yeni14.MdiParent = this;
                yeni14.Show();
            }
        }

        AnaSayfa yeni15;
        private void butonAnaSayfa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if(yeni15==null || yeni15.IsDisposed)
            {
                yeni15 = new AnaSayfa();
                yeni15.MdiParent = this;
                yeni15.Show();
            }
        }
    }
}
