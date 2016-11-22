// Copyright Steven Peeters (c), 2010
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filesystem.File;
import flash.net.FileFilter;

import mx.graphics.codec.JPEGEncoder;
import mx.graphics.codec.PNGEncoder;


private var image:File = new File();
[Bindable]
private var newImageData:ByteArray;
private var fileFilters:Array;
private var loader:Loader;

/**
 * This method is called when the application starts up and will perfom
 * some one-time initialisations.
 */
private function initApp():void
{
	// Center the application on the screen
	var centerX:Number = Screen.mainScreen.bounds.width / 2;
	var centerY:Number = Screen.mainScreen.bounds.height / 2;
	nativeWindow.x = centerX - (nativeWindow.width / 2);
	nativeWindow.y = centerY - (nativeWindow.height / 2);
	
	fileFilters = new Array();
	fileFilters.push(new FileFilter("JPEG file (*.jpg)", "*.jpg", "*.jpg"));
	fileFilters.push(new FileFilter("PNG file (*.png)", "*.png", "*.png"));
}

/**
 * @param event The MouseEvent object that is provided by the framework
 * 
 * This method will provide the user with a system browse dialog to allow
 * him to select an image file of the types PNG and JPG.
 */
protected function btnBrowse_clickHandler(event:MouseEvent):void
{
	image.addEventListener(Event.SELECT, fileSelected);
	image.browseForOpen("Select a file", fileFilters);
}

/**
 * @param event The basic Event object that is provided by the framework
 * 
 * This method is called when the user has selected a file. We then load
 * that file in memory.
 */
private function fileSelected(event:Event):void 
{
	image.removeEventListener(Event.SELECT, fileSelected);
	fileInput.text = image.name;
	image.addEventListener(Event.COMPLETE, imageLoaded);
	image.load();
}

/**
 * @param event The basic Event object that is provided by the framework
 * 
 * This method is called when the image has been loaded in memory and
 * will display it in the application.
 */
private function imageLoaded(event:Event):void 
{
	image.removeEventListener(Event.COMPLETE, imageLoaded);
	newImageData = image.data;
	slider.value = 100;
	loader = new Loader();
	loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadComplete);
	loader.loadBytes(newImageData);
}

/**
 * @param event The basic Event object that is provided by the framework
 * 
 * This method is called when the image has been loaded in the Loader object
 * which we need to determine the width and height of the original image.
 */
private function loadComplete(event:Event):void {
	loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, loadComplete);
	origWidth.text = currentWidth.text = String(loader.width);
	origHeight.text = currentHeight.text = String(loader.height);
}

/**
 * @param event The MouseEvent object that is provided by the framework
 * 
 * This method will save the image on disk, requesting the user for a location.
 */
protected function btnSave_clickHandler(event:MouseEvent):void
{
	image.save(newImageData, image.name);
}

/**
 * @param event The MouseEvent object that is provided by the framework
 * 
 * This method will reset the image to it's original size.
 */
protected function btnReset_clickHandler(event:MouseEvent):void
{
	slider.value = 100;
	newImageData = image.data;
	currentWidth.text = origWidth.text;
	currentHeight.text = origHeight.text;
}


/**
 * @param event The MouseEvent object that is provided by the framework
 * 
 * This method will close the application.
 */
protected function btnClose_clickHandler(event:MouseEvent):void
{
	nativeWindow.close();
}

/**
 * @param event The basic Event object that is provided by the framework
 * 
 * This method is called when the user has changed the thumbnail size
 * using the horizontal slider control. This means that we have to
 * dynamically resize the image that has been loaded.
 */
protected function slider_changeHandler(event:Event):void
{
	var calcWidth:Number = Math.floor(loader.width / 100 * slider.value);
	var calcHeight: Number = Math.floor(loader.height / 100 * slider.value);
	currentWidth.text = String(calcWidth);
	currentHeight.text = String(calcHeight);
	resizeImage(calcWidth, calcHeight);
}

/**
 * @param w The width of the new image
 * @param h The height of the new image
 * 
 * This method will perform the actual resize on the image in memory.
 * The selected file remains untouched, so we can alwyas revert to that
 * original format when the user click the reset button.
 */
private function resizeImage(w:Number, h:Number):void 
{	
	var bmp:BitmapData = new BitmapData(w,h, false);
	var mt:Matrix = loader.transform.matrix;
	mt.scale(w / loader.width, h / loader.height);
	bmp.draw(loader, mt);
	
	if(image.extension.toUpperCase() == "JPG") {
		var jpgEnc:JPEGEncoder = new JPEGEncoder(100);
		newImageData = jpgEnc.encode(bmp);
	} else {
		var pngEnc:PNGEncoder = new PNGEncoder();
		newImageData = pngEnc.encode(bmp);
	}
}

