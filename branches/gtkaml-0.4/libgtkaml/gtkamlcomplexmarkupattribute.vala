using GLib;
using Vala;

////TODO: ComplexAttribute should not derive from MarkupTag. Instead, it should *have* a MarkupRoot
public class Gtkaml.ComplexMarkupAttribute: MarkupTag, MarkupAttribute {

	public string attribute_name {get { assert_not_reached (); }}
	public Expression attribute_expression {get { assert_not_reached(); }}
	public DataType target_type {get; set;}
	
	public override string me { get { assert_not_reached(); }}
	
	public override void generate_public_ast (MarkupParser parser) {
		assert_not_reached();
	}
	
	public override MarkupTag? resolve (MarkupResolver resolver) {
		assert_not_reached();
	}	
	
	public override void generate (MarkupResolver resolver) {
		assert_not_reached();
	}

	public Expression get_expression () {
		assert_not_reached();
	}
}