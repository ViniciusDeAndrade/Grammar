package control;

import java.util.List;

import org.antlr.runtime.ANTLRStringStream;
import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.TokenSource;
import org.antlr.runtime.TokenStream;
import org.antlr.v4.runtime.CharStream;

import com.ufpe.cin.gfads.grammar.BuildLexer;
import com.ufpe.cin.gfads.grammar.BuildParser;

import entity.Connector;

public class Manager {

	private List<Connector> list;
	public void test(){
		CharStream stream = (CharStream) new ANTLRStringStream("hello");
		BuildLexer lexer = new BuildLexer(stream);
		org.antlr.v4.runtime.TokenStream tokenStream = (org.antlr.v4.runtime.TokenStream) new CommonTokenStream((TokenSource) lexer);
		BuildParser parser = new BuildParser(tokenStream);
		
	}
}
