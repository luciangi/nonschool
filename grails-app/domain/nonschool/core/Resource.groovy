package nonschool.core

/**
 * ### TODO: Under Construction
 * ### TODO: THINK! if we need to share resources between items
 *
 * @id - unique identifier, overriden
 * @name - the resource name
 * @type - the resource type (file extension or some... )
 * @parent - the nonschool.core.Item that this resource belongs to
 */
class Resource {

    UUID id
    String type
    String name
    Item parent

    static belongsTo = [parent: Item]

    static mapping = {
        id(generator: "uuid2", type: "uuid-binary", length: 16)
    }

    static constraints = {
    }
}
