using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VidYou.Account
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            Page.Title = Context.User.Identity.GetUserName() + " - VidYou";

        }
        protected void Page_Load(object sender, EventArgs e)
        {
        }
    }
}