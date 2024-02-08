using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdmissionPortal {
    public partial class index1:System.Web.UI.Page {
        DatabaseConnection cn;
        protected void Page_Load(object sender, EventArgs e) {
            cn=new DatabaseConnection();
        }

        protected void Button1_Click(object sender, EventArgs e) {
            if(cn.login(tb_email.Text, tb_psrd.Text)) {
                Session["email"]=tb_email.Text;
                Response.Redirect("personal.aspx");
            } else {
                //show incorrect user or password
                string message = "Incorrect Username or Password";
                string script = $@"<script type='text/javascript'>alert('{message}');</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "ShowDialog", script);
            }
        }
    }
}