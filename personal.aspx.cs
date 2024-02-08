using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdmissionPortal {
    public partial class index:System.Web.UI.Page {
        String[] values = null;
        DatabaseConnection db = null;
        String email;
        protected void Page_Load(object sender, EventArgs e) {
            email=(String)Session["email"];
        }

        protected void btn_save_Click(object sender, EventArgs e) {
            string gender = "";
            if(rb_male.Checked) {
                gender="male";
            } else if(rb_female.Checked) {
                gender="female";
            } else if(rb_other.Checked) {
                gender="other";
            }
            values = new string[] { tb_fname.Text, tb_mname.Text, tb_lname.Text, tb_mother.Text, gender, tb_dob.Text, tb_no1.Text, tb_no2.Text, tb_email.Text, tb_pgNo.Text, tb_pgEmail.Text, tb_a1.Text, tb_a2.Text, tb_district.Text, tb_state.Text, tb_pin.Text };
            db=new DatabaseConnection();
            db.insertInPersonal(db.getId(email), values);
            //show inserted message
            Response.Redirect("edu.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e) {
            Session.Clear();
            Response.Redirect("index.aspx");
        }
    }
}