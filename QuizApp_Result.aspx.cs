using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

/*Class to handle the Result module of the Quiz App*/
public partial class QuizApp_Result : System.Web.UI.Page
{

    static string score; // to access the score of the user from Session Object
    static List<string> report = new List<string>(); // to access the result of each answered question by the user from the session object
    DataTable dt = new DataTable(); // data structure to store the table from the database
    protected void Page_Load(object sender, EventArgs e)
    {
        string userName = Convert.ToString(Session["userName"]); //to get the userName from the session object
        userNameLabel.Text = userName + " , your Quiz Report is displayed below";

        if (!IsPostBack) /*To avoid execution on page load*/
        { 
            score = Convert.ToString(Session["Counter"]);
            if (Session["Report"] != null)
            {
                report = Session["Report"] as List<string>;

            }
          
            dt.Columns.Add("Question Number");
            dt.Columns.Add("Result");
            for (int i = 0; i < report.Count(); i++)
            {
                dt.Rows.Add(i+1, report[i]);
            }
           
            GridViewReport.DataSource = dt;
            GridViewReport.DataBind();
            ScoreLabel.Text = "Total marks: " + score;
        }
    }  
       
}