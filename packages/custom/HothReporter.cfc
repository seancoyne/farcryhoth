component output="false" extends="Hoth.HothReporter" {
	
	public string function getReportView () {
		return fileRead(expandPath('/farcry') & '/plugins/farcryhoth/www/views/report.html');
	}
	
}