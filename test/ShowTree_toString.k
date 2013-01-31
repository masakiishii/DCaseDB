Import("Deos.DCaseCloud");
Import("Type.Json");
Import("Syntax.CStyleFor");
Import("Common.StringUtil");
Import("JavaScript.String");
Import("Syntax.CStyleWhile");

void main() {

	API repo = new API("dcasedb","dcasedb");
	Json Ids = repo.GetArgumentIds();
	System.p("--------------------------------------------------------------------------------");
	int n = "D-Script:".getlength();
	Json jo = repo.Search("service must run");

	int i = 0;
	int node_id;
	DCaseArgument argument = repo.GetArgument(jo[0].getString("argument_id").toint());
	while(i < jo.getSize()) {
		if(argument.getDBNode(jo[i].getString("node_id").toint()).getdescription().getlength() > 0) {
			System.p(argument.getDBNode(jo[i].getString("node_id").toint()).getdescription());
			node_id = jo[i].getString("node_id").toint();;
			System.p(node_id);
		}
		i = i + 1;
	}


//	System.p(argument.getDBNode(node_id).toJson());
	System.p(argument.getDBNode(node_id).getchildren().getlength());
	System.p(argument.getDBNode(node_id).getchildren()[0].toJson());
	System.p(argument.getDBNode(node_id).getchildren()[0].toJson().getString("type"));
	System.p(argument.getDBNode(node_id).getchildren()[1].toJson());
	System.p(argument.getDBNode(node_id).getchildren()[1].toJson().getString("type"));

	DBNode goalnode = argument.getDBNode(node_id).getchildren()[1];
	System.p(goalnode.getchildren().getlength());
	System.p(goalnode.getchildren()[0].toJson());
	String evidence = goalnode.getchildren()[0].getdescription();
	System.p(evidence.substring(n));

	Json jo_context = repo.Search(evidence);

	System.p(jo_context.getSize());

	Json jo = repo.Search(evidence.substring(n));
	System.p(jo.getSize());
	System.p(jo);
//	System.p(jo.getSize());
	i = 0;

//	System.p(argument.getDBNode(node_id).getchildren()[0].toJson());

	System.p("--------------------------------------------------------------------------------");
	System.p("assure " + argument.getDBNode(node_id).getdescription() + " {");
	System.p("\tassure " + argument.getDBNode(node_id).getdescription() + " {");


//	System.p(argument.getDBNode(node_id).getchildren().getSize());
//	System.p(argument.getDBNode(node_id).getchildren()[0].toJson());



	System.p("\t    " + evidence.substring(n));
	System.p("\t}");
	System.p("\targue " + argument.getDBNode(node_id).getdescription() + " {");

	jo = repo.SearchContext(evidence.substring(n));
//	System.p(jo.getSize());
	i = 0;
	node_id = 0;
	while(i < jo.getSize()) {
//		System.p(jo.[i]);
		i = i + 1;
	}


//	argument = repo.GetArgument(1);
//	System.p(jo[0].getString("argument_id").toint());
	argument = repo.GetArgument(jo[0].getString("argument_id").toint());
	node_id = jo[0].getString("node_id").toint();
//	System.p(argument.toJson());
//	System.p(argument.getDBNode(node_id).getparent().getchildren()[0].toJson());
//	System.p(argument.getDBNode(node_id).getparent().getchildren()[1].toJson());
//	System.p(argument.getDBNode(node_id).getparent().getchildren()[1].getchildren()[0].toJson());
//	System.p(argument.getDBNode(node_id).getparent().getchildren()[1].getchildren()[1].toJson());
//
//	System.p(argument.getDBNode(node_id).getparent().getchildren()[1].getchildren()[0].getchildren.getSize());
//	System.p(argument.getDBNode(node_id).getparent().getchildren()[1].getchildren()[0].getchildren[0].toJson());
//	System.p(argument.getDBNode(node_id).getparent().getchildren()[1].getchildren()[1].getchildren[0].toJson());
//
	if(argument.getDBNode(node_id).getparent().getchildren()[1].toJson().getString("type") == "Strategy") {
	    System.p("\t    strategy pre {");
	    System.p("\t        assure " + argument.getDBNode(node_id).getparent().getchildren()[1].getchildren()[0].getdescription() + " {");
	    System.p("\t\t    " + argument.getDBNode(node_id).getparent().getchildren()[1].getchildren()[0].getchildren()[0].getdescription().substring(n));
	    System.p("\t\t}");
	    System.p("\t    }");
	    System.p("\t    strategy post {");
	    System.p("\t        assure " + argument.getDBNode(node_id).getparent().getchildren()[1].getchildren()[1].getdescription() + " {");
	    System.p("\t\t    " + argument.getDBNode(node_id).getparent().getchildren()[1].getchildren()[0].getchildren()[0].getdescription().substring(n));
	    System.p("\t\t}");
	}
	System.p("\t    }");
	System.p("\t}");
	System.p("}");
	
//	System.p("--------------------------------------------------------------------------------");
//	System.p(argument.toJson());
}

main();


//	while(i < jo.getSize()) {
//		System.p(jo[i]);
////		System.p(jo[i].getString("node_id").toint());
////		node_id.add(jo[i].getString("node_id").toint());
////		System.p(node_id[i]);
////		System.p(argument.getDBNode(jo[i].getString("node_id").toint()).getdescription());
//		if(argument.getDBNode(jo[i].getString("node_id").toint()).getdescription().getlength() > 0) {
//			System.p(argument.getDBNode(jo[i].getString("node_id").toint()).getdescription());
//			node_id = jo[i].getString("node_id").toint();;
//			System.p(node_id);
//		}
//		i = i + 1;
//	}
//
//	System.p(argument.getDBNode(node_id).toJson());
