using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(mapService.Startup))]
namespace mapService
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
