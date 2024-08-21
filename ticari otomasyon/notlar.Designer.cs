namespace ticari_otomasyon
{
    partial class notlar
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(notlar));
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            this.texthitap = new DevExpress.XtraEditors.TextEdit();
            this.texttarih = new System.Windows.Forms.MaskedTextBox();
            this.textssat = new System.Windows.Forms.MaskedTextBox();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.textoluşturan = new DevExpress.XtraEditors.TextEdit();
            this.textbaşlık = new DevExpress.XtraEditors.TextEdit();
            this.butongüncelle = new DevExpress.XtraEditors.SimpleButton();
            this.butonsil = new DevExpress.XtraEditors.SimpleButton();
            this.butonkaydet = new DevExpress.XtraEditors.SimpleButton();
            this.textid = new DevExpress.XtraEditors.TextEdit();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.texthitap.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.textoluşturan.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textbaşlık.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textid.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // gridControl1
            // 
            this.gridControl1.Location = new System.Drawing.Point(-2, 5);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(1105, 739);
            this.gridControl1.TabIndex = 4;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Appearance.Row.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.gridView1.Appearance.Row.BackColor2 = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.gridView1.Appearance.Row.Options.UseBackColor = true;
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsView.ShowGroupPanel = false;
            this.gridView1.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.gridView1_FocusedRowChanged);
            this.gridView1.DoubleClick += new System.EventHandler(this.gridView1_DoubleClick);
            // 
            // richTextBox1
            // 
            this.richTextBox1.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.richTextBox1.Location = new System.Drawing.Point(78, 221);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.Size = new System.Drawing.Size(155, 86);
            this.richTextBox1.TabIndex = 6;
            this.richTextBox1.Text = "";
            // 
            // texthitap
            // 
            this.texthitap.Location = new System.Drawing.Point(78, 187);
            this.texthitap.Name = "texthitap";
            this.texthitap.Size = new System.Drawing.Size(155, 20);
            this.texthitap.TabIndex = 5;
            // 
            // texttarih
            // 
            this.texttarih.Location = new System.Drawing.Point(80, 63);
            this.texttarih.Mask = "00/00/0000";
            this.texttarih.Name = "texttarih";
            this.texttarih.Size = new System.Drawing.Size(152, 21);
            this.texttarih.TabIndex = 1;
            this.texttarih.ValidatingType = typeof(System.DateTime);
            // 
            // textssat
            // 
            this.textssat.Location = new System.Drawing.Point(80, 100);
            this.textssat.Mask = "00:00";
            this.textssat.Name = "textssat";
            this.textssat.Size = new System.Drawing.Size(152, 21);
            this.textssat.TabIndex = 2;
            this.textssat.ValidatingType = typeof(System.DateTime);
            // 
            // groupControl1
            // 
            this.groupControl1.Controls.Add(this.simpleButton1);
            this.groupControl1.Controls.Add(this.textoluşturan);
            this.groupControl1.Controls.Add(this.textbaşlık);
            this.groupControl1.Controls.Add(this.richTextBox1);
            this.groupControl1.Controls.Add(this.texthitap);
            this.groupControl1.Controls.Add(this.texttarih);
            this.groupControl1.Controls.Add(this.textssat);
            this.groupControl1.Controls.Add(this.butongüncelle);
            this.groupControl1.Controls.Add(this.butonsil);
            this.groupControl1.Controls.Add(this.butonkaydet);
            this.groupControl1.Controls.Add(this.textid);
            this.groupControl1.Controls.Add(this.labelControl7);
            this.groupControl1.Controls.Add(this.labelControl6);
            this.groupControl1.Controls.Add(this.labelControl5);
            this.groupControl1.Controls.Add(this.labelControl4);
            this.groupControl1.Controls.Add(this.labelControl3);
            this.groupControl1.Controls.Add(this.labelControl2);
            this.groupControl1.Controls.Add(this.labelControl1);
            this.groupControl1.Location = new System.Drawing.Point(1109, 5);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(263, 739);
            this.groupControl1.TabIndex = 5;
            this.groupControl1.Text = " ";
            // 
            // simpleButton1
            // 
            this.simpleButton1.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.simpleButton1.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton1.ImageOptions.Image")));
            this.simpleButton1.Location = new System.Drawing.Point(80, 427);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(153, 32);
            this.simpleButton1.TabIndex = 31;
            this.simpleButton1.Text = "Temizle";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // textoluşturan
            // 
            this.textoluşturan.Location = new System.Drawing.Point(77, 156);
            this.textoluşturan.Name = "textoluşturan";
            this.textoluşturan.Size = new System.Drawing.Size(155, 20);
            this.textoluşturan.TabIndex = 4;
            // 
            // textbaşlık
            // 
            this.textbaşlık.Location = new System.Drawing.Point(78, 130);
            this.textbaşlık.Name = "textbaşlık";
            this.textbaşlık.Size = new System.Drawing.Size(155, 20);
            this.textbaşlık.TabIndex = 3;
            // 
            // butongüncelle
            // 
            this.butongüncelle.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("butongüncelle.ImageOptions.Image")));
            this.butongüncelle.Location = new System.Drawing.Point(80, 389);
            this.butongüncelle.Name = "butongüncelle";
            this.butongüncelle.Size = new System.Drawing.Size(153, 32);
            this.butongüncelle.TabIndex = 20;
            this.butongüncelle.Text = "Güncelle";
            this.butongüncelle.Click += new System.EventHandler(this.butongüncelle_Click);
            // 
            // butonsil
            // 
            this.butonsil.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("butonsil.ImageOptions.Image")));
            this.butonsil.Location = new System.Drawing.Point(80, 351);
            this.butonsil.Name = "butonsil";
            this.butonsil.Size = new System.Drawing.Size(153, 32);
            this.butonsil.TabIndex = 19;
            this.butonsil.Text = "Sil";
            this.butonsil.Click += new System.EventHandler(this.butonsil_Click);
            // 
            // butonkaydet
            // 
            this.butonkaydet.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("butonkaydet.ImageOptions.Image")));
            this.butonkaydet.Location = new System.Drawing.Point(80, 313);
            this.butonkaydet.Name = "butonkaydet";
            this.butonkaydet.Size = new System.Drawing.Size(153, 32);
            this.butonkaydet.TabIndex = 18;
            this.butonkaydet.Text = "Kaydet";
            this.butonkaydet.Click += new System.EventHandler(this.butonkaydet_Click);
            // 
            // textid
            // 
            this.textid.Location = new System.Drawing.Point(77, 33);
            this.textid.Name = "textid";
            this.textid.Size = new System.Drawing.Size(155, 20);
            this.textid.TabIndex = 100;
            // 
            // labelControl7
            // 
            this.labelControl7.Appearance.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.labelControl7.Appearance.Options.UseFont = true;
            this.labelControl7.Location = new System.Drawing.Point(28, 220);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(44, 18);
            this.labelControl7.TabIndex = 6;
            this.labelControl7.Text = "Detay:";
            // 
            // labelControl6
            // 
            this.labelControl6.Appearance.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.labelControl6.Appearance.Options.UseFont = true;
            this.labelControl6.Location = new System.Drawing.Point(28, 186);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(38, 18);
            this.labelControl6.TabIndex = 5;
            this.labelControl6.Text = "Hitap:";
            // 
            // labelControl5
            // 
            this.labelControl5.Appearance.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.labelControl5.Appearance.Options.UseFont = true;
            this.labelControl5.Location = new System.Drawing.Point(5, 156);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(67, 18);
            this.labelControl5.TabIndex = 4;
            this.labelControl5.Text = "Oluşturan:";
            // 
            // labelControl4
            // 
            this.labelControl4.Appearance.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.labelControl4.Appearance.Options.UseFont = true;
            this.labelControl4.Location = new System.Drawing.Point(28, 129);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(40, 18);
            this.labelControl4.TabIndex = 3;
            this.labelControl4.Text = "Başlık:";
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.labelControl3.Appearance.Options.UseFont = true;
            this.labelControl3.Location = new System.Drawing.Point(30, 99);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(34, 18);
            this.labelControl3.TabIndex = 2;
            this.labelControl3.Text = "Saat:";
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.labelControl2.Appearance.Options.UseFont = true;
            this.labelControl2.Location = new System.Drawing.Point(30, 66);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(38, 18);
            this.labelControl2.TabIndex = 1;
            this.labelControl2.Text = "Tarih:";
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Location = new System.Drawing.Point(41, 32);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(21, 18);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "İD:";
            // 
            // notlar
            // 
            this.AcceptButton = this.butonkaydet;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.simpleButton1;
            this.ClientSize = new System.Drawing.Size(1370, 749);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.groupControl1);
            this.Name = "notlar";
            this.Text = "notlar";
            this.Load += new System.EventHandler(this.notlar_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.texthitap.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.textoluşturan.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textbaşlık.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textid.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private System.Windows.Forms.RichTextBox richTextBox1;
        private DevExpress.XtraEditors.TextEdit texthitap;
        private System.Windows.Forms.MaskedTextBox texttarih;
        private System.Windows.Forms.MaskedTextBox textssat;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.SimpleButton butongüncelle;
        private DevExpress.XtraEditors.SimpleButton butonsil;
        private DevExpress.XtraEditors.SimpleButton butonkaydet;
        private DevExpress.XtraEditors.TextEdit textid;
        private DevExpress.XtraEditors.LabelControl labelControl7;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit textoluşturan;
        private DevExpress.XtraEditors.TextEdit textbaşlık;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
    }
}