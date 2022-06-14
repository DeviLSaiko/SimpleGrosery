using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebUI.View.Admin
{
    public partial class Sellers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadSellers( );
            }
        }
        private string MyCon()
        {
            return @"Data Source =.; Initial Catalog =GroseryDB; Integrated Security =SSPI ";
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            SqlConnection MyConnection = new SqlConnection(MyCon());

            string MyInsQ = "Insert into SellerInfo (SellerName,SellerEmail,SellerPass,SellerPhone,SellerAddress) Values(@SN,@SE,@SP,@SM,@SA)";

            SqlCommand MyCmd = new SqlCommand(MyInsQ, MyConnection);

            MyConnection.Open();

            MyCmd.Parameters.AddWithValue("@SN", txtSellerNa.Text);
            MyCmd.Parameters.AddWithValue("@SE", txtSellerEmail.Text);
            MyCmd.Parameters.AddWithValue("@SP", txtSellerPass.Text);
            MyCmd.Parameters.AddWithValue("@SM", txtSellePh.Text);
            MyCmd.Parameters.AddWithValue("@SA", txtSellerAdd.Text);
            MyCmd.ExecuteNonQuery();

            txtSellerNa.Text = string.Empty;
            txtSellerEmail.Text = string.Empty;
            txtSellerPass.Text = string.Empty;
            txtSellePh.Text = string.Empty;
            txtSellerAdd.Text = string.Empty;
            LoadSellers( );

            MyConnection.Close();
            LoadSellers( );
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {

        }
        public void LoadSellers()
        {

            string gName = "select* from SellerInfo";

           DataTable MyTable = new DataTable();

            using (SqlConnection Sqlconnection = new SqlConnection(MyCon()))
            {
                SqlDataAdapter myada = new SqlDataAdapter(gName, Sqlconnection);
                myada.Fill(MyTable);
            }

            GridView1.DataSource = MyTable;
            GridView1.DataBind();
        }
    }
}

