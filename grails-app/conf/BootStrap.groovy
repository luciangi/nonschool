import nonschool.classification.LearningObjective
import nonschool.core.Course
import nonschool.core.Item
import nonschool.enums.Cognitive
import nonschool.enums.Knowledge
import nonschool.security.Role
import nonschool.security.User
import nonschool.security.UserRole

class BootStrap {

    def init = { servletContext ->
//        create admin user and role
        generateLearningObjectives()
        adminUserInit()
        generateData()
    }

    def destroy = {
    }

    def generateLearningObjectives(){
        Knowledge.values().each {k ->
            Cognitive.values().each {c ->
                def objective = LearningObjective.findByCognitiveAndKnowledge(c,k)
                if(!objective)
                {
                    objective = new LearningObjective(knowledge: k, cognitive: c)
                    objective.save()
                }
            }
        }
    }

    def adminUserInit() {
        User adminUser = new User("admin", "admin")
        adminUser.firstName = "firstName"
        adminUser.lastName = "lastName"
        adminUser.nickname = "nickname"
        adminUser.email = "email@email.com"
        adminUser.birthdate = new Date()
        adminUser.occupation = "occupation"

        Role adminRole = new Role("ROLE_ADMIN")
        adminUser.save(flush: true)
        adminRole.save(flush: true)

        UserRole.create adminUser, adminRole, true
    }

    def generateData() {
        Item item = new Item()
        item.title = "Djikstra's Algorithm"
        item.description = "A short summary and implementation example of how to find shortcuts where there are none."
        item.htmlTemplate = """Dijkstra's algorithm is an algorithm for finding the shortest paths between nodes in a graph, which may represent, for example, road networks. It was conceived by computer scientist Edsger W. Dijkstra in 1956 and published three years later.

The algorithm exists in many variants; Dijkstra's original variant found the shortest path between two nodes, but a more common variant fixes a single node as the "source" node and finds shortest paths from the source to all other nodes in the graph, producing a shortest-path tree.
"""
        item.duration = 15
        item.learningObjective = LearningObjective.findByCognitiveAndKnowledge(Cognitive.Understand, Knowledge.Process)
        item.save(flush: true, failOnError: true)

        Item item4 = new Item()
        item4.title = "Programs classification"
        item4.description = "Learn how programs are classified according to Ianov's program schemata."
        item4.duration = 45
        item4.htmlTemplate="""Ianov has defined a formal abstraction of the notion of program which represents the sequential and control properties of a program but suppresses the details of the operations.
 For these schemata he defines a notion corresponding to computation and defines equivalence of schemata in terms of it.
 He then gives a decision procedure for equivalence of schemata, and a deductive formalism for generating schemata equivalent to a given one."""
        item4.learningObjective = LearningObjective.findByCognitiveAndKnowledge(Cognitive.Evaluate, Knowledge.Process)
        item4.save(flush: true, failOnError: true)

        Item item2 = new Item()
        item2.title = "A* Algorithm"
        item2.description = "For those times when Djikstra just can't cut it."
        item2.duration = 20
        item2.learningObjective = LearningObjective.findByCognitiveAndKnowledge(Cognitive.Understand, Knowledge.Procedure)
        item2.save(flush: true, failOnError: true)

        Item item3 = new Item()
        item3.title = "General Graph Structure"
        item3.description = "What does this graph look like anyway?"
        item3.duration = 15
        item3.learningObjective = LearningObjective.findByCognitiveAndKnowledge(Cognitive.Understand, Knowledge.Concept)
        item3.save(flush: true, failOnError: true)

        Course course = new Course()
        course.title = 'Graph Theory'
        course.description = "A basic introduction the world of nodes and edges"
        course.duration = 85
        course.save(flush: true, failOnError: true)

        Course course2 = new Course()
        course2.title = 'Artificial Intelligence'
        course2.description = "A beginner's guide to the exciting endeavour to create HAL"
        course2.duration = 285
        course2.save(flush: true, failOnError: true)

    }
}
