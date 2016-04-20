/// Created from: C:\InterSystems\root.xsd
Class staff.model.MedStaffFault Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "MedStaffFault";

Parameter XMLSEQUENCE = 1;

Property Code As %xsd.int(XMLNAME = "Code");

Property Inner As staff.model.MedStaffFault(XMLNAME = "Inner") [ SqlFieldName = _Inner ];

Property Message As %String(MAXLEN = "", XMLNAME = "Message");

Storage Default
{
<Data name="MedStaffFaultDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Code</Value>
</Value>
<Value name="3">
<Value>Inner</Value>
</Value>
<Value name="4">
<Value>Message</Value>
</Value>
</Data>
<DataLocation>^staff.model.MedStaffFaultD</DataLocation>
<DefaultData>MedStaffFaultDefaultData</DefaultData>
<IdLocation>^staff.model.MedStaffFaultD</IdLocation>
<IndexLocation>^staff.model.MedStaffFaultI</IndexLocation>
<StreamLocation>^staff.model.MedStaffFaultS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
