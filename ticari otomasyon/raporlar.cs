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
    public partial class raporlar : Form
    {
        public raporlar()
        {
            InitializeComponent();
        }

        private void raporlar_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'TicariOtomasyonDataSet4.musteriler' table. You can move, or remove it, as needed.
            this.musterilerTableAdapter.Fill(this.TicariOtomasyonDataSet4.musteriler);
            // TODO: This line of code loads data into the 'TicariOtomasyonDataSet3.personeller' table. You can move, or remove it, as needed.
            this.personellerTableAdapter.Fill(this.TicariOtomasyonDataSet3.personeller);
            // TODO: This line of code loads data into the 'TicariOtomasyonDataSet1.giderler' table. You can move, or remove it, as needed.
            this.giderlerTableAdapter.Fill(this.TicariOtomasyonDataSet1.giderler);
            // TODO: This line of code loads data into the 'TicariOtomasyonDataSet.firmalar' table. You can move, or remove it, as needed.
            this.firmalarTableAdapter.Fill(this.TicariOtomasyonDataSet.firmalar);

            this.reportViewer1.RefreshReport();
            this.reportViewer2.RefreshReport();
            this.reportViewer3.RefreshReport();
            this.reportViewer4.RefreshReport();
        }
    }
}
