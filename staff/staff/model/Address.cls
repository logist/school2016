/// Created from: C:\InterSystems\root.xsd
Class staff.model.Address Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Address";

Parameter XMLSEQUENCE = 1;

Property Apartment As %String(MAXLEN = "", XMLNAME = "Apartment");

Property Building As %String(MAXLEN = "", XMLNAME = "Building");

Property House As %String(MAXLEN = "", XMLNAME = "House");

Property Housing As %String(MAXLEN = "", XMLNAME = "Housing");

Property Location As staff.model.Kladr(XMLNAME = "Location");

Property PostIndex As %Integer(XMLNAME = "PostIndex");

Property Registration As staff.model.RegistrationType(XMLNAME = "Registration");

Property RegistrationDate As %TimeStamp(XMLNAME = "RegistrationDate");

Property RegistrationDateEnd As %TimeStamp(XMLNAME = "RegistrationDateEnd");

Property Street As %String(MAXLEN = "", XMLNAME = "Street");

Relationship Employee As staff.model.Employee(XMLPROJECTION = "NONE") [ Cardinality = parent, Inverse = AddressList ];

Storage Default
{
<Data name="AddressDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Apartment</Value>
</Value>
<Value name="3">
<Value>Building</Value>
</Value>
<Value name="4">
<Value>House</Value>
</Value>
<Value name="5">
<Value>Housing</Value>
</Value>
<Value name="6">
<Value>Location</Value>
</Value>
<Value name="7">
<Value>PostIndex</Value>
</Value>
<Value name="8">
<Value>Registration</Value>
</Value>
<Value name="9">
<Value>RegistrationDate</Value>
</Value>
<Value name="10">
<Value>RegistrationDateEnd</Value>
</Value>
<Value name="11">
<Value>Street</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("AddressList")</DataLocation>
<DefaultData>AddressDefaultData</DefaultData>
<IdLocation>^staff.model.EmployeeC("AddressList")</IdLocation>
<IndexLocation>^staff.model.AddressI</IndexLocation>
<StreamLocation>^staff.model.AddressS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
