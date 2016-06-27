package nonschool.enums

enum Cognitive {
    Remember('enum.cognitive.remember.text'),
    Understand('enum.cognitive.understand.text'),
    Apply('enum.cognitive.apply.text'),
    Analyze('enum.cognitive.analyze.text'),
    Evaluate('enum.cognitive.evaluate.text'),
    Create('enum.cognitive.create.text')

    private final String code;
    private Cognitive(String code){
        this.code = code
    }
    public String code(){
        return this.code
    }
}