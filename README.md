## Firewall Inbound Rule Management with Dart

This project showcases the use of Dart to manage firewall inbound rules and includes a simple server running on port 8080 to demonstrate the added rules. It also demonstrates how to display dialog messages. The Dart code uses CMD commands to perform various actions.

### Project Overview

* This code is written in Dart and demonstrates how to add firewall inbound rules using a function.
* It includes a basic server running on port 8080 to validate the added firewall inbound rules.
* The project showcases how to display dialog messages using Dart.
* To ensure proper functionality, the program should be run with administrator privileges. Follow the steps below to set it up.

### Building the Executable (EXE)

To build the executable, use the following command:

```cmd
dart compile exe main.dart -o output/main.exe
```


### Setting Up Before Running

The program must be run in administration mode, as it uses the terminal to check and add firewall inbound rules to your system.

To set the "Run as Administration" property for the executable:

1. Find the main.exe file you built.
2. Right-click on the file and select **Properties**.
3. Go to the **Compatibility** tab.
4. Check the **Run as Administrator** box.
5. Click **Apply Changes** and then **OK**.

Now, each time you open the main.exe file, it will automatically run in administration mode.

### Running the Program

1. Double-click on the main.exe file located inside the "output" folder.
2. Open a web browser on your computer or any other device and paste the following URL:

```
${YOUR-IP-ADDRESS}:8080
```
```
Example: 192.168.10.9:8080
```

Note: In your server logs, you will see the IP addresses of devices trying to access it. For users accessing the server, they may see an error page. To handle server-specific details, please refer to the next repository.

### Finding Your IP Address

To find your computer's IP address, execute the following command in the command prompt (CMD):

```cmd
ipconfig
```

Your IP address will be displayed at the end of the output. It will look like 192.168.-.-. This is your computer's IP address, and other devices connected to the same router can access your server using this IP.


