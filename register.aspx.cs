using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdmissionPortal {
    public partial class register:System.Web.UI.Page {
        DatabaseConnection cn;
        protected void Page_Load(object sender, EventArgs e) {
            cn=new DatabaseConnection();
        }

        protected void show(String message) {
            string script = $@"<script type='text/javascript'>alert('{message}');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "ShowDialog", script);
        }

        protected void btn_register_Click(object sender, EventArgs e) {
            if(tb_psrd.Text.Equals(tb_npsrd.Text)) {
                if(cn.emailExists(tb_email.Text)) {
                    //show email already taken
                    show("Email already registered !");
                } else {
                    if(cn.insertInRegister(tb_email.Text, tb_psrd.Text, tb_no.Text)>0) {
                        //show user Registered
                        show("User Registered Successfully !");
                        Response.Redirect("index.aspx");
                    } else {
                        //show registration failed
                        show("User Registration Failed !");
                    }
                }
            } else {
                //show password does not match
                show("New Password does not match !");
            }
        }
    }
}