using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EXAM
{
    public partial class İş_Başvuru : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                TextBoxMessaj.Enabled = true;
                TextBoxMessaj.Visible = true;
                for (int i = 0; i<8; i++)
                {
                    DropDownToplam.Items.Add(i.ToString());
                }

            }
        }

        protected void BtnGönder_Click(object sender, EventArgs e)
        {
            string Ad = TxtAd.Text;
            string Soyad = TxtSoyad.Text;   
            string ceb_telephon= TxtCebTelephonu.Text;
            string email = TxtEmail.Text;
            DateTime Doğum_tarihi = Convert.ToDateTime( TxtDoğum.Text);
            string cinsiyet = DropDownCinsiyet.SelectedItem.ToString();
            string uyruk = DropDownUyruk.SelectedItem.ToString();
            string çalişma = DropDownÇlalişmak.SelectedItem.ToString();
            string engelli_durumu= RadioButtonList1.SelectedItem.ToString();
            string eğitim = DropDownEğitim.SelectedItem.ToString();
            string seviye = DropDownSeviye.SelectedItem.ToString(); 
            string tecrube = DropDownToplam.SelectedItem.ToString();
            string çalişiyorsa= RadioButtonList2.SelectedItem.ToString();
            string tecrube_bilgisi = TextBoxMessaj.Text;
            string pozisyon = DropDownPozisyon.SelectedItem.ToString();
            string ToplamYıl = DropDownToplam.SelectedItem.ToString();
            

           başvuru entity = new başvuru();
            entity.AD = Ad;
            entity.SOYAD = Soyad;
            entity.ceb_telefon = ceb_telephon;
            entity.Email = email;
            entity.Dogum_Tarihi =Doğum_tarihi;
            entity.Cinsiyet = cinsiyet;
            entity.Uyruk = uyruk;
            entity.calisma = çalişma;
            entity.Engelli_Durumu = engelli_durumu;
            entity.Egitim_Durumu = eğitim;
            entity.Egitim_seviye = seviye;
            entity.İs_tecrube_girmek = tecrube;
            entity.herhangi_yerde_calismak = çalişiyorsa;
            entity.İs_tecrube_girmek = tecrube_bilgisi;
            entity.pozisyon= pozisyon;
            entity.ToplamYıl = ToplamYıl;

            examEntities vt = new examEntities();
            vt.başvuru.Add(entity);
            vt.SaveChanges();
            GridView1.DataBind();



        }

        protected void CheckBoxİşTecrube_CheckedChanged(object sender, EventArgs e)
        {
            if(CheckBoxİşTecrube.Checked==true)
            {
                TextBoxMessaj.Enabled = true;
                TextBoxMessaj.Visible = true;
            }
            else
            {
                TextBoxMessaj.Enabled = false;
                TextBoxMessaj.Visible = false;
            }
        }
    }
}