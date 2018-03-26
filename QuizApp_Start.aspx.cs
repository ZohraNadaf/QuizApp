using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuizApp_Start : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /*Redirecting to Register Page*/
    protected void btnsignup_Click(object sender, EventArgs e) //Object sender is a parameter called sender that contains a reference to the control object that raised the event. e is an instance of EventArgs, an object which inherits from EventArgs
    {
        Response.Redirect("QuizApp_SignUp.aspx");

    }

    /*Redirecting to Login Page*/
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("QuizApp_Login.aspx");
    }
}