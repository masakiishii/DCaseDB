Import("Deos.DCaseCloud");
Import("Type.Json");
Import("Syntax.CStyleWhile");
Import("Syntax.CStyleFor");
Import("Common.StringUtil");
Import("JavaScript.String");


void main() {

	API repo = new API("dcasedb","dcasedb");
//	System.p(repo.SearchContext("DScript:sudo reboot -h now"));
	Json Ids = repo.GetArgumentIds();
	DCaseArgument argument = repo.GetArgument(19);
	System.p(argument.toJson());
//	System.p(argument.getDBNode(82).toJson());
	System.p("--------------------------------------------------------------------------------");
	int n = "D-Script:".getlength();
	System.p("assure " + argument.getDBNode(82).getdescription() + " {");
	System.p("\tassure " + argument.getDBNode(84).getdescription() + " {");
	System.p("\t    " + argument.getDBNode(85).getdescription().substring(n));
	System.p("\t}");
	System.p("\tassure " + argument.getDBNode(84).getdescription() + " {");

	argument = repo.GetArgument(20);
//	System.p(argument.get);
//	System.p(argument.getDBNode(88).getdescription());
	if(argument.getDBNode(88).getdescription() == "argument by precondition/postcondition") {
	    System.p("\t    strategy pre {");
	    System.p("\t        assure " + argument.getDBNode(89).getdescription() + " {");
	    System.p("\t\t    " + argument.getDBNode(91).getdescription().substring(n));
	    System.p("\t\t}");
	    System.p("\t    }");
	    System.p("\t    strategy post {");
	    System.p("\t        assure " + argument.getDBNode(90).getdescription() + " {");
	    System.p("\t\t    " + argument.getDBNode(91).getdescription().substring(n));
	    System.p("\t\t}");
	}
	System.p("\t    }");
	System.p("\t}");
	System.p("}");
	
	System.p("--------------------------------------------------------------------------------");
	System.p(argument.toJson());
}

main();
