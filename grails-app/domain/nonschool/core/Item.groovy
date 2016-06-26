package nonschool.core

import nonschool.classification.LearningObjective
import nonschool.security.User

/**
 * @id - unique identifier, overriden
 * @title - the item title
 * @description - short summary, used primarily in listings
 * @htmlTemplate - the HTML template of the item (render with resources over this one)
 * @owner - the creator of the item
 * @published - if false, this item is still a draft, else is publicly visible
 * @communityEdit - if false, item is editable solely by the owner,
 *                  if true, item can be edited by anyone (authenticated)
 * @resourceList - list of all static resources (stored on premise)
 */
class Item {

    UUID id

    String title
    String description
    String htmlTemplate
    Integer duration

    User owner

    Boolean published = false
    Boolean communityEdit = false

    LearningObjective learningObjective

    List<Resource> resourceList = []

    static belongsTo = [User, Course]
    static hasMany = [resourceList: Resource, courseList: Course]

    static mapping = {
        id(generator: "uuid2", type: "uuid-binary", length: 16)
    }

    static constraints = {
    }
}
