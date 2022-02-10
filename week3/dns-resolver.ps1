param($network, $server)
for (($i = 1); i < 254; i++)
{
  $info = Resolve-DnsName -DnsOnly ($network + '.' +$i) -Server $server -ErrorAction Ignore | Select Name,NameHost
  Write-host "$info"
}
