using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MIS_124.Startup))]
namespace MIS_124
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
