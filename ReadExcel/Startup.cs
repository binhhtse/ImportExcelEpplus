using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ReadExcel.Startup))]
namespace ReadExcel
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
