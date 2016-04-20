/// Created from: c:/intersystems/2.xsd
Class staff.ser.guid Extends %String [ ProcedureBlock ]
{

Parameter ATTRIBUTEQUALIFIED = 1;

Parameter ELEMENTQUALIFIED = 1;

Parameter MAXLEN;

Parameter NAMESPACE = "http://schemas.microsoft.com/2003/10/Serialization/";

Parameter XMLPATTERN = "[\da-fA-F]{8}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{12}";

}
