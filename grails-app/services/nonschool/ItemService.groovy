package nonschool

import grails.transaction.Transactional
import nonschool.core.Item

@Transactional
class ItemService {

    def serviceMethod() {

    }

    List<Item> sortByCognitiveProcess(Collection<Item> items){
        List<Item> results = items.toList().sort {it.learningObjective.cognitive}
        return results
    }

    List<Item> sortByKnowledgeArtifact(Collection<Item> items){
        List<Item> results = items.toList().sort {it.learningObjective.knowledge}
        return results
    }

    List<Item> sortByBloomSpiral(Collection<Item> items){
        List<Item> results = items.toList().sort {it.learningObjective.knowledge}.sort {it.learningObjective.cognitive}
        return results
    }

    List<Item> searchItems(String searchCriteria){
        String searchTemplate = '%' + searchCriteria + '%'
        def results = Item.findAllByDescriptionLikeOrTitleLikeOrHtmlTemplateLike(searchTemplate,searchTemplate,searchTemplate)
        return results
    }
}
