using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace programlama2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection con = new SqlConnection("Data Source=ANKZRVGMT33251\\SQLC;Initial Catalog=Programlama2;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into OgrenciBilgileri values ('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + double.Parse(TextBox3.Text) + "','" + TextBox4.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Kayıt eklendi');", true);
            LoadRecord();
        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from OgrenciBilgileri", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            System.Data.DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand comm = new SqlCommand("update OgrenciBilgileri set OgrenciAdiSoyadi = '" + TextBox2.Text + "', Adres = '" + DropDownList1.SelectedValue + "', Yas = '" + double.Parse(TextBox3.Text) + "', İletisim = '" + TextBox4.Text + "' where OgrenciNo = '" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Kayıt güncellendi');", true);
            LoadRecord();
        }
    }

}