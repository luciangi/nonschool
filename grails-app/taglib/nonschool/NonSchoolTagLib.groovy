package nonschool

import org.codehaus.groovy.grails.support.encoding.CodecLookup
import org.codehaus.groovy.grails.support.encoding.Encoder
import org.codehaus.groovy.grails.web.util.GrailsPrintWriter
import org.springframework.web.servlet.support.RequestContextUtils

class NonSchoolTagLib {

    static namespace = 'non'

    CodecLookup codecLookup

    List<Locale> locales = [Locale.ENGLISH, new Locale.Builder().setRegion("RO").setLanguage("ro").build()]

    /**
     * Material Design date picker tag
     * Hacked from https://github.com/T00rk/bootstrap-material-datetimepicker to work with grails and our version of
     * bootstrap material design lib
     *
     * @attr name REQUIRED This is the input name
     * @attr value The input value
     * @attr time Boolean value. If true renders time controls
     * @attr minDate Minimum javascript Date for the control
     * @attr maxDate Maximum javascript Date for the control
     * @attr currentDate Current javascript Date for the control
     * @attr clearButton Boolean value. If true renders clear button
     * @attr nowButton Boolean value. If true renders now button
     */
    def datePicker = { attrs, body ->

        assertRequiredAttribute('materialDatePicker', attrs, 'name')
        def name = attrs.remove('name')
        Date value = attrs.remove('value')
        def time = attrs.remove('time')
        def minDate = attrs.remove('minDate')
        def maxDate = attrs.remove('maxDate')
        def currentDate = attrs.remove('currentDate')
        def clearButton = attrs.remove('clearButton')
        def nowButton = attrs.remove('nowButton')

        String momentsDateFormat = time ? g.message(code: 'materialDatePicker.datetime.format') : g.message(code: 'materialDatePicker.date.format')
        String grailsDateFormat = time ? g.message(code: 'default.datetime.format') : g.message(code: 'default.date.format')

        out << """<input type='text' name='${name}_show' """
        if (value) {
            out << """value=${value.format(grailsDateFormat)} """
        }
        outputAttributes(attrs, out)
        out << """/>
                <input type='text' style='opacity: 0; position: absolute' name='${name}'"""
        if (value) {
            out << """value='${value}'"""
        }
        out << """/>
                <script>
                    \$(function () {
                        \$("[name='${name}']").bootstrapMaterialDatePicker({
                            date: true,
                            time: ${time ?: false},
                            format: 'YYYY-MM-DD HH:mm:ss.0',
                            showFormat: '${momentsDateFormat}',
                            minDate: ${minDate ?: null},
                            maxDate: ${maxDate ?: null},
                            currentDate: ${currentDate ?: null},
                            weekStart: 0,
                            shortTime: false,
                            clearButton: ${clearButton ?: false},
                            nowButton: ${nowButton ?: false},
                            cancelText: '${g.message(code: 'materialDatePicker.cancel.label')}',
                            okText: '${g.message(code: 'materialDatePicker.ok.label')}',
                            clearText: '${g.message(code: 'materialDatePicker.clear.label')}',
                            nowText: '${g.message(code: 'materialDatePicker.now.label')}',
                            switchOnClick: false
                        });
                        \$("[name='${name}_show']").focus(function () {
                            \$("[name='${name}']").focus();
                        });
                    });
                </script>
            """
    }

    /**
     * Locale selector tag
     * Renders a control to change the application locale
     * In case you want to add more locales, just add the to locales list at the top of the tagLib
     */
    def localeSelector = {
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

    /**
     * Assert required attribute
     * A method to assert the existence of an required attribute for a tag
     *
     * @param tagName The tag name
     * @param attrs The tag attributes
     * @param attrName The required attribute name
     * @return Throws a tag error
     */
    def assertRequiredAttribute(String tagName, def attrs, String attrName) {
        if (attrs[attrName] == null) {
            throwTagError("Tag [$tagName] is missing required attribute [$attrName]")
        }
    }

    /**
     * Output attributes
     * A method to render as html and output the remaining attributes in the tag
     *
     * @param attrs The tag attribtes
     * @param writer The Grails Print Writer in witch to output
     */
    void outputAttributes(Map attrs, GrailsPrintWriter writer) {
        Encoder htmlEncoder = codecLookup?.lookupEncoder('HTML')
        attrs.each { k, v ->
            if (v != null) {
                writer << k
                writer << '="'
                writer << (htmlEncoder != null ? htmlEncoder.encode(v) : v)
                writer << '" '
            }
        }
    }

}
