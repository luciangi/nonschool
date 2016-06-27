package nonschool.enums

enum Knowledge {
    Fact('enum.knowledge.fact.text'),
    Concept('enum.knowledge.concept.text'),
    Process('enum.knowledge.process.text'),
    Procedure('enum.knowledge.procedure.text'),
    Principle('enum.knowledge.principle.text'),
    Metacognitive('enum.knowledge.metacognitive.text'),

    private final String code
    private Knowledge(String code){
        this.code = code
    }

    public String code(){
        return this.code
    }
}

