using GLib;
using Vala;

////TODO: ComplexAttribute should not derive from MarkupTag. Instead, it should *have* a MarkupRoot
public class Gtkaml.ComplexMarkupAttribute : Object, MarkupAttribute {

	public string attribute_name {get { assert_not_reached (); }}
	public Expression attribute_expression {get { assert_not_reached(); }}
	public DataType target_type {get; set;}
	
	public Expression get_expression () {
		assert_not_reached();
	}
}
