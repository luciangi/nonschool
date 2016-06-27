package nonschool.core

import nonschool.security.User

/**
 * TODO: THINK! some more about decoupling common areas in Course and Item into a different domain (i.e.: owner + flags = AccessFilter)
 *
 * @id - unique identifier, overriden
 * @title - the course title
 * @description - short summary, used primarily in listings
 * @owner - the creator of the course
 * @published - if false, this course is still a draft, else is publicly visible
 * @communityEdit - if false, course (item list) is editable solely by the owner,
 *                  if true, course (item list) can be edited by anyone (authenticated)
 * @itemList - list of all items included in the course
 */
class Course {

    UUID id

    String title
    String description
    Integer duration

    User owner

    Boolean published = false
    Boolean communityEdit = false

    static mapping = {
        id(generator: "uuid2", type: "uuid-binary", length: 16)
    }

    static belongsTo = [User]
    static hasMany = [itemList: Item]
    static mappedBy = [itemList: "courseList"]
    static constraints = {
        duration nullable: false
        title nullable: false, blank: false
        description nullable: false, blank: false
    }
}
