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
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                DataTable MyTable = new DataTable();

                using (SqlConnection Sqlconnection = new SqlConnection(MyCon()))
                {
                    SqlDataAdapter myada = new SqlDataAdapter("select * from Categories ", Sqlconnection);
                    myada.Fill(MyTable);
                }
                ddProCateto.DataTextField = "CatName";
                ddProCateto.DataValueField = "CatID";
                ddProCateto.DataSource = MyTable;
                ddProCateto.DataBind();


                LoadCategory();
            }
        }
        private string MyCon()
        {
            return @"Data Source =.; Initial Catalog =GroseryDB; Integrated Security =SSPI ";
        }
        public void LoadCategory()
        {

            string gName = "select* from Products";

            DataTable MyTable = new DataTable();

            using (SqlConnection Sqlconnection = new SqlConnection(MyCon()))
            {
                SqlDataAdapter myada = new SqlDataAdapter(gName, Sqlconnection);
                myada.Fill(MyTable);
            }

            GridView1.DataSource = MyTable;
            GridView1.DataBind();
        }
        protected void BtnSave_Click(object sender, EventArgs e)
        {
            if (txtProName.Text == "" || txtProExpDate.Text=="" || txtProPrice.Text=="" || txtProQtty.Text=="")
            {
                err.Text = "Some Data are Missing ";
                LoadCategory();
            }
            else
            {
                SqlConnection MyConnection = new SqlConnection(MyCon());

                string MyInsQ = "Insert into Products (ProName,ProCat,ProPrice,ProQty,ProEExpDate) Values(@PN,@PC,@PP,@PQ,@PE)";

                SqlCommand MyCmd = new SqlCommand(MyInsQ, MyConnection);

                MyConnection.Open();

                MyCmd.Parameters.AddWithValue("@PN", txtProName.Text);
                MyCmd.Parameters.AddWithValue("@PC", ddProCateto.SelectedValue);
                MyCmd.Parameters.AddWithValue("@PP", txtProPrice.Text);
                MyCmd.Parameters.AddWithValue("@PQ", txtProQtty.Text);
                MyCmd.Parameters.AddWithValue("@PE", txtProExpDate.Text);
                MyCmd.ExecuteNonQuery();

                txtProName.Text = string.Empty;
                txtProExpDate.Text = string.Empty;
                txtProPrice.Text = string.Empty;
                txtProQtty.Text = string.Empty;
               
                LoadCategory();

                MyConnection.Close();
                LoadCategory();
                err.Text = "Added";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {

        }
    }
}