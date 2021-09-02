
@ echo off

::停止
::停止服务 IP Helper
NET STOP iphlpsvc /y

::先停止依赖于Winmgmt的两个服务
::停止服务 VMware Authorization Service
NET STOP VMAuthdService /y
::停止服务 VMware USB Arbitration Service
NET STOP VMUSBArbService /y

::停止服务 Windows Management Instrumentation
NET STOP Winmgmt /y


::启动(不用启动)
::启动服务 Windows Management Instrumentation
::NET Start Winmgmt

::启动服务 IP Helper
NET Start iphlpsvc

pause