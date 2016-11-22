/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Photo.as.
 */

package be.flexpert.webshop.valueObjects
{
import flash.events.EventDispatcher;
import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.IValueObject;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.services.IFiberManagingService;
import mx.binding.utils.ChangeWatcher;
import mx.rpc.AbstractService;


import flash.events.Event;
import mx.events.CollectionEvent;
import mx.events.PropertyChangeEvent;


use namespace model_internal;

[ExcludeClass]
public class _Super_Photo extends EventDispatcher implements IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
        try 
        {
            if (flash.net.getClassByAlias("be.flexpert.webshop.dtos.Photo") == null)
            {
                flash.net.registerClassAlias("be.flexpert.webshop.dtos.Photo", cz);
            } 
        }
        catch (e:Error) 
        {
            flash.net.registerClassAlias("be.flexpert.webshop.dtos.Photo", cz); 
        }
     }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
    }

	model_internal var _dminternal_model : _PhotoEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_category : String;
	private var _internal_thumbnail : String;
	private var _internal_price : Number = 0;
	private var _internal_location : String;
	private var _internal_photo_name : String;
	private var _internal_photo_id : int;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_Photo() 
	{	
		_model = new _PhotoEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get category() : String    
    {
            return _internal_category;
    }    
	[Bindable(event="propertyChange")] 
    public function get thumbnail() : String    
    {
            return _internal_thumbnail;
    }    
	[Bindable(event="propertyChange")] 
    public function get price() : Number    
    {
            return _internal_price;
    }    
	[Bindable(event="propertyChange")] 
    public function get location() : String    
    {
            return _internal_location;
    }    
	[Bindable(event="propertyChange")] 
    public function get photo_name() : String    
    {
            return _internal_photo_name;
    }    
	[Bindable(event="propertyChange")] 
    public function get photo_id() : int    
    {
            return _internal_photo_id;
    }    

    /**
     * data property setters
     */      
    public function set category(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_category == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_category;               
        if (oldValue !== value)
        {
        	_internal_category = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "category", oldValue, _internal_category));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set thumbnail(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_thumbnail == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_thumbnail;               
        if (oldValue !== value)
        {
        	_internal_thumbnail = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "thumbnail", oldValue, _internal_thumbnail));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set price(value:Number) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:Number = _internal_price;               
        if (oldValue !== value)
        {
        	_internal_price = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "price", oldValue, _internal_price));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set location(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_location == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_location;               
        if (oldValue !== value)
        {
        	_internal_location = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "location", oldValue, _internal_location));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set photo_name(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_photo_name == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_photo_name;               
        if (oldValue !== value)
        {
        	_internal_photo_name = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "photo_name", oldValue, _internal_photo_name));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set photo_id(value:int) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:int = _internal_photo_id;               
        if (oldValue !== value)
        {
        	_internal_photo_id = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "photo_id", oldValue, _internal_photo_id));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    

    /**
     * data property setter listeners
     */   

   model_internal function setterListenerAnyConstraint(value:Event):void
   {
        if (model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }        
   }   

    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();    
        var validationFailureMessages:Array = new Array();    

		if (_model.isCategoryAvailable && _internal_category == null)
		{
			violatedConsts.push("categoryIsRequired");
			validationFailureMessages.push("category is required");
		}
		if (_model.isThumbnailAvailable && _internal_thumbnail == null)
		{
			violatedConsts.push("thumbnailIsRequired");
			validationFailureMessages.push("thumbnail is required");
		}
		if (_model.isLocationAvailable && _internal_location == null)
		{
			violatedConsts.push("locationIsRequired");
			validationFailureMessages.push("location is required");
		}
		if (_model.isPhoto_nameAvailable && _internal_photo_name == null)
		{
			violatedConsts.push("photo_nameIsRequired");
			validationFailureMessages.push("photo_name is required");
		}

		var styleValidity:Boolean = true;
	
	
	
	
	
	
    
        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && styleValidity;
    }  

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
       	var oldValue:Boolean = model_internal::_isValid;               
        if (oldValue !== value)
        {
        	model_internal::_isValid = value;
        	_model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }        
    }

    /**
     * derived property getters
     */

    [Transient] 
	[Bindable(event="propertyChange")] 
    public function get _model() : _PhotoEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _PhotoEntityMetadata) : void       
    {
    	var oldValue : _PhotoEntityMetadata = model_internal::_dminternal_model;               
        if (oldValue !== value)
        {
        	model_internal::_dminternal_model = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }     
    }      

    /**
     * methods
     */  


    /**
     *  services
     */                  
     private var _managingService:IFiberManagingService;
    
     public function set managingService(managingService:IFiberManagingService):void
     {
         _managingService = managingService;
     }                      
     
    model_internal function set invalidConstraints_der(value:Array) : void
    {  
     	var oldValue:Array = model_internal::_invalidConstraints;
     	// avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;   
			_model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);   
        }     	             
    }             
    
     model_internal function set validationFailureMessages_der(value:Array) : void
    {  
     	var oldValue:Array = model_internal::_validationFailureMessages;
     	// avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;   
			_model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);   
        }     	             
    }        
     
     // Individual isAvailable functions     
	// fields, getters, and setters for primitive representations of complex id properties

}

}
