/*
 * -*- Mode: Actionscript -*-
 * *************************************************************************
 *
 * The contents of this file are Copyright (c) 2010 by Juice, Inc.
 * In addition, the contents are proprietary and confidential.
 *
 * *************************************************************************
 */


package ${PACKAGE_NAME}#if (${PACKAGE_NAME} != "") #end {

  import flash.display.BitmapData;
  import flash.display.IBitmapDrawable;
  import flash.net.FileReference;
  import flash.utils.ByteArray;

  import mx.graphics.ImageSnapshot;
  import mx.graphics.codec.PNGEncoder;

  import org.as3commons.lang.Assert;
  import org.springextensions.actionscript.core.command.ICommand;

  /**
   * A command to save a PNG image of a <code>DisplayObject</code> to the desktop
   * file system.
   * Note: This required Flash Player 10.
   *
   * @author ${AUTHO}
   */
  public class ${NAME} implements ICommand {

    /**
     * Constructor.
     * Hi chris
     *
     * @param imageSource
     */
    public function ${NAME}(imageSource:IBitmapDrawable) {
      Assert.notNull(imageSource, "The imageSource argument must not be null.");
      _imageSource = imageSource;
    }


    /**
     * @inheritDoc
     *
     * @return this command
     */
    public function execute():* {
      const bitmapData:BitmapData = ImageSnapshot.captureBitmapData(_imageSource);
      const encoder:PNGEncoder = new PNGEncoder();
      const bytes:ByteArray = encoder.encode(bitmapData);
      const fileReference:FileReference = new FileReference();
      fileReference.save(bytes, "unnamed1.png");
      return this;
    }

  }
}
