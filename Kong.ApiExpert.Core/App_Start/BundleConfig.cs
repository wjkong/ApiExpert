using System.Web.Optimization;

namespace Kong.ApiExpert.Core
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
                   "~/Content/Site.css"));

            bundles.Add(new ScriptBundle("~/Scripts/Library").Include(
                     "~/Scripts/jquery-{version}.js",
                     "~/Scripts/jquery-ui-{version}.js",
                     "~/Scripts/bootstrap.js",
                     "~/Scripts/modernizr-*",
                     "~/Scripts/respond.js",
                     "~/Scripts/app/config.js",
                     "~/Scripts/app/site.js",
                     "~/Scripts/autosize.js"));


            bundles.Add(new ScriptBundle("~/Scripts/App/SiteMap").Include(
                "~/Scripts/app/siteMap.js"));

            bundles.Add(new ScriptBundle("~/Scripts/App/MortgageCalculator")
                .Include("~/Scripts/app/mortgageCalculator.js")
                .Include("~/Scripts/autoNumeric/autoNumeric.js"));

            bundles.Add(new ScriptBundle("~/Scripts/AskQuestion").Include("~/Scripts/app/askquestion.js"));
        }
    }
}
