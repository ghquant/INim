import inim

doAssert(getNimVersion()[0..2] == "Nim")

doAssert(hasIndentTrigger("var") == true)
doAssert(hasIndentTrigger("var x:int") == false)
doAssert(hasIndentTrigger("var x:int = 10") == false)
doAssert(hasIndentTrigger("let") == true)
doAssert(hasIndentTrigger("const") == true)
doAssert(hasIndentTrigger("if foo == 1: ") == true)
doAssert(hasIndentTrigger("proc fooBar(a, b: string): int = ") == true)
doAssert(hasIndentTrigger("for i in 0..10:") == true)
doAssert(hasIndentTrigger("for i in 0..10") == false)
