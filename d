diff --cc .htaccess
index 82a77a6,2da8786..0000000
--- a/.htaccess
+++ b/.htaccess
@@@ -1,43 -1,57 +1,103 @@@
++<<<<<<< HEAD
 +AddDefaultCharset utf-8
 +Options Includes +ExecCGI
 +
 +AddType text/x-server-parsed-html .html
 +AddType application/x-httpd-php .php .html .phtml
 +
 +Options +FollowSymlinks
 +RewriteEngine on
 +
 +
 +php_value error_reporting 7
 +
 +
 +#Action libhandler "/index.php?"
 +AddHandler libhandler .html .htm
 +
 +# remove neibour slashes
 +#RewriteRule ^(.*)$ index.php?lang=ua&sub=$1
 +
 +
 +RewriteBase /
 +RewriteCond %{REQUEST_FILENAME} !-d
 +RewriteCond %{REQUEST_FILENAME} !-f
 +
 +
 +RewriteRule ^img/(.*)$ sources/img/$1 [L]
 +RewriteRule ^swf/(.*)$ sources/swf/$1 [L]
 +RewriteRule ^css/(.*)$ sources/css/$1 [L]
 +RewriteRule ^js/(.*)$ sources/js/$1 [L]
 +
 +
 +RewriteRule ^$ index.php?lang=$1
 +RewriteRule ^(ua|ru|en)$ index.php?lang=$1 [L]
 +RewriteRule ^(ua|ru|en)/$ index.php?lang=$1 [L]
 +
 +
 +#RewriteRule ^(mortgagecalculator|paydayloans|auto-loans|mortgage|auto-insurance|debt-settlement|tax-debt-relief|credit-repair|)$ index.php?sub=/$1;
 +
 +
 +RewriteRule ^(en|ua|ru|de|pl|ro|fr|by|cz)/(.*)(\.html|\.htm|){0,1}$ index.php?lang=$1&sub=$2&ext=$3 [L,NS]
 +RewriteRule ^([a-zA-Z0-9\(\)\-_\/%\s:]+)(\.html|\.htm){0,1}$ index.php?sub=$1&ext=$2 [L,NS]
 +
- RewriteRule ^(?!index)(?!program)(?!plugins)([a-zA-Z0-9\(\)\-_\/%\s:]+)\.php$ index.php?sub=$1&ext=.php
++RewriteRule ^(?!index)(?!program)(?!plugins)([a-zA-Z0-9\(\)\-_\/%\s:]+)\.php$ index.php?sub=$1&ext=.php
++=======
+ AddDefaultCharset utf-8
+ Options Includes +ExecCGI
+ 
+ AddType text/x-server-parsed-html .html
+ AddType application/x-httpd-php .php .html .phtml
+ 
+ Options +FollowSymlinks
+ RewriteEngine on
+ 
+ 
+ php_value error_reporting 7
+ 
+ 
+ #Action libhandler "/index.php?"
+ AddHandler libhandler .html .htm
+ 
+ # remove neibour slashes
+ #RewriteRule ^(.*)$ index.php?lang=ua&sub=$1
+ 
+ 
+ RewriteBase /
+ RewriteCond %{REQUEST_FILENAME} !-d
+ RewriteCond %{REQUEST_FILENAME} !-f
+ 
+ 
+ 
+ RewriteRule ^img/(.*)$ sources/img/$1 [L]
+ RewriteRule ^swf/(.*)$ sources/swf/$1 [L]
+ RewriteRule ^css/(.*)$ sources/css/$1 [L]
+ RewriteRule ^js/(.*)$ sources/js/$1 [L]
+ 
+ 
+ 
+ 
+ RewriteRule ^$ index.php?lang=$1
+ RewriteRule ^(ua|ru|en)$ index.php?lang=$1 [L]
+ RewriteRule ^(ua|ru|en)/$ index.php?lang=$1 [L]
+ 
+ 
+ 
+ #RewriteRule ^(mortgagecalculator|paydayloans|auto-loans|mortgage|auto-insurance|debt-settlement|tax-debt-relief|credit-repair|)$ index.php?sub=/$1;
+ 
+ 
+ 
+ RewriteRule ^(en|ua|ru|de|pl|ro|fr|by|cz)/(.*)(\.html|\.htm|){0,1}$ index.php?lang=$1&sub=$2&ext=$3 [L,NS]
+ RewriteRule ^([a-zA-Z0-9\(\)\-_\/%\s:]+)(\.html|\.htm){0,1}$ index.php?sub=$1&ext=$2 [L,NS]
+ 
+ RewriteRule ^(?!index)(?!program)(?!plugins)([a-zA-Z0-9\(\)\-_\/%\s:]+)\.php$ index.php?sub=$1&ext=.php
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
+ 
++>>>>>>> ebbab2ec79fffbfb58c835a5e7b86b5f224c6107
diff --cc config.php
index 9799d27,6c40df1..0000000
--- a/config.php
+++ b/config.php
@@@ -43,7 -43,7 +43,11 @@@ class Settings
  	var $Mail;
  	public static $ModuleClassArray;
  	function Settings(){
++<<<<<<< HEAD
 +		$this->PAPA = "banks.tst";
++=======
+ 		$this->PAPA = "banks.zelenyuk.com";
++>>>>>>> ebbab2ec79fffbfb58c835a5e7b86b5f224c6107
  		global $RSI;
  		$this->rsi = new rsi();
  		
@@@ -75,11 -75,10 +79,18 @@@
  		$this->RootDir=$_SERVER['DOCUMENT_ROOT'];
  		$this->TempDir = $this->RootDir."/sources/temp/";
  		$this->CacheDir = '/var/www/zelenyuk/data/allbanks/cache/';
++<<<<<<< HEAD
 +		$this->CacheDir = $this->RootDir.'/../../cache/';
 +		$this->guiImgDir = $this->RootDir."/sources/img/";
 +		$this->uriArr = array();
 +
 +//		$this->ImgDir = "/var/www/djerelo/data/www/pic.djerelo.info/img/hotcat";
++=======
+ 		$this->guiImgDir = $this->RootDir."/sources/img/";
+ 		$this->uriArr = array();
+ 
+ 		$this->ImgDir = "/var/www/djerelo/data/www/pic.djerelo.info/img/hotcat";
++>>>>>>> ebbab2ec79fffbfb58c835a5e7b86b5f224c6107
  		
  		$this->IncDir = $this->RootDir."/lib/";
  		$this->DataDir = $this->RootDir."/data";
@@@ -184,7 -183,7 +195,11 @@@
  	
  	function setHomePageId(){
  		
++<<<<<<< HEAD
 +		$arr = split("\.", $this->Domain);
++=======
+ 		$arr = explode("\.", $this->Domain);
++>>>>>>> ebbab2ec79fffbfb58c835a5e7b86b5f224c6107
  		$sub=array();
  		//$dom = join("[", $arr);
  		foreach($arr as $e){
@@@ -361,9 -360,9 +376,15 @@@ $RSI = new rsi()
  
  
  function q($q){global $caCFG; return $caCFG->DB->q($q);}
++<<<<<<< HEAD
 +function fetchObj($res){return mysql_fetch_object(&$res);}
 +function fetchArr($res){return mysql_fetch_array(&$res);}
 +function fetch($res){return fetchObj(&$res);}
++=======
+ function fetchObj($res){return mysql_fetch_object($res);}
+ function fetchArr($res){return mysql_fetch_array($res);}
+ function fetch($res){return fetchObj($res);}
++>>>>>>> ebbab2ec79fffbfb58c835a5e7b86b5f224c6107
  function fq($q){return fetchObj(q($q));}
  
  
