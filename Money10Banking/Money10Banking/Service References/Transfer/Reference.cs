﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.239
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Money10Banking.Transfer {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(Namespace="http://ecmoney10.tk/Services", ConfigurationName="Transfer.wsTransferSoap")]
    public interface wsTransferSoap {
        
        // CODEGEN: Generating message contract since element name sid from namespace http://ecmoney10.tk/Services is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://ecmoney10.tk/Services/TransferMoneySameBank", ReplyAction="*")]
        Money10Banking.Transfer.TransferMoneySameBankResponse TransferMoneySameBank(Money10Banking.Transfer.TransferMoneySameBankRequest request);
        
        // CODEGEN: Generating message contract since element name sid from namespace http://ecmoney10.tk/Services is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://ecmoney10.tk/Services/TransferMoneyDiffBank", ReplyAction="*")]
        Money10Banking.Transfer.TransferMoneyDiffBankResponse TransferMoneyDiffBank(Money10Banking.Transfer.TransferMoneyDiffBankRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class TransferMoneySameBankRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="TransferMoneySameBank", Namespace="http://ecmoney10.tk/Services", Order=0)]
        public Money10Banking.Transfer.TransferMoneySameBankRequestBody Body;
        
        public TransferMoneySameBankRequest() {
        }
        
        public TransferMoneySameBankRequest(Money10Banking.Transfer.TransferMoneySameBankRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://ecmoney10.tk/Services")]
    public partial class TransferMoneySameBankRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string sid;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string ccsend;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=2)]
        public string ccreceive;
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=3)]
        public decimal amount;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=4)]
        public string ccsendcurenum;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=5)]
        public string ccreceivesecurenum;
        
        public TransferMoneySameBankRequestBody() {
        }
        
        public TransferMoneySameBankRequestBody(string sid, string ccsend, string ccreceive, decimal amount, string ccsendcurenum, string ccreceivesecurenum) {
            this.sid = sid;
            this.ccsend = ccsend;
            this.ccreceive = ccreceive;
            this.amount = amount;
            this.ccsendcurenum = ccsendcurenum;
            this.ccreceivesecurenum = ccreceivesecurenum;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class TransferMoneySameBankResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="TransferMoneySameBankResponse", Namespace="http://ecmoney10.tk/Services", Order=0)]
        public Money10Banking.Transfer.TransferMoneySameBankResponseBody Body;
        
        public TransferMoneySameBankResponse() {
        }
        
        public TransferMoneySameBankResponse(Money10Banking.Transfer.TransferMoneySameBankResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://ecmoney10.tk/Services")]
    public partial class TransferMoneySameBankResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=0)]
        public int TransferMoneySameBankResult;
        
        public TransferMoneySameBankResponseBody() {
        }
        
        public TransferMoneySameBankResponseBody(int TransferMoneySameBankResult) {
            this.TransferMoneySameBankResult = TransferMoneySameBankResult;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class TransferMoneyDiffBankRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="TransferMoneyDiffBank", Namespace="http://ecmoney10.tk/Services", Order=0)]
        public Money10Banking.Transfer.TransferMoneyDiffBankRequestBody Body;
        
        public TransferMoneyDiffBankRequest() {
        }
        
        public TransferMoneyDiffBankRequest(Money10Banking.Transfer.TransferMoneyDiffBankRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://ecmoney10.tk/Services")]
    public partial class TransferMoneyDiffBankRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string sid;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string ccrsend;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=2)]
        public string ccreceive;
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=3)]
        public float amount;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=4)]
        public string ccreceivesecurenum;
        
        public TransferMoneyDiffBankRequestBody() {
        }
        
        public TransferMoneyDiffBankRequestBody(string sid, string ccrsend, string ccreceive, float amount, string ccreceivesecurenum) {
            this.sid = sid;
            this.ccrsend = ccrsend;
            this.ccreceive = ccreceive;
            this.amount = amount;
            this.ccreceivesecurenum = ccreceivesecurenum;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class TransferMoneyDiffBankResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="TransferMoneyDiffBankResponse", Namespace="http://ecmoney10.tk/Services", Order=0)]
        public Money10Banking.Transfer.TransferMoneyDiffBankResponseBody Body;
        
        public TransferMoneyDiffBankResponse() {
        }
        
        public TransferMoneyDiffBankResponse(Money10Banking.Transfer.TransferMoneyDiffBankResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://ecmoney10.tk/Services")]
    public partial class TransferMoneyDiffBankResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=0)]
        public int TransferMoneyDiffBankResult;
        
        public TransferMoneyDiffBankResponseBody() {
        }
        
        public TransferMoneyDiffBankResponseBody(int TransferMoneyDiffBankResult) {
            this.TransferMoneyDiffBankResult = TransferMoneyDiffBankResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface wsTransferSoapChannel : Money10Banking.Transfer.wsTransferSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class wsTransferSoapClient : System.ServiceModel.ClientBase<Money10Banking.Transfer.wsTransferSoap>, Money10Banking.Transfer.wsTransferSoap {
        
        public wsTransferSoapClient() {
        }
        
        public wsTransferSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public wsTransferSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public wsTransferSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public wsTransferSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        Money10Banking.Transfer.TransferMoneySameBankResponse Money10Banking.Transfer.wsTransferSoap.TransferMoneySameBank(Money10Banking.Transfer.TransferMoneySameBankRequest request) {
            return base.Channel.TransferMoneySameBank(request);
        }
        
        public int TransferMoneySameBank(string sid, string ccsend, string ccreceive, decimal amount, string ccsendcurenum, string ccreceivesecurenum) {
            Money10Banking.Transfer.TransferMoneySameBankRequest inValue = new Money10Banking.Transfer.TransferMoneySameBankRequest();
            inValue.Body = new Money10Banking.Transfer.TransferMoneySameBankRequestBody();
            inValue.Body.sid = sid;
            inValue.Body.ccsend = ccsend;
            inValue.Body.ccreceive = ccreceive;
            inValue.Body.amount = amount;
            inValue.Body.ccsendcurenum = ccsendcurenum;
            inValue.Body.ccreceivesecurenum = ccreceivesecurenum;
            Money10Banking.Transfer.TransferMoneySameBankResponse retVal = ((Money10Banking.Transfer.wsTransferSoap)(this)).TransferMoneySameBank(inValue);
            return retVal.Body.TransferMoneySameBankResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        Money10Banking.Transfer.TransferMoneyDiffBankResponse Money10Banking.Transfer.wsTransferSoap.TransferMoneyDiffBank(Money10Banking.Transfer.TransferMoneyDiffBankRequest request) {
            return base.Channel.TransferMoneyDiffBank(request);
        }
        
        public int TransferMoneyDiffBank(string sid, string ccrsend, string ccreceive, float amount, string ccreceivesecurenum) {
            Money10Banking.Transfer.TransferMoneyDiffBankRequest inValue = new Money10Banking.Transfer.TransferMoneyDiffBankRequest();
            inValue.Body = new Money10Banking.Transfer.TransferMoneyDiffBankRequestBody();
            inValue.Body.sid = sid;
            inValue.Body.ccrsend = ccrsend;
            inValue.Body.ccreceive = ccreceive;
            inValue.Body.amount = amount;
            inValue.Body.ccreceivesecurenum = ccreceivesecurenum;
            Money10Banking.Transfer.TransferMoneyDiffBankResponse retVal = ((Money10Banking.Transfer.wsTransferSoap)(this)).TransferMoneyDiffBank(inValue);
            return retVal.Body.TransferMoneyDiffBankResult;
        }
    }
}
