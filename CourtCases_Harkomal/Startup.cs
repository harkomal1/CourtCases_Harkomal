using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CourtCases_Harkomal.Startup))]
namespace CourtCases_Harkomal
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
