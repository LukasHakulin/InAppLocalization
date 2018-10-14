//
//  Copyright © 2018. All rights reserved.
//

public struct Language: LanguageProtocol {

    public private(set) var code: String

    public init(code: String) {
        self.code = code
    }
}

extension Language: Equatable { }
public func == (lhs: Language, rhs: Language) -> Bool {
    return lhs.code == rhs.code
}

extension Language: Comparable {}
public func < (lhs: Language, rhs: Language) -> Bool {
    return lhs.code == rhs.code
}


public extension Language {

    /* iOS Language: English (U.S.) .lproj Language code (ISO-639): en */
    public static let english = Language(code: "en")

    /* iOS Language: English (UK) .lproj Language code (ISO-639): en-GB */
    public static let englishGb = Language(code: "en-GB")

    /* iOS Language: English (Australian) .lproj Language code (ISO-639): en-AU */
    public static let englishAu = Language(code: "en-AU")

    /* iOS Language: English (Indian) .lproj Language code (ISO-639): en-IN */
    public static let englishIn = Language(code: "en-IN")

    /* iOS Language: French .lproj Language code (ISO-639): fr */
    public static let french = Language(code: "fr")

    /* iOS Language: French (Canadian) .lproj Language code (ISO-639): fr-CA */
    public static let frenchCa = Language(code: "fr-CA")

    /* iOS Language: Spanish .lproj Language code (ISO-639): es */
    public static let spanish = Language(code: "es")

    /* iOS Language: Spanish (Mexico) .lproj Language code (ISO-639): es-MX */
    public static let spanishMx = Language(code: "es-MX")

    /* iOS Language: Portuguese .lproj Language code (ISO-639): pt */
    public static let portuguese = Language(code: "pt")

    /* iOS Language: Portuguese (Brazil) .lproj Language code (ISO-639): pt-BR */
    public static let portugueseBr = Language(code: "pt-BR")

    /* iOS Language: Italian .lproj Language code (ISO-639): it */
    public static let italian = Language(code: "it")

    /* iOS Language: German .lproj Language code (ISO-639): de */
    public static let german = Language(code: "de")

    /* iOS Language: Dutch .lproj Language code (ISO-639): nl */
    public static let dutch = Language(code: "nl")

    /* iOS Language: Japanese .lproj Language code (ISO-639): ja */
    public static let japanese = Language(code: "ja")

    /* iOS Language: Korean .lproj Language code (ISO-639): ko */
    public static let korean = Language(code: "ko")

    /* iOS Language: Vietnamese .lproj Language code (ISO-639): vi */
    public static let vietnamese = Language(code: "vi")

    /* iOS Language: Russian .lproj Language code (ISO-639): ru */
    public static let russian = Language(code: "ru")

    /* iOS Language: Swedish .lproj Language code (ISO-639): sv */
    public static let swedish = Language(code: "sv")

    /* iOS Language: Danish .lproj Language code (ISO-639): da */
    public static let danish = Language(code: "da")

    /* iOS Language: Finnish .lproj Language code (ISO-639): fi */
    public static let finnish = Language(code: "fi")

    /* iOS Language: Norwegian (Bokmal) .lproj Language code (ISO-639): nb */
    public static let norwegian = Language(code: "nb")

    /* iOS Language: Turkish .lproj Language code (ISO-639): tr */
    public static let turkish = Language(code: "tr")

    /* iOS Language: Greek .lproj Language code (ISO-639): el */
    public static let greek = Language(code: "el")

    /* iOS Language: Indonesian .lproj Language code (ISO-639): id */
    public static let indonesian = Language(code: "id")

    /* iOS Language: Malay .lproj Language code (ISO-639): ms */
    public static let malay = Language(code: "ms")

    /* iOS Language: Thai .lproj Language code (ISO-639): th */
    public static let thai = Language(code: "th")

    /* iOS Language: Hindi .lproj Language code (ISO-639): hi */
    public static let hindi = Language(code: "hi")

    /* iOS Language: Hungarian .lproj Language code (ISO-639): hu  */
    public static let hungarian = Language(code: "hu")

    /* iOS Language: Polish .lproj Language code (ISO-639): pl */
    public static let polish = Language(code: "pl")

    /* iOS Language: Czech .lproj Language code (ISO-639): cs */
    public static let czech = Language(code: "cs")

    /* iOS Language: Slovak .lproj Language code (ISO-639): sk */
    public static let slovak = Language(code: "sk")

    /* iOS Language: Ukrainian .lproj Language code (ISO-639): uk */
    public static let ukrainian = Language(code: "uk")

    /* iOS Language: Croatian .lproj Language code (ISO-639): hr */
    public static let croatian = Language(code: "hr")

    /* iOS Language: Catalan .lproj Language code (ISO-639): ca */
    public static let catalan = Language(code: "ca")

    /* iOS Language: Romanian .lproj Language code (ISO-639): ro */
    public static let romanian = Language(code: "ro")

    /* iOS Language: Hebrew .lproj Language code (ISO-639): he */
    public static let hebrew = Language(code: "he")

    /* iOS Language: Arabic .lproj Language code (ISO-639): ar */
    public static let arabic = Language(code: "ar")
}
