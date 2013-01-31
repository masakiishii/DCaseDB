Import("Deos.DCaseCloud");
Import("Type.Json");
Import("Syntax.CStyleWhile");
Import("Syntax.CStyleFor");


void main() {

	API repo = new API("dcasedb","dcasedb");
	Json Ids = repo.GetArgumentIds();
	DCaseArgument argument = repo.GetArgument(19);
	System.p(argument.toJson());
	System.p(argument.getDBNode(82).toJson());
	System.p("------------------------------");
	System.p("assure " + argument.getDBNode(82).getdescription() + " {");
	System.p("\tassure " + argument.getDBNode(84).getdescription() + " {");
	System.p("\t\t" + argument.getDBNode(85).getdescription());
	System.p("\t}");
	System.p("\tassure " + argument.getDBNode(84).getdescription() + " {");

	argument = repo.GetArgument(20);

//	System.p(argument.getDBNode(88).getdescription());
	if(argument.getDBNode(88).getdescription() == "argument by precondition/postcondition") {
	    System.p("\t\tstrategy pre {");
	    System.p("\t\t\tassure " + argument.getDBNode(89).getdescription() + " {");
	    System.p("\t\t\t\t" + argument.getDBNode(91).getdescription());
	    System.p("\t\t\t}");
	    System.p("\t\tstrategy post {");
	    System.p("\t\t\tassure " + argument.getDBNode(90).getdescription() + " {");
	    System.p("\t\t\t\t" + argument.getDBNode(91).getdescription());
	    System.p("\t\t\t}");
	}
	System.p("\t\t}");
	System.p("\t}");
	System.p("}");

	System.p("------------------------------");
	System.p(argument.toJson());
}

main();
