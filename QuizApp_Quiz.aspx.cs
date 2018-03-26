using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

/*Class to handle the Quiz module of the Quiz App*/
public partial class Quiz : System.Web.UI.Page
{
    SqlConnection conn; // connection object
    SqlCommand cmd; // to execute the queries
    SqlDataAdapter da; // to fetch the rows from database
    string constr, str;
    DataTable dt = new DataTable(); // data structure to store the table from the database
    static int i; // to increment the question number
    static int counter; // to maintain the score
    static List<String> key = new List<String>(); // to store the correct answer option
    static List<String> ans = new List<String>(); // to store the options the user entered
    static List<string> report = new List<string>(); // to store the result of each answered question by the user. "Correct", "Wrong" and "Not Answered"
    static int timeLeftSec; // the time left in seconds
    static int timeLeftMin; // the time left in minutes
    static string userName; // to get the userName from the session object

    protected void Page_Load(object sender, EventArgs e)
    {
        userName = Convert.ToString(Session["userName"]);
        userNameLabel.Text = "Welcome, " + userName; // to display the userName from the session object
        TextBoxAnswer.Focus();
        /*To connect to database*/
        constr = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=QuizApp_GroupProject;Data Source=ZOHRA";
        conn = new SqlConnection(constr);
        
        if (!IsPostBack) /*To avoid execution on page load*/
        {
            i = 1000;
            counter = 0;
            LabelTimer.Text = "Time: 10 Minutes";
            timeLeftMin = 09;
            timeLeftSec = 59;

            /*Adding the correct answer options to the list*/
            key.Add("a");
            key.Add("d");
            key.Add("d");
            key.Add("a");
            key.Add("a");
            key.Add("c");
            key.Add("b");
            key.Add("c");
            key.Add("b");
            key.Add("c");
            key.Add("d");
            key.Add("c");
            key.Add("b");
            key.Add("d");
            key.Add("b");

            methodQuestion();//method call for questions gridview display

        }
       
    }

    /*On click of Next button*/
    protected void NextButton_Click(object sender, EventArgs e)
    {
        String value = TextBoxAnswer.Text;
        ans.Add(value);
        
        TextBoxAnswer.Text = "";
        ++i;
        if (i < 1015) //to fetch the next question
        {
            methodQuestion();
            
        }
        else
        {
            LabelTimer.Text = "Exam completed !";
            ReportGeneration(); // To generate the score and report at the end of the Quiz
        }
    }

    /*Fetch the question and display in gridview*/
    public void methodQuestion()
    {
        dt.Clear();
        da = new SqlDataAdapter("Select Question,OptionA,OptionB,OptionC,OptionD from QuizApp_Questions where QId=" + i, conn);
        da.Fill(dt);
        GridViewQuestion.DataSource = dt;
        GridViewQuestion.DataBind();

    }

    /*To handle the timer*/
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        if (timeLeftSec > 1)
        {
            timeLeftSec = timeLeftSec - 1;

            LabelTimer.Text = "Time : " + timeLeftMin + " minutes " + timeLeftSec + " seconds ";
        }
        else
        {

            if (timeLeftMin > 0)
            {

                timeLeftMin = timeLeftMin - 1;
                if (timeLeftMin < 1)
                {
                    LabelTimer.ForeColor = System.Drawing.Color.Red;
                }
                LabelTimer.Text = "Time :" + timeLeftMin + "Minutes";
                timeLeftSec = 60;
            }
            else
            {
                LabelTimer.Text = "Time up";
                ReportGeneration();
            
            }

        }

       
    }

    /*To generate the score and report at the end of the Quiz*/
    public void ReportGeneration()
    {
        Timer1.Enabled = false;
        if (ans.Count() < key.Count())
        {
            for (int i = ans.Count(); i < key.Count; i++)
            {
                ans.Add("");
            }
        }


        for (int j = 0; j < ans.Count(); j++)
        {
            if (StringComparer.OrdinalIgnoreCase.Equals(key[j], ans[j]))
            {
                report.Add("Correct");
                counter++;
            }
            else if (StringComparer.OrdinalIgnoreCase.Equals(ans[j], ""))
            {
                report.Add("Not Answered");
            }
            else
            {
                report.Add("Wrong");
            }

        }
        Session.Add("Counter", counter);
        Session["Report"] = report;
        Response.Redirect("QuizApp_Result.aspx");
    }
}