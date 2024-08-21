using System;
using System.Net;
using System.Net.Mail;
using System.Windows.Forms;

namespace ticari_otomasyon
{
    public partial class mail : Form
    {
        public String adres;

        public mail()
        {
            InitializeComponent();
        }

        private void mail_Load(object sender, EventArgs e)
        {
            labelControl3.Text = adres;
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mgs = new MailMessage();
                SmtpClient istemci = new SmtpClient();

                istemci.Credentials = new NetworkCredential("serkanaltunay0203@gmail.com", "serkan0203");
                istemci.Port = 587;
                istemci.Host = "smtp.gmail.com";
                istemci.EnableSsl = true;

                mgs.To.Add(adres); // 'adres' değişkenini 'mgs.To.Add()' metoduna ekliyorum, çünkü 'adres' değişkeninde alıcının e-posta adresi olduğunu varsayıyorum.
                mgs.From = new MailAddress("serkanaltunay0203@gmail.com");
                mgs.Subject = textEdit2.Text; // 'textEdit2' yerine formunuzda konu girişi için hangi kontrolü kullanıyorsanız, o kontrolün adını kullanmalısınız.
                mgs.Body = richTextBox1.Text; // 'richTextBox1' yerine formunuzda metin girişi için hangi kontrolü kullanıyorsanız, o kontrolün adını kullanmalısınız.

                istemci.Send(mgs);

                MessageBox.Show("E-posta başarıyla gönderildi.", "Başarılı", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show("E-posta gönderirken bir hata oluştu:\n\n" + ex.Message, "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
