using System.Web.Routing;

namespace Kong.ApiExpert.Web
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("job-search", "job-search-indeed", "~/App/job-search.aspx");
            routes.MapPageRoute("ask-stackoverflow", "ask-question-stackoverflow", "~/App/ask-stackoverflow.aspx");
            //routes.MapPageRoute("local-business-search", "local-business-search-yelp", "~/App/local-business-search.aspx");
            routes.MapPageRoute("photo-gallery", "photo-gallery-flickr", "~/App/photo-gallery.aspx");
            routes.MapPageRoute("place-finder", "place-finder-google", "~/App/place-finder.aspx");

            routes.MapPageRoute("currency-converter", "currency-converter-yahoo", "~/Tool/currency-converter.aspx");
            routes.MapPageRoute("language-translator", "language-translator-mymemory", "~/Tool/language-translator.aspx");
            routes.MapPageRoute("mortgage-calculator", "mortgage-calculator", "~/Tool/mortgage-calculator.aspx");
            routes.MapPageRoute("world-weather-forecast", "world-weather-forecast-worldweatheronline", "~/Tool/world-weather-forecast.aspx");

            routes.MapPageRoute("blog", "blog", "~/Doc/blog.aspx");
            routes.MapPageRoute("c-sharp-interview-question", "c-sharp-interview-question", "~/Doc/c-sharp-interview-question.aspx");
            routes.MapPageRoute("c-sharp-naming-convention-design-guideline", "c-sharp-naming-convention-design-guideline", "~/Doc/c-sharp-naming-convention-design-guideline.aspx");

            routes.MapPageRoute("site-map", "site-map", "~/site-map.aspx");
            routes.MapPageRoute("login", "login", "~/login.aspx");
            routes.MapPageRoute("home", "home", "~/default.aspx");
        }
    }
}