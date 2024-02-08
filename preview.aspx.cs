using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdmissionPortal {
    public partial class preview:System.Web.UI.Page {

        String email;
        TextBox[] tbs = new TextBox[30];
        String[] values = new String[30];
        DatabaseConnection dc;
        protected void Page_Load(object sender, EventArgs e) {
            email=(String)Session["email"];
            dc=new DatabaseConnection();
            //load all data
            for(int i = 0; i<30; i++) {
                tbs[i]=(TextBox)FindControl("tb"+i);
            }
            values=dc.getAll(dc.getId(email));
            for(int i = 0; i<30; i++) {
                tbs[i].Text=values[i];
                tbs[i].ReadOnly=true;
            }
        }

        protected void btn2_Click(object sender, EventArgs e) {
            Response.Redirect("personal.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e) {
            Session.Clear();
            Response.Redirect("index.aspx");
        }
    }
}