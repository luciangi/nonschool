import org.springframework.web.servlet.support.RequestContextUtils

/**
 * Created by Lucian on 1/6/2016.
 */
class LocaleTagLib {
    static namespace = 'locale'

    List<Locale> locales = [Locale.ENGLISH, new Locale.Builder().setRegion("RO").setLanguage("ro").build()]

    def selector = {
        Locale requestLocale = RequestContextUtils.getLocale(request)

        locales.each { Locale locale ->
            out << g.link(
                    [
                            controller: controllerName,
                            action    : actionName,
                            params    : params + [lang: locale.language],
                            class     : 'btn btn-default' + ((requestLocale.language == locale.language) ? '' : ' btn-raised')
                    ],
                    locale.getDisplayLanguage(locale).capitalize())
        }
    }
}