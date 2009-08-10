using GLib;
using Vala;

/**
 * Represents a tag with g:private or g:public which will be declared as a class member
 */
public class Gtkaml.MarkupMember : MarkupSubTag {

	public string member_name { get; private set; }
	public SymbolAccessibility access {get; private set;}

	public MarkupMember (MarkupTag parent_tag, string tag_name, MarkupNamespace tag_namespace, string member_name, SymbolAccessibility access, SourceReference? source_reference = null)
	{
		base (parent_tag, tag_name, tag_namespace, source_reference);
		this.member_name = member_name;
		this.access = access;
	}

	public override void generate_public_ast () {
		generate_property ();
	}
	
	public override void resolve (MarkupResolver resolver) {
		//TODO
		base.resolve (resolver);
	}
	
	public override void generate (MarkupResolver resolver) {
		//TODO	
	}
	
	private void generate_property () {
		PropertyAccessor getter = new PropertyAccessor (true, false, false, data_type.copy (), null, source_reference);
		PropertyAccessor setter = new PropertyAccessor (false, true, false, data_type.copy (), null, source_reference);
		
		Property p = new Property (member_name, data_type.copy (), getter, setter, source_reference);
		p.access = access;
		
		p.field = new Field ("_%s".printf (p.name), data_type.copy (), p.default_expression, p.source_reference);
				
		markup_class.add_property (p);
	}
}