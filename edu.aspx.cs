using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdmissionPortal {
    public partial class edu:System.Web.UI.Page {
        String[] values = null;
        String email;
        DatabaseConnection db = null;
        String[] dd_jc = { "Science-PCM", "Science-PCB", "Commerce", "Arts"},
            dd_ug = { "BCA", "BCS", "BBA", "B.Sc", "B.Com", "BA" },
            dd_pg = { "MCA", "MS", "MBA", "M.Sc", "M.Com", "MA" };
        protected void Page_Load(object sender, EventArgs e) {
            //get email
            email = (string)Session["email"];
            //load data for junior college data START
            foreach(string item in dd_jc) {
                dd_course.Items.Add(new ListItem(item));
            }
            x.Visible=true;
            xii.Visible=false;
            grad.Visible=false;
            //load data for junior college data END
        }

        protected void btn_save_Click(object sender, EventArgs e) {
            values=new string[] { dd_level.SelectedItem.ToString(), dd_course.SelectedItem.ToString(),
                tb_xSchool.Text,
            tb_xBoard.Text, tb_xMark.Text, tb_xYear.Text, tb_12name.Text, tb_12uni.Text, tb_12mark.Text,
            tb_12year.Text, tb_gName.Text, tb_gUni.Text, tb_gMark.Text, tb_gYear.Text
            };
            db=new DatabaseConnection();
            db.insertInEdu(db.getId(email), values);
            //show inserted message
            Response.Redirect("preview.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e) {
            Session.Clear();
            Response.Redirect("index.aspx");
        }

        protected void dd_level_SelectedIndexChanged(object sender, EventArgs e) {
            dd_course.Items.Clear();
            string selectedValue = dd_level.SelectedItem.ToString();
            if(selectedValue.Equals("PG")) {
                //populate pg courses
                foreach(string item in dd_pg) {
                    dd_course.Items.Add(new ListItem(item));
                }
                //show all
                x.Visible=true;
                xii.Visible=true;
                grad.Visible=true;
            } else if(selectedValue.Equals("UG")) {
                //populate ug courses
                foreach(string item in dd_ug) {
                    dd_course.Items.Add(new ListItem(item));
                }
                //hide grad div
                x.Visible=true;
                xii.Visible=true;
                grad.Visible=false;
            } else {
                //populate juniorCollege courses
                foreach(string item in dd_jc) {
                    dd_course.Items.Add(new ListItem(item));
                }
                //hide xii & graduation
                x.Visible=true;
                xii.Visible=false;
                grad.Visible=false;
            }
        }

        protected void dd_course_SelectedIndexChanged(object sender, EventArgs e) {

        }
    }
}