<html>
	<head><title>Exceptions Observed by Hoth</title>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
	
	<style>
		/** Reset **/
		html,body,div,span,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,abbr,address,cite,code,del,dfn,em,img,ins,kbd,q,samp,small,strong,sub,sup,var,b,i,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,figure,footer,header,hgroup,menu,nav,section,menu,time,mark,audio,video{margin:0;padding:0;border:0;outline:0;font-size:100%;vertical-align:baseline;background:transparent}article,aside,figure,footer,header,hgroup,nav,section{display:block}nav ul{list-style:none}blockquote,q{quotes:none}blockquote:before,blockquote:after,q:before,q:after{content:'';content:none}a{margin:0;padding:0;font-size:100%;vertical-align:baseline;background:transparent}ins{background-color:#ff9;color:#000;text-decoration:none}mark{background-color:#ff9;color:#000;font-style:italic;font-weight:bold}del{text-decoration:line-through}abbr[title],dfn[title]{border-bottom:1px dotted #000;cursor:help}table{border-collapse:collapse;border-spacing:0}hr{display:block;height:1px;border:0;border-top:1px solid #ccc;margin:1em 0;padding:0}input,select{vertical-align:middle}body{font:13px sans-serif;*font-size:small;*font:x-small;line-height:1.22}table{font-size:inherit;font:100%}select,input,textarea{font:99% sans-serif}pre,code,kbd,samp{font-family:monospace,sans-serif}body,select,input,textarea{color:#444}h1,h2,h3,h4,h5,h6{font-weight:bold;text-rendering:optimizeLegibility}html{-webkit-font-smoothing:antialiased}a:hover,a:active{outline:none}a,a:active,a:visited{color:#607890}a:hover{color:#036}ul{margin-left:30px}ol{margin-left:30px;list-style-type:decimal}small{font-size:85%}strong,th{font-weight:bold}td,td img{vertical-align:top}sub{vertical-align:sub;font-size:smaller}sup{vertical-align:super;font-size:smaller}pre{padding:15px;white-space:pre;white-space:pre-wrap;white-space:pre-line;word-wrap:break-word}input[type="radio"]{vertical-align:text-bottom}input[type="checkbox"]{vertical-align:bottom;*vertical-align:baseline}.ie6 input{vertical-align:text-bottom}label,input[type=button],input[type=submit],button{cursor:pointer}::-moz-selection{background:#f26c4f;color:#000;text-shadow:none}::selection{background:#f26c4f;color:#000;text-shadow:none}a:link{-webkit-tap-highlight-color:#ff5e99}html{overflow-y:scroll}button{width:auto;overflow:visible}.ie7 img{-ms-interpolation-mode:bicubic}.ir{display:block;text-indent:-999em;overflow:hidden;background-repeat:no-repeat}.hidden{display:none;visibility:hidden}.visuallyhidden{position:absolute!important;clip:rect(1px 1px 1px 1px);clip:rect(1px,1px,1px,1px)}.invisible{visibility:hidden}.clearfix:after{content:".";display:block;height:0;clear:both;visibility:hidden}.clearfix{display:inline-block}* html .clearfix{height:1%}/*\*/.clearfix{display:block}/**/@media print{*{background:transparent!important;color:#444!important;text-shadow:none}a,a:visited{color:#444!important;text-decoration:underline}a:after{content:" (" attr(href) ")"}abbr:after{content:" (" attr(title) ")"}.ir a:after{content:""}pre,blockquote{border:1px solid #999;page-break-inside:avoid}img{page-break-inside:avoid}@page{margin:.5cm}p,h2,h3{orphans:3;widows:3}h2,h3{page-break-after:avoid}}@media screen and (max-device-width:480px){html{-webkit-text-size-adjust:none;-ms-text-size-adjust:none}}
		/** ----------------------------------------------------------- **/
		body {
			background-color: #e5e8f1;
			font-family: Arial, Helvetica, sans-serif;
			padding: 10px 30px;
		}
		div#container {
			overflow: hidden;
		}
		div#list {
			float: left;
			width: 140px;
			font-size: 14px;
		}
		div#list ul {
			margin: 0;
		}
		div#list ul li {
			list-style: none;
		}
		div#detail {
			margin-left: 160px;
		}
		div#detail dl {
			font-family: monospace;
		}
		div#detail dl dt {
			font-weight: 700;
			margin: 10px 0 10px 5px;
			font-size: 12px;
			text-transform: uppercase;
			font-family: Arial, Helvetica, sans-serif;
		}
		div#detail dl dd {
			margin: 0;
			padding: 10px;
			background-color: #fff;
			-moz-border-radius: 10px;
			border-radius: 10px;
		}
		div#detail dl dd div.mainline {
			padding: 2px 5px;
			border-bottom: 1px solid #ccc;
			font-weight: 700;
		}
		div#detail dl dd div.subline {
			font-size: 10px;
			padding: 2px 5px;
			color: #45454c;
		}
		div.linegroup {
			border: 1px solid #d0d2eb;
			padding: 5px;
			-moz-border-radius: 10px;
			border-radius: 10px;
margin-bottom: 5px;
		}
		div.linegroup:nth-child(odd) {
			background-color: #dbdef1;
		}
		h1 {
			font-size: 28px;
			line-height: 1em;
			margin: 10px 0;
			padding: 10px;
			background-color: #554a50;
			color: #fff;
			-moz-border-radius: 10px;
			border-radius: 10px;
		}
		h3 {
			font-size: 18px;
			margin: 10px 0;
			padding: 10px 0;
		}
		h4 {
			text-align: right;
			padding: 5px 10px;
		}
		h4 a {
			color: #000;
		}
	</style>
	</head>
	<body>
	<h4>Visit the main site at <a href="http://aarongreenlee.com/hoth">http://aarongreenlee.com/hoth</a></h4>
	<h1>Hoth: ColdFusion Exception Tracking</h1>
	<div id="container">
		<div id="list">
			<h3>Exceptions</h3>
			<div id="listing"><ul></ul></div>
		</div>
		<div id="detail">
			<h3>Details</h3>
			<div id="details">Click an exception from the list on the left.</div>
		</div>
	</div>

	<script type="text/javascript">
	$().ready(function() {
		/** Format a EPOCH into mm/dd/yyyy **/
		Date.prototype.formatIntoDate = function () {
			var r = (this.getMonth() + 1) + '/' + this.getDate() + '/' + this.getFullYear();
			return r;
		}

		var Hoth = {
			Exceptions : {}
		};

			$.ajax({
				url: '/Hoth/Report.cfc?method=report',
				cache: false,
				dataType: 'json',
				success: function(response){
					populatePage(response);
				}
			});

			var populatePage = function (ServerExceptions) {
				Hoth.Exceptions = ServerExceptions;
				
				/** Prepare **/
				Hoth.ExceptionsByVolume = [];
				// Parse our exceptions sent by the server
				for (var e in Hoth.Exceptions)
				{
					var ex = Hoth.Exceptions[e];
					// Seperate JavaScript information from the data provided by
					// the server
					ex.js = {};
					ex.js.short = e.substring(0,8).toUpperCase();
					ex.js.instances = [];

					// Create dates from the server EPOCH for our error report
					for (var d in  ex.incidentdetail)
					{
						try {
							ex.js.instances.push(new Date(d));
						} catch (e) {
							// silent.
						}
					}
					// Sort the dates in descending order
					ex.js.instances.sort();
					ex.js.instances.reverse();

					// Simplify our reference to the last exception date/time
					ex.js.lastErrorOccured = ex.js.instances[0];

					Hoth.ExceptionsByVolume.push(ex);
				}
				// Sort all of our exceptions by last date observed
				Hoth.ExceptionsByVolume.sort(compare);

				// Print the HTML links
				var exLinksHTML = '';
				for (var i in Hoth.ExceptionsByVolume)
				{
					var ex = Hoth.ExceptionsByVolume[i];
					exLinksHTML += '<li><a href="#' + ex.FILENAME + '" data-id="' + ex.FILENAME + '">' +
					ex.js.short + '</a> (' + ex.INCIDENTCOUNT + ')</li>';
					$('#listing ul').html(exLinksHTML);
				}
			}

			// -----------------------------------------------------------------
			$('#listing a').live('click',function(){
				var id = $(this).attr('data-id').toLowerCase();
				formatException(id);
			});	

		
					
		function formatException(id) {			
			$.ajax(
				{
					 url: '/Hoth/Report.cfc?method=report&exception='+id
					,async : false
					,cache: false
					,dataType: "json"
					,success: function (ex)
					{
						var bar = '<div id="exceptionMenu">\
						<a href="/Hoth/Report.cfc?method=report&exception=' + id + '">View Raw JSON</a> | \
						<a href="/Hoth/Report.cfc?method=delete&exception=' +
						id +
						'">Delete Reports</a></div>';
						
						if (typeof(ex.client) == 'undefined') {
							ex.message = ex.CLIENT;
						}
						if (typeof(ex.message) == 'undefined') {
							ex.message = ex.MESSAGE;
						}
						if (typeof(ex.detail) == 'undefined') {
							ex.detail = ex.DETAIL;
						}
						if (typeof(ex.context) == 'undefined') {
							ex.context = ex.CONTEXT;
						}
						if (typeof(ex.stack) == 'undefined') {
							ex.stack = ex.STACK;
						}
						
						var detail = '<dl>'
						+ '<dt>URL</dt><dd>' + ex.url + '</dd>'
						+ '<dt>User Agent</dt><dd>' + ex.client + '</dd>'
						+ '<dt>Message</dt><dd>' + ex.message + '</dd>'
						+ '<dt>Detail</dt><dd>' + ex.detail + '</dd>'
						+ '<dt>Context</dt><dd>' + iterateExceptionContext(ex.context) + '</dd>'
						+ '<dt>Stack</dt><dd>' + ex.stack + '</dd>';
						
						$('#details').html(bar + detail);
					}
				}
			);		
		}

		function iterateExceptionContext(context) {
			var output = [];
			for (var i in context) {
				var c = context[i];
				var mainline = c.template + '[' + c.line + ']';
				var subline = c.type + '(' + c.raw_trace + ')';
				output.push('<div class="linegroup"><div class="mainline">' + mainline + '</div><div class="subline">' + subline + '</div></div>');
			}			
			return output.join(""); 
		}

		function parseExceptionString(s) {
			var r = s.replace('#','');
			return r.replace('.log','');
		}

		function compare(a,b) {
			if (a.incidentcount < b.incidentcount)
				return 1;

			if (a.incidentcount > b.incidentcount)
				return -1;

			return 0;
		}
		
	});
	</script>
</body>
</html>