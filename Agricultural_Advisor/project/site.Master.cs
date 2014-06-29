using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request["menu"] == null)
            {
                sub1.InnerText = "Local";
                sub2.InnerText = "International";
                sub3.InnerText = "Success Story";
                
                sub1.HRef = "~/homepage/local_news.aspx?menu=home";
                sub2.HRef = "~/homepage/intl_news.aspx?menu=home";
                sub3.HRef = "~/homepage/success_story.aspx?menu=home";
                
            
            }
            if (Request["menu"] != null)
            {
                switch (Request["menu"])
                {
                    case "home":
                sub1.InnerText = "Local";
                sub2.InnerText = "International";
                sub3.InnerText = "Success Story";
                sub1.HRef = "~/homepage/local_news.aspx?menu=home";
                sub2.HRef = "~/homepage/intl_news.aspx?menu=home";
                sub3.HRef = "~/homepage/success_story.aspx?menu=home";

                        break;

                    case "profile":
                        sub1.InnerText = "";
                        sub2.InnerText = "";
                        sub3.InnerText = "";
                        sub1.Attributes.Add("class", "bg_none");
                        sub2.Attributes.Add("class", "bg_none");
                        sub3.Attributes.Add("class", "bg_none");
                        break;

                    case "search":
                        sub1.InnerText = "";
                        sub2.InnerText = "";
                        sub3.InnerText = "";
                        sub1.Attributes.Add("class", "bg_none");
                        sub2.Attributes.Add("class", "bg_none");
                        sub3.Attributes.Add("class", "bg_none");
                        break;

                    case "market":
                        sub1.InnerText = "";
                        sub2.InnerText = "";
                        sub3.InnerText = "";
                        sub1.Attributes.Add("class", "bg_none");
                        sub2.Attributes.Add("class", "bg_none");
                        sub3.Attributes.Add("class", "bg_none");
                        break;

                }
            }
        }      
    }
}