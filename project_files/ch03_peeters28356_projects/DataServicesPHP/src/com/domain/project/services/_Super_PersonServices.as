/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - PersonServices.as.
 */
package com.domain.project.services
{
import mx.rpc.AsyncToken;
import com.adobe.fiber.core.model_internal;
import mx.rpc.AbstractOperation;
import com.domain.project.valueObjects.PersonDTO;
import mx.collections.ItemResponder;
import mx.rpc.remoting.RemoteObject; 
import mx.rpc.remoting.Operation;
import com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.serializers.utility.TypeUtility;

[ExcludeClass]
internal class _Super_PersonServices extends RemoteObjectServiceWrapper
{      
       
    // Constructor
    public function _Super_PersonServices()
    {
        // initialize service control
        _serviceControl = new RemoteObject(); 
        
        var operations:Object = new Object();
        var operation:Operation;         
         
        operation = new Operation(null, "getAll");
		 operation.resultElementType = com.domain.project.valueObjects.PersonDTO;
        operations["getAll"] = operation;
         
     com.domain.project.valueObjects.PersonDTO._initRemoteClassAlias();
        operation = new Operation(null, "getPerson");
		 operation.resultType = Object; 		 
        operations["getPerson"] = operation;
         
        operation = new Operation(null, "addPerson");
		 operation.resultType = Object; 		 
        operations["addPerson"] = operation;
         
        operation = new Operation(null, "updatePerson");
		 operation.resultType = Object; 		 
        operations["updatePerson"] = operation;
         
        operation = new Operation(null, "removePerson");
		 operation.resultType = Object; 		 
        operations["removePerson"] = operation;
         
    
        _serviceControl.operations = operations;   
		_serviceControl.convertResultHandler = TypeUtility.convertResultHandler;
        _serviceControl.source = "PersonServices";
        _serviceControl.endpoint = "gateway.php";
		_serviceControl.destination = "PersonServices";
        
    
                      
         model_internal::initialize();
    }

	/**
	  * This method is a generated wrapper used to call the 'getAll' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getAll() : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getAll");
		var _internal_token:AsyncToken = _internal_operation.send() ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'getPerson' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getPerson(id:Object) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getPerson");
		var _internal_token:AsyncToken = _internal_operation.send(id) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'addPerson' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function addPerson(person:Object) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("addPerson");
		var _internal_token:AsyncToken = _internal_operation.send(person) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'updatePerson' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function updatePerson(person:Object) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("updatePerson");
		var _internal_token:AsyncToken = _internal_operation.send(person) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'removePerson' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function removePerson(id:Object) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("removePerson");
		var _internal_token:AsyncToken = _internal_operation.send(id) ;

		return _internal_token;
	}   
	 
}

}
