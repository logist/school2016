/// Created from: C:\InterSystems\root.xsd
Class staff.model.TimeFact Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "TimeFact";

Parameter XMLSEQUENCE = 1;

Property DateBegin As %TimeStamp(XMLNAME = "DateBegin");

Property DateEnd As %TimeStamp(XMLNAME = "DateEnd");

Property Hours As %xsd.double(XMLNAME = "Hours");

Relationship Employee As staff.model.Employee(XMLPROJECTION = "NONE") [ Cardinality = parent, Inverse = TimeFactList ];

Storage Default
{
<Data name="TimeFactDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DateBegin</Value>
</Value>
<Value name="3">
<Value>DateEnd</Value>
</Value>
<Value name="4">
<Value>Hours</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("TimeFactList")</DataLocation>
<DefaultData>TimeFactDefaultData</DefaultData>
<IdLocation>^staff.model.EmployeeC("TimeFactList")</IdLocation>
<IndexLocation>^staff.model.TimeFactI</IndexLocation>
<StreamLocation>^staff.model.TimeFactS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
