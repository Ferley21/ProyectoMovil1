net use M: /delete /y

$net = new-object -ComObject WScript.Network
$net.MapNetworkDrive("m:", "\\dominio-acs\ReportesC", $false, "tecnico", "m3m0r1a")

$sesion=query user
$sesion=$sesion.split("
")[1]
$sesion=$sesion.split()[1]

if ($sesion -eq ""){
$sesion=query user
$sesion=$sesion.split("
")[1]
$sesion=$sesion.split(">")[1]
$sesion=$sesion.split()[0]
}

Write "Nombre del equipo :" >> M:\Reporte$sesion.txt
write $env:COMPUTERNAME >> M:\Reporte$sesion.txt
$info=systeminfo
$info=$info.split(":")[20]
$info=$info.split(",")[0]
$info=$info.split("")[13]
write "" >> M:\Reporte$sesion.txt
write "Fecha instalacion de Windows : ", $info >> M:\Reporte$sesion.txt
Write "" >> M:\Reporte$sesion.txt

Get-WmiObject -class "Win32_Processor"| % { 
    Write "CPU Model: " >> M:\Reporte$sesion.txt
    Write $_.Name >> M:\Reporte$sesion.txt
    Write "CPU Cores: " >> M:\Reporte$sesion.txt
    Write $_.NumberOfCores >> M:\Reporte$sesion.txt
    Write "CPU Status: " >> M:\Reporte$sesion.txt
    Write $_.Status >> M:\Reporte$sesion.txt
    Write "" >> M:\Reporte$sesion.txt
}

Get-wmiobject -class "win32_physicalmemory"| % {
    Write "Modelo Menemoria: " >> M:\Reporte$sesion.txt
    Write $_.Manufacturer >> M:\Reporte$sesion.txt
    write "Capacidad: " >> M:\Reporte$sesion.txt
    $capacidad=[math]::round($_.capacity/1GB, 2)
    Write $capacidad "GB" >> M:\Reporte$sesion.txt
    Write "" >> M:\Reporte$sesion.txt
}

Get-disk| % {
    Write "Modelo de Disco: " >> M:\Reporte$sesion.txt
    Write $_.FriendlyName >> M:\Reporte$sesion.txt
    Write "Capacidad:" >> M:\Reporte$sesion.txt
    $tamaño=[math]::round($_.size/1GB, 2)
    Write $tamaño "GB" >> M:\Reporte$sesion.txt
    Write "" >> M:\Reporte$sesion.txt
}

Get-WmiObject -class "Win32_DisplayControllerConfiguration"| % {
    Write "Tarjeta Grafica: " >> M:\Reporte$sesion.txt
    Write $_.name >> M:\Reporte$sesion.txt
    Write "" >> M:\Reporte$sesion.txt
    write "_________________________________________________________________________________________________________________________________________" >> M:\Reporte$sesion.txt
    write ""
}

start-sleep -seconds 3
net use M: /delete /y