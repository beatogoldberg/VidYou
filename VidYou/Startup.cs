using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(VidYou.Startup))]
namespace VidYou
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
