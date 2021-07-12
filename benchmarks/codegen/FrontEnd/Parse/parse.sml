structure Parse :
  sig val parse : string -> Group.t list end =
struct 
  structure HecateLrVals = HecateLrValsFun(structure Token = LrParser.Token)
  structure Lex = HecateLexFun(structure Tokens = HecateLrVals.Tokens)
  structure HecateP = Join(structure ParserData = HecateLrVals.ParserData
			structure Lex=Lex
			structure LrParser = LrParser)
  fun parse filename =
    let
      val _ = (ErrorMsg.reset(); ErrorMsg.fileName := filename)
      val file = TextIO.openIn filename

      fun parseerror(s,p1,p2) = ErrorMsg.error p1 s
            fun get _ = TextIO.input file
      val lexer = LrParser.Stream.streamify (Lex.makeLexer get)
      val (ast, _) = HecateP.parse(30,lexer,parseerror,())
    in
      TextIO.closeIn file;
      ast
    end handle LrParser.ParseError => raise ErrorMsg.Error
end (* structure Parse *)

structure ParseSchedule :
  sig val parse : string -> Schedule.t end =
struct 
  structure HecateScheduleLrVals = HecateScheduleLrValsFun(structure Token = LrParser.Token)
  (* piggy-back on the lexer generated by hecate.grm *)
  structure Lex = HecateLexFun(structure Tokens = HecateScheduleLrVals.Tokens)
  structure HecateScheduleP = Join(structure ParserData = HecateScheduleLrVals.ParserData
			structure Lex=Lex
			structure LrParser = LrParser)
  fun parse filename =
    let
      val _ = (ErrorMsg.reset(); ErrorMsg.fileName := filename)
      val file = TextIO.openIn filename
      fun parseerror(s,p1,p2) = ErrorMsg.error p1 s
            fun get _ = TextIO.input file
      val lexer = LrParser.Stream.streamify (Lex.makeLexer get)
      val (ast, _) = HecateScheduleP.parse(30,lexer,parseerror,())
    in
      TextIO.closeIn file;
      ast
    end handle LrParser.ParseError => raise ErrorMsg.Error
end (* structure ParseSchedule *)