using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;
using System.Configuration;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
      {
         Label1.Text = string.Empty;
         Label2.Visible = true;
         DisplayConfigTags();
        // Button1.Attributes.Add("OnClientClick",
        //"return confirm('Are you sure you want to do this');");
         if (!IsPostBack)
         {
             NameValueCollection sKey = ConfigurationManager.AppSettings;
             foreach (string s in sKey.AllKeys)
             {
                 Label10.Text = s;
                 KeyList1.Items.Add(Label10.Text);
             }
             KeyList1.DataBind();
             Button6.Enabled = false;
             Button2.Enabled = false;
             Button3.Enabled = false;
             Button4.Enabled = false;
             Button5.Enabled = false;
         }
    }


    protected void Add_values(object sender, EventArgs e)
    {
        if (TextBox1.Text == string.Empty && TextBox2.Text==string.Empty)
        {
        
        }
        else
        {
            string Key_c = TextBox1.Text.ToString().Trim();
            string Value_c = TextBox2.Text.ToString().Trim();
            Configuration webConfigApp = WebConfigurationManager.OpenWebConfiguration("~");
            webConfigApp.AppSettings.Settings.Add(Key_c, Value_c);
            webConfigApp.Save();
            DisplayConfigTags();
            Label1.Visible = true;
            Response.Redirect("Default.aspx");
        }
    }


    protected void Refresh_list(object sender, EventArgs e)
    {
        Label1.Visible = true;
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
    }

    protected void update_values(object sender, EventArgs e)
    {
        
        Configuration webConfigApp = WebConfigurationManager.OpenWebConfiguration("~");
        string Key_c = KeyList1.SelectedItem.Value;
        string Value_c = TextBox2.Text.ToString();
        webConfigApp.AppSettings.Settings[Key_c].Value = Value_c;
        webConfigApp.Save();
        Label1.Visible = true;
        Response.Redirect("Default.aspx");

        TextBox2.Text = string.Empty;
    }

    protected void detele_values(object sender, EventArgs e)
    {
        string Key_c = KeyList1.SelectedItem.Value;
        string Value_c = TextBox2.Text.ToString();
        Configuration webConfigApp = WebConfigurationManager.OpenWebConfiguration("~");
        webConfigApp.AppSettings.Settings.Remove(Key_c);
        webConfigApp.Save();
        Label1.Visible = true;
        Response.Redirect("Default.aspx");
    }
    protected void Move(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }

    protected void Add_Active(object sender, EventArgs e)
    {
        Button6.Enabled = true;
        Button2.Enabled = false;
        Button3.Enabled = false;
        Button4.Enabled = false;


        RadioButton1.Checked = true;
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        KeyList1.Visible = false;
        TextBox1.Visible = true;
        TextBox2.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        TextBox1.ReadOnly = false;
        TextBox2.ReadOnly = false;
        ImgRefresh.Visible = false;
       
    }
    protected void update_Active(object sender, EventArgs e)
    {
        Button6.Enabled = false;
        Button3.Enabled = true;
        Button4.Enabled = false;   
        RadioButton2.Checked = true;
        Label2.Visible = true;
        Label3.Visible = true;
        TextBox2.ReadOnly = false;
        RadioButton1.Checked = false;
        Label1.Visible = false;
        KeyList1.Visible = true;
        TextBox1.Visible = false;
        TextBox2.Visible = true;
    }



    protected void Delete_Active(object sender, EventArgs e)
    {
        Button6.Enabled = false;
        Button3.Enabled = false;
        Button4.Enabled = true;  
        RadioButton1.Checked = true;
        RadioButton3.Checked = true;
        Label2.Visible = true;
        Label3.Visible = false;
        KeyList1.Visible = true;
        TextBox2.Visible = false;
        TextBox1.Visible = false;
     }


    protected void Refresh_values(object sender, EventArgs e)
    {
        KeyList1.Items.Clear();
        NameValueCollection sKey = ConfigurationManager.AppSettings;
        foreach (string s in sKey.AllKeys)
        {
            Label10.Text = s;
            KeyList1.Items.Add(Label10.Text);
        }
        KeyList1.DataBind();
        ImageButton1.Visible = false;
    }

    public void DisplayConfigTags()
    {
        NameValueCollection sAll = ConfigurationManager.AppSettings;
        foreach (string s in sAll.AllKeys)
        {
            Label1.Text += "Key : " + s +" value : " + sAll.Get(s) + "<br/>";
        }
        Label1.Width.ToString();
        Label1.Text.ToString();
        Label1.Visible = true;
    }
 


    protected void GetandSettheValues(object sender, EventArgs e)
    {
        string Key_c = KeyList1.SelectedItem.Value;
        NameValueCollection sqAll = ConfigurationManager.AppSettings;
        TextBox2.Text = string.Empty;
        foreach (string s in sqAll.AllKeys)
        {
            string dykey = s.ToString(); 
            if (dykey == Key_c)
            {

                TextBox2.Text += sqAll.Get(s);
            }
        }
        ImageButton1.Visible = false;
    }
}

    



    