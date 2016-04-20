/// 
Class staff.model.TestConnectionResponse Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "TestConnectionResponse";

Parameter XMLSEQUENCE = 1;

Property TestConnectionResult As %String(MAXLEN = "", XMLNAME = "TestConnectionResult");

Storage Default
{
<Data name="TestConnectionResponseDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TestConnectionResult</Value>
</Value>
</Data>
<DataLocation>^staff.model.TestConnectE906D</DataLocation>
<DefaultData>TestConnectionResponseDefaultData</DefaultData>
<IdLocation>^staff.model.TestConnectE906D</IdLocation>
<IndexLocation>^staff.model.TestConnectE906I</IndexLocation>
<StreamLocation>^staff.model.TestConnectE906S</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
