using System.Collections.Generic;
using System.Configuration;
using System.Web;
using Microsoft.Owin;
using Microsoft.Owin.Security;
using Microsoft.Owin.Security.Cookies;
using Okta.AspNet;
using Owin;

[assembly: OwinStartup(typeof(WebApplication1.Startup))]

namespace WebApplication1
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.SetDefaultSignInAsAuthenticationType(CookieAuthenticationDefaults.AuthenticationType);

            app.UseCookieAuthentication(new CookieAuthenticationOptions()
            {
                LoginPath = new PathString("/Login.aspx"),
            });

            app.UseOktaMvc(new OktaMvcOptions()
            {
                OktaDomain = "https://baseball.oktapreview.com",//->dodgers.oktapreview.com
                ClientId = "0oa6ysloeATG1dj6u1d6",
                ClientSecret = "TpWeuholyDba2wNlAK5qs1Nw3P5Y8Uj4_qBG_NIL",
                RedirectUri = "https://localhost:44382/authorize/callback",
                PostLogoutRedirectUri = "https://localhost:44382/",
                Scope = new List<string> { "openid", "profile" },
                LoginMode = LoginMode.SelfHosted,
            });
        }
    }
}