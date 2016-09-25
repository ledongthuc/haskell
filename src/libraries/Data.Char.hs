import qualified Data.Char as C
 
main = do

  putStrLn "\n\n--- Data.Char.chr ---"
  putStrLn $ show $ C.chr 97 -- a
  putStrLn $ show $ map C.chr [97..122] --  "abcdefghijklmnopqrstuvwxyz"

  putStrLn "\n\n--- Data.Char.digitToInt ---"
  putStrLn $ show $ C.digitToInt '2' -- 2
  putStrLn $ show $ C.digitToInt 'A' -- 11
  putStrLn $ show $ C.digitToInt 'F' -- 15

  putStrLn "\n\n--- Data.Char.intToDigit ---"
  putStrLn $ show $ C.intToDigit 0 -- 0
  putStrLn $ show $ C.intToDigit 1 -- 1
  putStrLn $ show $ C.intToDigit 2 -- 2
  putStrLn $ show $ C.intToDigit 15 -- f

  putStrLn "\n\n--- Data.Char.isAlpha ---"
  putStrLn $ show $ C.isAlpha '\0' -- False
  putStrLn $ show $ C.isAlpha 'a' -- True
  putStrLn $ show $ C.isAlpha 'A' -- True
  putStrLn $ show $ C.isAlpha '1' -- False
  putStrLn $ show $ C.isAlpha '\t' -- False
  putStrLn $ show $ C.isAlpha '\62' -- False

  putStrLn "\n\n--- Data.Char.isAscii ---"
  putStrLn $ show $ C.isAscii '\0' -- True
  putStrLn $ show $ C.isAscii '\127' -- True
  putStrLn $ show $ C.isAscii '\128' -- False

  putStrLn "\n\n--- Data.Char.isAsciiLower ---"
  putStrLn $ show $ C.isAsciiLower 'a' -- True
  putStrLn $ show $ C.isAsciiLower 'A' -- False
  putStrLn $ show $ C.isAsciiLower 'á' -- False
  putStrLn $ show $ C.isAsciiLower 'Á' -- False

  putStrLn "\n\n--- Data.Char.isAsciiUpper ---"
  putStrLn $ show $ C.isAsciiUpper 'a' -- False
  putStrLn $ show $ C.isAsciiUpper 'A' -- True
  putStrLn $ show $ C.isAsciiLower 'á' -- False
  putStrLn $ show $ C.isAsciiLower 'Á' -- False

  putStrLn "\n\n--- Data.Char.isAlphaNum ---"
  putStrLn $ show $ C.isAlphaNum '\0' -- False
  putStrLn $ show $ C.isAlphaNum 'a' -- True
  putStrLn $ show $ C.isAlphaNum 'A' -- True
  putStrLn $ show $ C.isAlphaNum '1' -- True
  putStrLn $ show $ C.isAlphaNum '\t' -- False
  putStrLn $ show $ C.isAlphaNum '\62' -- False

  putStrLn "\n\n--- Data.Char.isControl ---"
  putStrLn $ show $ C.isControl '\0' -- True
  putStrLn $ show $ C.isControl 'a' -- False
  putStrLn $ show $ C.isControl 'A' -- False
  putStrLn $ show $ C.isControl '1' -- False
  putStrLn $ show $ C.isControl '\t' -- True
  putStrLn $ show $ C.isControl '\62' -- False

  putStrLn "\n\n--- Data.Char.isDigit ---"
  putStrLn $ show $ C.isDigit '\0' -- False
  putStrLn $ show $ C.isDigit 'a' -- False
  putStrLn $ show $ C.isDigit 'A' -- False
  putStrLn $ show $ C.isDigit '1' -- True
  putStrLn $ show $ C.isDigit '\t' -- False
  putStrLn $ show $ C.isDigit '\62' -- False
  putStrLn $ show $ map C.digitToInt $ filter C.isDigit "a1b2c3d4e5" -- [1,2,3,4,5] 

  putStrLn "\n\n--- Data.Char.isLatin1 ---"
  putStrLn $ show $ C.isLatin1 '\0' -- True
  putStrLn $ show $ C.isLatin1 '\127' -- True
  putStrLn $ show $ C.isLatin1 '\128' -- True
  putStrLn $ show $ C.isLatin1 '\255' -- True
  putStrLn $ show $ C.isLatin1 '\256' -- False

  putStrLn "\n\n--- Data.Char.isLetter ---"
  putStrLn $ show $ C.isLetter 'a' -- True
  putStrLn $ show $ C.isLetter 'A' -- True
  putStrLn $ show $ C.isLetter '1' -- False
  putStrLn $ show $ C.isLetter '\0' -- False
  putStrLn $ show $ C.isLetter '\t' -- False
  putStrLn $ show $ C.isLetter '\62' -- False
  putStrLn $ show $ C.isLetter '\452' -- True (ǅ)
  putStrLn $ show $ C.isLetter '\689' -- True (ʱ)
  putStrLn $ show $ C.isLetter '♥' -- False

  putStrLn "\n\n--- Data.Char.isLower ---"
  putStrLn $ show $ C.isLower '\0' -- False
  putStrLn $ show $ C.isLower 'a' -- True
  putStrLn $ show $ C.isLower 'A' -- False
  putStrLn $ show $ C.isLower '1' -- False
  putStrLn $ show $ C.isLower '\t' -- False
  putStrLn $ show $ C.isLower '\62' -- False

  putStrLn "\n\n--- Data.Char.isMark ---"
  putStrLn $ show $ C.isMark 'a' -- False
  putStrLn $ show $ C.isMark 'A' -- False
  putStrLn $ show $ C.isMark '1' -- False
  putStrLn $ show $ C.isMark '\0' -- False
  putStrLn $ show $ C.isMark '\t' -- False
  putStrLn $ show $ C.isMark '\62' -- False
  putStrLn $ show $ C.isMark '\452' -- False (ǅ)
  putStrLn $ show $ C.isMark '\689' -- False (ʱ)
  putStrLn $ show $ C.isMark '♥' -- False
  putStrLn $ show $ map C.isMark "ò" -- [False, True]
  putStrLn $ show $ C.isMark '\865' -- True (͡)
  putStrLn $ show $ C.isMark '\1159' -- True ()
  putStrLn $ show $ C.isMark '\42608' -- True ( ꙰)

  putStrLn "\n\n--- Data.Char.isNumber ---"
  putStrLn $ show $ C.isNumber 'a' -- False
  putStrLn $ show $ C.isNumber 'A' -- False
  putStrLn $ show $ C.isNumber '1' -- True
  putStrLn $ show $ C.isNumber '\0' -- False
  putStrLn $ show $ C.isNumber '\t' -- False
  putStrLn $ show $ C.isNumber '\62' -- False
  putStrLn $ show $ C.isNumber '♥' -- False
  putStrLn $ show $ C.isNumber '1' -- True
  putStrLn $ show $ C.isNumber '0' -- True
  putStrLn $ show $ C.isNumber '.' -- False
  putStrLn $ show $ C.isNumber 'I' -- False

  putStrLn "\n\n--- Data.Char.isHexDigit---"
  putStrLn $ show $ C.isHexDigit '\0' -- False
  putStrLn $ show $ C.isHexDigit '1' -- True
  putStrLn $ show $ C.isHexDigit '7' -- True
  putStrLn $ show $ C.isHexDigit '8' -- True
  putStrLn $ show $ C.isHexDigit '9' -- True
  putStrLn $ show $ C.isHexDigit 'a' -- True
  putStrLn $ show $ C.isHexDigit 'F' -- True
  putStrLn $ show $ C.isHexDigit 'G' -- False
  putStrLn $ show $ C.isHexDigit '\t' -- False
  putStrLn $ show $ C.isHexDigit '\62' -- False

  putStrLn "\n\n--- Data.Char.isOctDigit---"
  putStrLn $ show $ C.isOctDigit '\0' -- False
  putStrLn $ show $ C.isOctDigit 'a' -- False
  putStrLn $ show $ C.isOctDigit 'A' -- False
  putStrLn $ show $ C.isOctDigit '1' -- True
  putStrLn $ show $ C.isOctDigit '7' -- True
  putStrLn $ show $ C.isOctDigit '8' -- True
  putStrLn $ show $ C.isOctDigit '9' -- False
  putStrLn $ show $ C.isOctDigit '\t' -- False
  putStrLn $ show $ C.isOctDigit '\62' -- False

  putStrLn "\n\n--- Data.Char.isPunctuation ---"
  putStrLn $ show $ C.isPunctuation '\0' -- False
  putStrLn $ show $ C.isPunctuation 'a' -- False
  putStrLn $ show $ C.isPunctuation 'A' -- False
  putStrLn $ show $ C.isPunctuation '1' -- False
  putStrLn $ show $ C.isPunctuation '\t' -- False
  putStrLn $ show $ C.isPunctuation '\62' -- False
  putStrLn $ show $ C.isPunctuation '.' -- True
  putStrLn $ show $ C.isPunctuation '-' -- True
  putStrLn $ show $ C.isPunctuation '/' -- True
  putStrLn $ show $ C.isPunctuation '!' -- True
  putStrLn $ show $ C.isPunctuation '‿' -- True
  putStrLn $ show $ C.isPunctuation '︴' -- True
  putStrLn $ show $ C.isPunctuation '⸻' -- True
  putStrLn $ show $ C.isPunctuation '༺' -- True
  putStrLn $ show $ C.isPunctuation '༼' -- True
  putStrLn $ show $ C.isPunctuation ')' -- True
  putStrLn $ show $ C.isPunctuation '༻' -- True

  putStrLn "\n\n--- Data.Char.isPrint ---"
  putStrLn $ show $ C.isPrint '\0' -- False
  putStrLn $ show $ C.isPrint 'a' -- True
  putStrLn $ show $ C.isPrint 'A' -- True
  putStrLn $ show $ C.isPrint '1' -- True
  putStrLn $ show $ C.isPrint '\t' -- False
  putStrLn $ show $ C.isPrint '\62' -- True

  putStrLn "\n\n--- Data.Char.isSeparator ---"
  putStrLn $ show $ C.isSeparator ' ' -- True
  putStrLn $ show $ C.isSeparator '\n' -- False
  putStrLn $ show $ C.isSeparator '\t' -- False
  putStrLn $ show $ C.isSeparator '\160' -- True

  putStrLn "\n\n--- Data.Char.isSymbol ---"
  putStrLn $ show $ C.isSymbol '\0' -- False
  putStrLn $ show $ C.isSymbol 'a' -- False
  putStrLn $ show $ C.isSymbol 'A' -- False
  putStrLn $ show $ C.isSymbol '1' -- False
  putStrLn $ show $ C.isSymbol '\t' -- False
  putStrLn $ show $ C.isSymbol '\62' -- True
  putStrLn $ show $ C.isSymbol '=' -- True
  putStrLn $ show $ C.isSymbol '+' -- True

  putStrLn "\n\n--- Data.Char.isSpace ---"
  putStrLn $ show $ C.isSpace '\0' -- False
  putStrLn $ show $ C.isSpace 'a' -- False
  putStrLn $ show $ C.isSpace 'A' -- False
  putStrLn $ show $ C.isSpace '1' -- False
  putStrLn $ show $ C.isSpace '\t' -- True
  putStrLn $ show $ C.isSpace '\62' -- False

  putStrLn "\n\n--- Data.Char.isUpper ---"
  putStrLn $ show $ C.isUpper '\0' -- False
  putStrLn $ show $ C.isUpper 'a' -- False
  putStrLn $ show $ C.isUpper 'A' -- True
  putStrLn $ show $ C.isUpper '1' -- False
  putStrLn $ show $ C.isUpper '\t' -- False
  putStrLn $ show $ C.isUpper '\62' -- False

  putStrLn "\n\n--- Data.Char.generalCategory ---"
  putStrLn $ show $ C.generalCategory 'a' -- LowercaseLetter
  putStrLn $ show $ C.generalCategory 'A' -- UppercaseLetter
  putStrLn $ show $ C.generalCategory '0' -- DecimalNumber
  putStrLn $ show $ C.generalCategory '%' -- OtherPunctuation
  putStrLn $ show $ C.generalCategory '♥' -- OtherSymbol
  putStrLn $ show $ C.generalCategory '\31' -- Control
  putStrLn $ show $ C.generalCategory ' ' -- Space

  putStrLn "\n\n--- Data.Char.lexLitChar ---"
  putStrLn $ show $ C.lexLitChar "\\tHello world" -- [("\\t","Hello\\tworld")]
  putStrLn $ show $ C.lexLitChar "\\tHello\\tworld" -- [("\\t","Hello world")]
  putStrLn $ show $ C.lexLitChar "Hello\\tworld" -- [("H","ello\\tworld")]

  putStrLn "\n\n--- Data.Char.readLitChar ---"
  putStrLn $ show $ C.readLitChar "\\tHello world" -- [('\t',"Hello world")]
  putStrLn $ show $ C.readLitChar "\\tHello\\tworld" -- [('\t',"Hello\\tworld")]
  putStrLn $ show $ C.readLitChar "Hello\\tworld" -- [('H',"ello\\tworld")]

  putStrLn "\n\n--- Data.Char.showLitChar ---"
  putStrLn $ show $ C.showLitChar '\t' "Hello world" -- "\\tHello world"
  putStrLn $ show $ C.showLitChar '♥' "Hello world" -- "\\9829Hello world"

  putStrLn "\n\n--- Data.Char.toLower ---"
  putStrLn $ show $ C.toLower 'a' -- a
  putStrLn $ show $ C.toLower '1' -- 1
  putStrLn $ show $ C.toLower 'A' -- a
  putStrLn $ show $ 'Ǆ' -- \452 (Ǆ)
  putStrLn $ show $ C.toLower 'Ǆ' -- \452 (ǆ)

  putStrLn "\n\n--- Data.Char.toTitle ---"
  putStrLn $ show $ C.toTitle 'a' -- A
  putStrLn $ show $ C.toTitle '1' -- 1
  putStrLn $ show $ C.toTitle 'A' -- A
  putStrLn $ show $ 'ǆ' -- \454 (ǆ)
  putStrLn $ show $ C.toTitle 'ǆ' -- \453 (Ǆ)

  putStrLn "\n\n--- Data.Char.toUpper ---"
  putStrLn $ show $ C.toUpper 'a' -- A
  putStrLn $ show $ C.toUpper '1' -- 1
  putStrLn $ show $ C.toUpper 'A' -- A
  putStrLn $ show $ 'ǆ' -- \454 (ǆ)
  putStrLn $ show $ C.toUpper 'ǆ' -- \452 (Ǆ)

  putStrLn "\n\n--- Data.Char.ord ---"
  putStrLn $ show $ C.ord 'a' -- 97
  putStrLn $ show $ map C.ord ['a'..'z'] -- [97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122]
  putStrLn $ show $ map C.ord ['A'..'Z'] -- [65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90]
