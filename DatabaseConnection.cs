using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AdmissionPortal {    
    public class DatabaseConnection {
        SqlConnection connection = null;
        SqlCommand cmd = null;
        String sql = null;
        public DatabaseConnection() {
            connection=new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hari4\VisualStudioProjects\AdmissionPortal\App_Data\admission.mdf;Integrated Security=True;Connect Timeout=30");
            connection.Open();
        }
        public int getId(String email) {
            sql="SELECT id FROM register WHERE email=@Email";
            cmd=new SqlCommand(sql, connection);
            cmd.Parameters.AddWithValue("@Email", email);
            object result = cmd.ExecuteScalar();
            if(result!=null)
                return Convert.ToInt32(result);
            else return 0;
        }
        public void insertInPersonal(int uid, String[] values) {
            sql="INSERT INTO personal (uid, fname, mname, lname, mother, gender, dob," +
                "no1, no2, email, pgno, pgemail, a1, a2, district, state, pin) VALUES("+
                uid+",'"+values[0]+"','"+values[1]+
                "','"+values[2]+"','"+values[3]+"','"+values[4]+"','"+values[5]+"','"+values[6]
                +"','"+values[7]+"','"+values[8]+"','"+values[9]+"','"+values[10]
                +"','"+values[11]+"','"+values[12]+"','"+values[13]+"','"+values[14]
                +"','"+values[15]+"')";
            cmd=new SqlCommand(sql, connection);
            cmd.ExecuteNonQuery();
        }
        public void insertInEdu(int uid, String[] values) {
            sql="INSERT INTO edu (uid, level, course, xschool, xboard, xmark, xyear, [12name]," +
                "[12uni], [12mark], [12year], gname, guni, gmark, gyear) VALUES("+
                uid+",'"+values[0]+"','"+values[1]+
                "','"+values[2]+"','"+values[3]+"','"+values[4]+"','"+values[5]+"','"+values[6]
                +"','"+values[7]+"','"+values[8]+"','"+values[9]+"','"+values[10]
                +"','"+values[11]+"','"+values[12]+"','"+values[13]+"')";
            cmd=new SqlCommand(sql, connection);
            cmd.ExecuteNonQuery();
        }
        public String[] getAll(int id) {
            sql="SELECT " +
                "a.fname, a.mname, a.lname, a.mother, a.gender, a.dob,"+
                "a.no1, a.no2, a.email, a.pgno, a.pgemail, a.a1, a.a2, a.district, " +
                "a.state, a.pin, b.level, b.course, b.xschool, b.xboard, b.xmark, " +
                "b.xyear, b.[12name], b.[12uni], b.[12mark], b.[12year], b.gname, b.guni, " +
                "b.gmark, b.gyear FROM personal a INNER JOIN edu b ON a.id = b.id " +
                "WHERE a.id="+id+";";

            cmd=new SqlCommand(sql, connection);
            SqlDataReader reader = cmd.ExecuteReader();
            List<String> result = new List<String>();
            while(reader.Read()) {
                string rowValue = "";
                for(int i = 0; i<reader.FieldCount; i++) {
                    /*rowValue+=reader[i].ToString()+" ";
                    result.Add(rowValue.Trim());
                    */
                    result.Add(reader[i].ToString());
                }
            }
            String[] resultArray = result.ToArray();
            return resultArray;
        }
        public int insertInRegister(string email, string pass, string contact) {
            sql="INSERT INTO register (email, pass, contact) VALUES ('"+email+"','"+pass+"','"+contact+"')";
            cmd=new SqlCommand(sql, connection);
            return cmd.ExecuteNonQuery();
        }
        public bool emailExists(string email) {
            sql="SELECT * FROM register WHERE email='"+email+"';";
            cmd=new SqlCommand(sql, connection);
            if(Convert.ToInt32(cmd.ExecuteScalar())>0) return true;
            else return false;
        }

        public bool login(string email, string psrd) {
            sql="SELECT * FROM register WHERE email='"+email+"' AND pass='"+psrd+"';";
            cmd=new SqlCommand(sql, connection);
            if(Convert.ToInt32(cmd.ExecuteScalar())>0) return true;
            else return false;
        }
    }
}