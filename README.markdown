This repo contains shared file and live templates for IntelliJ and Flash Builder+SourceMate. 

These templates assume you're building a standard Juice project and that you are using SpringActionScript. 

There are two types of templates:

* File templates: IntelliJ only. These appear when you create a new file.
* Live templates: IntelliJ and SourceMate. These insert a preformatted block into your code. In IntelliJ, they are triggered by typing the keyword then hitting tab. In SourceMate, they are inserted by typing the keyword then hitting autocomplete (Ctrl-space).



How to create file templates in Flash Builder 
[http://help.adobe.com/en_US/flashbuilder/using/WS52085436-ABD3-4d4d-B5E2-41C668CF6847.htmlEclipse].

# Installing the templates

To install the templates in IntelliJ, run deploy.bash. This will copy both the File templates and live templates to the right place on your system. The `deploy.bash` script may need modification if your IntelliJ is a nonstandard version. **Watch out: installing templates may overwrite your modifications.** 

To install the templates in Flash Builder + SourceMate, go to Preferences, open SourceMate/Templates, and import sourcemateTemplates/juice.xml


## Eclipse/ Flash Builder

To install templates in Flash Builder, you first need to install the SourceMate plugin.

Follow the download and installation instructions here ([http://www.elementriver.com/sourcemate/download-installation/]), restart Flash Builder then get a license key from Chris.


# Live templates

**itar** -- iterate elements of array
**iter** -- iterate for each in
**itin** -- iterate (for .. in)
**pv** -- public var
**pc** -- public const
**pf** -- public function
**psc** -- public static const
**psf** -- public static function
**psv** -- public static var
**prc** -- private const
**prf** -- private function
**prv** -- private variable
**prsc** -- private static const
**prsf** -- private static function
**riter** -- iterate elements of array in reverse
**eh** -- eventhandler
**//-** -- comment separator block
**//p** -- properties comment separator
**//m** -- properties comment separator


# How to create file templates for IntelliJ

File templates can only be created for IntelliJ. They appear when you create a new file.

## Tips

* Use TODOs to indicate what parts of the new file need to be customized.

## IntelliJ

IntelliJ uses the Velocity template engine for file templates. Here are some sample variables.

* ${PACKAGE_NAME} - the name of the target package where the new class or interface will be created.
* ${USER} - login name of the current user.
* ${DATE} - the current system date.
* ${TIME} - the current system time.
* ${YEAR} - the current year.
* ${MONTH} - the current month.
* ${DAY} - the current day of the month.
* ${HOUR} - the current hour.
* ${MINUTE} - the current minute.

You can also include other files with `#parse("template_name.extension")`. If you reference a variable name that doesn't exist, the user will be prompted in the dialog box.


