using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using ThreeHotel;

namespace ThreeHotel
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            AuthConfig.RegisterOpenAuth();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
        }

        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown

        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

        }

        void Session_Start(object sender, EventArgs e)
        {
            Session["CheckIn"] = string.Empty;
            Session["CheckOut"] = string.Empty;
            Session["RoomCount"] = string.Empty;
            Session["AdultCount"] = string.Empty;
            Session["ChildrenCount"] = string.Empty;
            Session["SpecialRateCode"] = string.Empty;
        }
    }
}
