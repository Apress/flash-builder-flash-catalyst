/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - UserAssembler.as.
 */
package be.flexpert.webshop.services
{
import mx.rpc.AsyncToken;
import com.adobe.fiber.core.model_internal;
import mx.rpc.AbstractOperation;
import be.flexpert.webshop.valueObjects.User;
import mx.collections.ItemResponder;
import mx.rpc.remoting.RemoteObject; 
import mx.rpc.remoting.Operation;
import com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.serializers.utility.TypeUtility;

[ExcludeClass]
internal class _Super_UserAssembler extends RemoteObjectServiceWrapper
{      
       
    // Constructor
    public function _Super_UserAssembler()
    {
        // initialize service control
        _serviceControl = new RemoteObject(); 
        
        var operations:Object = new Object();
        var operation:Operation;         
         
        operation = new Operation(null, "findUser");
		 operation.resultType = Boolean; 		 
        operations["findUser"] = operation;

        operation = new Operation(null, "loginUser");
		 operation.resultType = Object; 		 
        operations["loginUser"] = operation;

        operation = new Operation(null, "getUser");
		 operation.resultType = be.flexpert.webshop.valueObjects.User; 		 
        operations["getUser"] = operation;

        be.flexpert.webshop.valueObjects.User._initRemoteClassAlias();
        operation = new Operation(null, "createUser");
		 operation.resultType = be.flexpert.webshop.valueObjects.User; 		 
        operations["createUser"] = operation;

        be.flexpert.webshop.valueObjects.User._initRemoteClassAlias();
    
        _serviceControl.operations = operations;   
		_serviceControl.convertResultHandler = TypeUtility.convertResultHandler;
    	_serviceControl.convertParametersHandler = TypeUtility.convertCFAMFParametersHandler;
        _serviceControl.source = "be.flexpert.webshop.assemblers.UserAssembler";
		_serviceControl.destination = "ColdFusion";
        
    
                      
         model_internal::initialize();
    }

	/**
	  * This method is a generated wrapper used to call the 'findUser' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function findUser(login:String) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("findUser");
		var _internal_token:AsyncToken = _internal_operation.send(login) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'loginUser' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function loginUser(login:String, password:String) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("loginUser");
		var _internal_token:AsyncToken = _internal_operation.send(login,password) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'getUser' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getUser(login:String) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getUser");
		var _internal_token:AsyncToken = _internal_operation.send(login) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'createUser' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function createUser(user:be.flexpert.webshop.valueObjects.User) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("createUser");
		var _internal_token:AsyncToken = _internal_operation.send(user) ;

		return _internal_token;
	}   
	 
}

}
