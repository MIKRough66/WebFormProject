using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace OnlineShop
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);                            //Enable FriendlyUrl


            ////Default Routs
            //routes.MapPageRoute(
            //    routeName: "Default",
            //    routeUrl: "",
            //    physicalFile: "~/Default.aspx"
            //    );


            //Default Routs
            routes.MapPageRoute(
                routeName: "About",
                routeUrl: "",
                physicalFile: "~/About.aspx"
                );
        }
    }
}
