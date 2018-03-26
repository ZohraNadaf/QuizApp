using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*Class to handle the Instructions page of the Quiz App*/
public partial class QuizApp_Instructions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Line1_1.Text = "Quiz Topic: ";
        Line1_2.Text = "Advance Application Development in C# .NET";
        Line2_1.Text = "Number of Questions: ";
        Line2_2.Text = "15";
        Line3_1.Text = "Time allocated: ";
        Line3_2.Text = "10 minutes";
        Line4_1.Text = "Total marks: ";
        Line4_2.Text = "15 marks";
        Line5_1.Text = "NOTE: ";
        Line6_1.Text = "The next screen will be the quiz. The timer will start immediately after you begin the quiz.";
        Line7_1.Text = "Read question carefully before answering. Enter only the correct option. (e.g., a). Each question carries one mark.";
        Line8_1.Text = "GOOD LUCK!!!";
    }

    /*On click of Begin Quiz button*/
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("QuizApp_Quiz.aspx");
    }
}