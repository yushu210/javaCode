
@ echo off

::ֹͣ
::ֹͣ���� IP Helper
NET STOP iphlpsvc /y

::��ֹͣ������Winmgmt����������
::ֹͣ���� VMware Authorization Service
NET STOP VMAuthdService /y
::ֹͣ���� VMware USB Arbitration Service
NET STOP VMUSBArbService /y

::ֹͣ���� Windows Management Instrumentation
NET STOP Winmgmt /y


::����(��������)
::�������� Windows Management Instrumentation
::NET Start Winmgmt

::�������� IP Helper
NET Start iphlpsvc

pause