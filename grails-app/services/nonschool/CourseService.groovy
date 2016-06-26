package nonschool

import grails.transaction.Transactional
import nonschool.core.Course

@Transactional
class CourseService {

    def serviceMethod() {

    }

    List<Course> searchCourses(String searchCriteria){
        String searchTemplate = '%' + searchCriteria + '%'
        def results = Course.findAllByDescriptionLikeOrTitleLike(searchTemplate,searchTemplate)
        return results
    }
}
