using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

/*Class to handle the Registration module of the Quiz App*/
public partial class QuizApp_SignUp : System.Web.UI.Page
{
    SqlConnection conn; //connection object
    SqlCommand cmd; //to execute the queries

    string constr, str;
    protected void Page_Load(object sender, EventArgs e)
    {
        /*Connecting to the database*/
        constr = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=QuizApp_GroupProject;Data Source=ZOHRA";
        conn = new SqlConnection(constr);
    }

    /*On click of Register button*/
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        conn.Open();
        str = "insert into QuizApp_SignUp values('" + txtname.Text + "','" + txtpwd.Text + "','" + txtconfirm.Text + "'," + txtage.Text + ",'" + txtemail.Text + "')  ";
        cmd = new SqlCommand(str, conn);
        cmd.ExecuteNonQuery();
        conn.Close();

        /*After the successful registration redirect to start page for user to login*/
        Response.Redirect("QuizApp_Start.aspx");
    }

    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
}