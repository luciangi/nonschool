package nonschool.classification

import nonschool.enums.Cognitive
import nonschool.enums.Knowledge
import org.codehaus.groovy.grails.commons.GrailsApplication
import org.codehaus.groovy.grails.plugins.support.aware.GrailsApplicationAware

class LearningObjective implements GrailsApplicationAware {

    def grailsApplication

    Knowledge knowledge
    Cognitive cognitive

    static constraints = {
        knowledge nullable: false
        cognitive nullable: false
    }

    public String toString(){
        def g = grailsApplication.mainContext.getBean( 'org.codehaus.groovy.grails.plugins.web.taglib.ValidationTagLib' )
        g.message(code: cognitive.code()) + ' ' + g.message(code: knowledge.code())

    }

    public String getName(){
        def g = grailsApplication.mainContext.getBean( 'org.codehaus.groovy.grails.plugins.web.taglib.ValidationTagLib' )
        g.message(code: cognitive.code()) + ' ' + g.message(code: knowledge.code())

    }

    @Override
    void setGrailsApplication(GrailsApplication grailsApplication) {
        this.grailsApplication = grailsApplication
    }
}
