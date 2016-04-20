/// Created from: c:/intersystems/2.xsd
Class staff.ser.duration Extends %String [ ProcedureBlock ]
{

Parameter ATTRIBUTEQUALIFIED = 1;

Parameter ELEMENTQUALIFIED = 1;

Parameter MAXLEN;

Parameter NAMESPACE = "http://schemas.microsoft.com/2003/10/Serialization/";

Parameter XMLPATTERN = "\-?P(\d*D)?(T(\d*H)?(\d*M)?(\d*(\.\d*)?S)?)?";

}
