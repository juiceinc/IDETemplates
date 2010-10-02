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

  import org.as3commons.lang.Assert;
  import org.springextensions.actionscript.core.command.ICommand;

  /**
   * TODO: Class description
   *
   * @author ${USER}
   */
  public class ${NAME} implements ICommand {

    private var _value:String;

    /**
     * Constructor.
     *
     */
    public function ${NAME}(value:String) {
      Assert.notNull(value, "The value argument must not be null.");
      _value = value;
    }


    /**
     * @inheritDoc
     *
     * @return this command
     */
    public function execute():* {
      // Do something to _value
      return this;
    }

  }
}
