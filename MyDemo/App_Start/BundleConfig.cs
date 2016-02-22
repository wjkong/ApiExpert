using System.Web.Optimization;

namespace Kong.ApiExpert.Web
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new StyleBundle("~/Content/Style").Include(
                   "~/Content/bootstrap.css",
                   "~/Content/bootstrap-theme.css",
                   "~/Content/font-awesome.min.css",
                   "~/Content/site.css"));

            bundles.Add(new ScriptBundle("~/Scripts/Library").Include(
                     "~/Scripts/jquery-{version}.js",
                     "~/Scripts/jquery-ui-{version}.js",
                     "~/Scripts/bootstrap.js",
                     "~/Scripts/respond.js",
                     "~/Scripts/App/config.js",
                     "~/Scripts/App/site.js"));

            bundles.Add(new ScriptBundle("~/Scripts/Modernizr").Include("~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/Scripts/AskQuestion").Include("~/Scripts/App/askquestion.js"));

            bundles.Add(new ScriptBundle("~/Scripts/JobSearch").Include("~/Scripts/App/jobsearch.js"));

            bundles.Add(new ScriptBundle("~/Scripts/SearchLocalBusiness").Include("~/Scripts/App/searchlocalbusiness.js"));

            bundles.Add(new ScriptBundle("~/Scripts/PlaceFinder").Include("~/Scripts/App/placefinder.js"));

            bundles.Add(new ScriptBundle("~/Scripts/PhotoGallery").Include("~/Scripts/App/photogallery.js"));

            bundles.Add(new ScriptBundle("~/Scripts/CurrencyConverter").Include("~/Scripts/App/currencyconverter.js"));

            bundles.Add(new ScriptBundle("~/Scripts/LanguageTranslator").Include("~/Scripts/App/languagetranslator.js"));

            bundles.Add(new ScriptBundle("~/Scripts/LanguageTranslator").Include("~/Scripts/App/languagetranslator.js"));

            bundles.Add(new ScriptBundle("~/Scripts/MortgageCalculator").Include("~/Scripts/App/mortgagecalculator.js"));

            bundles.Add(new ScriptBundle("~/Scripts/WeatherForecast").Include("~/Scripts/App/weatherforecast.js"));

            bundles.Add(new ScriptBundle("~/Scripts/MyPhoto").Include("~/Scripts/App/myphoto.js"));

            bundles.Add(new ScriptBundle("~/Scripts/Login").Include("~/Scripts/App/login.js"));

            bundles.Add(new ScriptBundle("~/Scripts/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

        }
    }
}
