using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

/*Class to handle the Login module of the Quiz App*/
public partial class QuizApp_Login : System.Web.UI.Page
{
    SqlConnection conn; //connection object
    SqlCommand cmd; // to execute the queries
    SqlDataAdapter da; // to fetch the rows from database

    string constr, str;
    protected void Page_Load(object sender, EventArgs e)
    {
        /*Connecting to the database*/
        constr = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=QuizApp_GroupProject;Data Source=ZOHRA";
        conn = new SqlConnection(constr);
        txtloginname.Focus();
    }

    /*On click of Login button*/
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        da = new SqlDataAdapter("Select Count(*) from QuizApp_SignUp where Name='" 
            + txtloginname.Text + "' and password='" + txtpassword.Text + "'", conn); // Here it provides the communication between the dataset and SQLdb
        DataTable dt = new DataTable(); // data structure to store the table from the database
        da.Fill(dt); //to dump everything into a data table
        if (dt.Rows[0][0].ToString() == "1")
        {
            Session.Add("userName", txtloginname.Text); // storing the username in the session object
            Response.Redirect("QuizApp_Instructions.aspx"); //redirecting to Instructions page

        }
        else
        {
            Response.Redirect("QuizApp_Login.aspx"); //stay in Login page until the user enters correct username and password
        }
    }
}