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
    public partial class Categories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCategory();
            }
        }
        private string MyCon()
        {
            return @"Data Source =.; Initial Catalog =GroseryDB; Integrated Security =SSPI ";
        }
        public void LoadCategory ()
        {

            string gName = "select* from Categories";

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
            if (txtCateName.Text == "" || txtCateRe.Text=="")
            {
                err.Text = "Some Data are Missing ";
                LoadCategory();
            }
            else
            {
                SqlConnection MyConnection = new SqlConnection(MyCon());

                string MyInsQ = "Insert into Categories (CatName,CatDescription) Values(@SN,@SE)";

                SqlCommand MyCmd = new SqlCommand(MyInsQ, MyConnection);

                MyConnection.Open();

                MyCmd.Parameters.AddWithValue("@SN", txtCateName.Text);
                MyCmd.Parameters.AddWithValue("@SE", txtCateRe.Text);
                MyCmd.ExecuteNonQuery();

                txtCateName.Text = string.Empty;
                txtCateRe.Text = string.Empty;
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
            try
            {
                if (txtCateName.Text == "")
                {
                    err.Text = "Missing Data";
                }
                else
                {
                    using (SqlConnection Sqlconnection = new SqlConnection(MyCon()))
                    {
                        Sqlconnection.Open();

                        string MyQ = "Delete from Students where StuID=@ID";
                        SqlCommand MyCmd = new SqlCommand(MyQ, Sqlconnection);
                        MyCmd.Parameters.AddWithValue("@ID", GridView1.SelectedRow.Cells[1].Text);
                        MyCmd.ExecuteNonQuery();

                        Sqlconnection.Close();
                    }
                }
            }

            catch(Exception ex)
            {
                err.Text = ex.Message;
            }
        }
        int key = 0;
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCateName.Text = GridView1.SelectedRow.Cells[1].Text;
            txtCateRe.Text = GridView1.SelectedRow.Cells[2].Text;
           

            if (txtCateName.Text == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            }
        }
    }
}