namespace ticari_otomasyon
{
    partial class raporlar
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(raporlar));
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource3 = new Microsoft.Reporting.WinForms.ReportDataSource();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource2 = new Microsoft.Reporting.WinForms.ReportDataSource();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource4 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.firmalarBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.TicariOtomasyonDataSet = new ticari_otomasyon.TicariOtomasyonDataSet();
            this.xtraTabControl1 = new DevExpress.XtraTab.XtraTabControl();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.xtraTabPage3 = new DevExpress.XtraTab.XtraTabPage();
            this.xtraTabPage4 = new DevExpress.XtraTab.XtraTabPage();
            this.xtraTabPage5 = new DevExpress.XtraTab.XtraTabPage();
            this.firmalarTableAdapter = new ticari_otomasyon.TicariOtomasyonDataSetTableAdapters.firmalarTableAdapter();
            this.reportViewer2 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.TicariOtomasyonDataSet1 = new ticari_otomasyon.TicariOtomasyonDataSet1();
            this.giderlerBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.giderlerTableAdapter = new ticari_otomasyon.TicariOtomasyonDataSet1TableAdapters.giderlerTableAdapter();
            this.xtraTabPage1 = new DevExpress.XtraTab.XtraTabPage();
            this.reportViewer3 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.TicariOtomasyonDataSet2 = new ticari_otomasyon.TicariOtomasyonDataSet2();
            this.reportViewer4 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.TicariOtomasyonDataSet3 = new ticari_otomasyon.TicariOtomasyonDataSet3();
            this.personellerBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.personellerTableAdapter = new ticari_otomasyon.TicariOtomasyonDataSet3TableAdapters.personellerTableAdapter();
            this.TicariOtomasyonDataSet4 = new ticari_otomasyon.TicariOtomasyonDataSet4();
            this.musterilerBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.musterilerTableAdapter = new ticari_otomasyon.TicariOtomasyonDataSet4TableAdapters.musterilerTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.firmalarBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TicariOtomasyonDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            this.xtraTabPage2.SuspendLayout();
            this.xtraTabPage4.SuspendLayout();
            this.xtraTabPage5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.TicariOtomasyonDataSet1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.giderlerBindingSource)).BeginInit();
            this.xtraTabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.TicariOtomasyonDataSet2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TicariOtomasyonDataSet3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.personellerBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TicariOtomasyonDataSet4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.musterilerBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // firmalarBindingSource
            // 
            this.firmalarBindingSource.DataMember = "firmalar";
            this.firmalarBindingSource.DataSource = this.TicariOtomasyonDataSet;
            // 
            // TicariOtomasyonDataSet
            // 
            this.TicariOtomasyonDataSet.DataSetName = "TicariOtomasyonDataSet";
            this.TicariOtomasyonDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Location = new System.Drawing.Point(0, 0);
            this.xtraTabControl1.Name = "xtraTabControl1";
            this.xtraTabControl1.SelectedTabPage = this.xtraTabPage2;
            this.xtraTabControl1.Size = new System.Drawing.Size(1370, 749);
            this.xtraTabControl1.TabIndex = 1;
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage2,
            this.xtraTabPage1,
            this.xtraTabPage3,
            this.xtraTabPage4,
            this.xtraTabPage5});
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.reportViewer1);
            this.xtraTabPage2.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("xtraTabPage2.ImageOptions.Image")));
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(1364, 702);
            this.xtraTabPage2.Text = "Müşteri Raporları";
            // 
            // reportViewer1
            // 
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.musterilerBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "ticari_otomasyon.müsterilereport.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(1364, 699);
            this.reportViewer1.TabIndex = 0;
            // 
            // xtraTabPage3
            // 
            this.xtraTabPage3.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("xtraTabPage3.ImageOptions.Image")));
            this.xtraTabPage3.Name = "xtraTabPage3";
            this.xtraTabPage3.Size = new System.Drawing.Size(1364, 702);
            this.xtraTabPage3.Text = "Kasa Raporları";
            // 
            // xtraTabPage4
            // 
            this.xtraTabPage4.Controls.Add(this.reportViewer2);
            this.xtraTabPage4.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("xtraTabPage4.ImageOptions.Image")));
            this.xtraTabPage4.Name = "xtraTabPage4";
            this.xtraTabPage4.Size = new System.Drawing.Size(1364, 702);
            this.xtraTabPage4.Text = "Gider Raporları";
            // 
            // xtraTabPage5
            // 
            this.xtraTabPage5.Controls.Add(this.reportViewer4);
            this.xtraTabPage5.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("xtraTabPage5.ImageOptions.Image")));
            this.xtraTabPage5.Name = "xtraTabPage5";
            this.xtraTabPage5.Size = new System.Drawing.Size(1364, 702);
            this.xtraTabPage5.Text = "Personel Rarporları";
            // 
            // firmalarTableAdapter
            // 
            this.firmalarTableAdapter.ClearBeforeFill = true;
            // 
            // reportViewer2
            // 
            this.reportViewer2.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource3.Name = "DataSet1";
            reportDataSource3.Value = this.giderlerBindingSource;
            this.reportViewer2.LocalReport.DataSources.Add(reportDataSource3);
            this.reportViewer2.LocalReport.ReportEmbeddedResource = "ticari_otomasyon.giderler.rdlc";
            this.reportViewer2.Location = new System.Drawing.Point(0, 0);
            this.reportViewer2.Name = "reportViewer2";
            this.reportViewer2.ServerReport.BearerToken = null;
            this.reportViewer2.Size = new System.Drawing.Size(1364, 702);
            this.reportViewer2.TabIndex = 0;
            // 
            // TicariOtomasyonDataSet1
            // 
            this.TicariOtomasyonDataSet1.DataSetName = "TicariOtomasyonDataSet1";
            this.TicariOtomasyonDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // giderlerBindingSource
            // 
            this.giderlerBindingSource.DataMember = "giderler";
            this.giderlerBindingSource.DataSource = this.TicariOtomasyonDataSet1;
            // 
            // giderlerTableAdapter
            // 
            this.giderlerTableAdapter.ClearBeforeFill = true;
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.reportViewer3);
            this.xtraTabPage1.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("xtraTabPage1.ImageOptions.Image")));
            this.xtraTabPage1.Name = "xtraTabPage1";
            this.xtraTabPage1.Size = new System.Drawing.Size(1364, 702);
            this.xtraTabPage1.Text = "Firma Raporları";
            // 
            // reportViewer3
            // 
            this.reportViewer3.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource2.Name = "DataSet1";
            reportDataSource2.Value = this.firmalarBindingSource;
            this.reportViewer3.LocalReport.DataSources.Add(reportDataSource2);
            this.reportViewer3.LocalReport.ReportEmbeddedResource = "ticari_otomasyon.firmalarReport.rdlc";
            this.reportViewer3.Location = new System.Drawing.Point(0, 0);
            this.reportViewer3.Name = "reportViewer3";
            this.reportViewer3.ServerReport.BearerToken = null;
            this.reportViewer3.Size = new System.Drawing.Size(1364, 702);
            this.reportViewer3.TabIndex = 0;
            // 
            // TicariOtomasyonDataSet2
            // 
            this.TicariOtomasyonDataSet2.DataSetName = "TicariOtomasyonDataSet2";
            this.TicariOtomasyonDataSet2.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportViewer4
            // 
            this.reportViewer4.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource4.Name = "DataSet1";
            reportDataSource4.Value = this.personellerBindingSource;
            this.reportViewer4.LocalReport.DataSources.Add(reportDataSource4);
            this.reportViewer4.LocalReport.ReportEmbeddedResource = "ticari_otomasyon.personeşreport.rdlc";
            this.reportViewer4.Location = new System.Drawing.Point(0, 0);
            this.reportViewer4.Name = "reportViewer4";
            this.reportViewer4.ServerReport.BearerToken = null;
            this.reportViewer4.Size = new System.Drawing.Size(1364, 702);
            this.reportViewer4.TabIndex = 0;
            // 
            // TicariOtomasyonDataSet3
            // 
            this.TicariOtomasyonDataSet3.DataSetName = "TicariOtomasyonDataSet3";
            this.TicariOtomasyonDataSet3.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // personellerBindingSource
            // 
            this.personellerBindingSource.DataMember = "personeller";
            this.personellerBindingSource.DataSource = this.TicariOtomasyonDataSet3;
            // 
            // personellerTableAdapter
            // 
            this.personellerTableAdapter.ClearBeforeFill = true;
            // 
            // TicariOtomasyonDataSet4
            // 
            this.TicariOtomasyonDataSet4.DataSetName = "TicariOtomasyonDataSet4";
            this.TicariOtomasyonDataSet4.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // musterilerBindingSource
            // 
            this.musterilerBindingSource.DataMember = "musteriler";
            this.musterilerBindingSource.DataSource = this.TicariOtomasyonDataSet4;
            // 
            // musterilerTableAdapter
            // 
            this.musterilerTableAdapter.ClearBeforeFill = true;
            // 
            // raporlar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1370, 749);
            this.Controls.Add(this.xtraTabControl1);
            this.Name = "raporlar";
            this.Text = "RAPORLAR";
            this.Load += new System.EventHandler(this.raporlar_Load);
            ((System.ComponentModel.ISupportInitialize)(this.firmalarBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TicariOtomasyonDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            this.xtraTabPage2.ResumeLayout(false);
            this.xtraTabPage4.ResumeLayout(false);
            this.xtraTabPage5.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.TicariOtomasyonDataSet1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.giderlerBindingSource)).EndInit();
            this.xtraTabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.TicariOtomasyonDataSet2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TicariOtomasyonDataSet3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.personellerBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TicariOtomasyonDataSet4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.musterilerBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraTab.XtraTabControl xtraTabControl1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage3;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage4;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage5;
        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource firmalarBindingSource;
        private TicariOtomasyonDataSet TicariOtomasyonDataSet;
        private TicariOtomasyonDataSetTableAdapters.firmalarTableAdapter firmalarTableAdapter;
        private Microsoft.Reporting.WinForms.ReportViewer reportViewer2;
        private System.Windows.Forms.BindingSource giderlerBindingSource;
        private TicariOtomasyonDataSet1 TicariOtomasyonDataSet1;
        private TicariOtomasyonDataSet1TableAdapters.giderlerTableAdapter giderlerTableAdapter;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage1;
        private Microsoft.Reporting.WinForms.ReportViewer reportViewer3;
        private TicariOtomasyonDataSet2 TicariOtomasyonDataSet2;
        private Microsoft.Reporting.WinForms.ReportViewer reportViewer4;
        private System.Windows.Forms.BindingSource personellerBindingSource;
        private TicariOtomasyonDataSet3 TicariOtomasyonDataSet3;
        private TicariOtomasyonDataSet3TableAdapters.personellerTableAdapter personellerTableAdapter;
        private System.Windows.Forms.BindingSource musterilerBindingSource;
        private TicariOtomasyonDataSet4 TicariOtomasyonDataSet4;
        private TicariOtomasyonDataSet4TableAdapters.musterilerTableAdapter musterilerTableAdapter;
    }
}