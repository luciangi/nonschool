package nonschool.classification

import nonschool.enums.Cognitive
import nonschool.enums.Knowledge

class LearningObjective {

    Knowledge knowledge
    Cognitive cognitive

    static constraints = {
        knowledge nullable: false
        cognitive nullable: false
    }
}
