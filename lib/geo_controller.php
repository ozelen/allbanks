<?

class GeoController extends Modules{

	function GeoController(){
		$this->inc();
	}

	function Exec($name, $params=NULL){
		parse_str($params, $p_arr);
		//foreach($this->uriVars as $k=>$v)print "<p>[$k]=>[$v]</p>";
		switch($name){
			case "struct": return $this->tree($this->uriVars['node']); break;
		}
	}


	function tree($node=0){
        $node = $node ? $node : 0;
		$db = $this->CFG->DB;
		$res = $db->q("select uname, type, id, node, code from Taxonomy where node = $node order by type, uname");
		$arr = array();
		$xml = "";
		while($r = mysql_fetch_object($res)){
			$r->uname = preg_replace('/[^(\x20-\x7F)]*/','', $r->uname);
			$r->uname = preg_replace('/,/','', $r->uname);
			$arr[$r->uname] = $r;
			$xml.='<item id="'.$r->id.'" node="'.$r->node.'" code="'.$r->code.'" type="'.$r->type.'"><![CDATA['.$r->uname.']]></item>';
		}
		return "<items>$xml</items>";
		//$obj = (object) $arr;
		//$xml = xmlOut::obj2xml($obj, geo);
		//print_r($obj);
	}


}
?>