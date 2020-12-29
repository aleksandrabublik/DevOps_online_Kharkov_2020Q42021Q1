
	# TASK 2.1
# PART 1. HYPERVISORS
1. What are the most popular hypervisors for infrastructure virtualization?
	- Citrix XenServer;
	- Microsoft Hyper-V; 
	- Red Hat KVM;
	- VMware vSphere;
2. Briefly describe the main differences of the most popular hypervisors.
- Features Citrix XenServer:
	- Site recovery
	- Host crash protection
	- Multi-server management
	- Dynamic memory management
	- Role-based administration and control
	- Distributed virtual switch controller
	- In-memory read caching
	- Live VM migration and XenMotion storage
- Features Hyper-V:
	- Support for persistent memory.
	- Hyper-V is less demanding on hardware.
	- Shielded VM updates.
	- Simple two-node clusters.
	- Storage Spaces Direct improvements.
	- Windows Admin Center.
	- Encrypted subnets.
- Features Red Hat KVM:
	- Container support
	- Scalability
	- Overloading resources
	- Disk I / O Adjustment
	- Hot plugging virtual resources
	- Inexpensive virtualization solution
	- The most resource-friendly software. This should be considered when designing budget virtualization solutions.
	- Red Hat Enterprise Virtualization Programming and API
	- Live migration and storage migration
	- Integration with Red Hat Satellite
	- Disaster recovery support
- Features VMware vSphere:
	- vCenter Server: A centralized management tool used to configure, provision and manage virtualized IT environments.
	- vSphere SDK: Provides third-party interfaces for accessing vSphere.
	- VM file system: The cluster file system for VMs.
	- Virtual SMP: Allows one virtual machine to use multiple physical processors at the same time.
	- vMotion: Provides live migration with transaction integrity.
	- Storage vMotion: Allows you to transfer virtual machine files from one location to another without disrupting service.
	- High Availability: If one server fails, the virtual machine switches to another server with spare capacity to ensure business continuity.
	- Distributed Resource Scheduler: Automatically assigns and distributes computations across hardware resources available to virtual machines.
	- Fault Tolerance: Creates a copy of the primary virtual machine for continuous availability.
	
# PART 2. WORK WITH VIRTUALBOX

1. First run VirtualBox and Virtual Machine (VM).

	1.1 Get acquainted with the structure of the user manual VirtualBox
	1.2 From the official VirtualBox site download the latest stable version of VirtualBox according to the host operating system (OS) installed on the student's workplace. For Windows, the file may be called, for example, VirtualBox-6.1.10-138449-Win.exe. Install VirtualBox.
	1.2 Download the latest stable version of Ubuntu Desktop or Ubuntu Server from the official site.
	1.3 Create VM1 and install Ubuntu using the instructions. Set machine name as "host machine name"_"student last name"
	1.4 Get acquainted with the possibilities of VM1 control - start, stop, reboot, save state, use Host key and keyboard shortcuts, mouse capture, etc.
	1.5 Clone an existing VM1 by creating a VM2.
	1.6 Create a group of two VM: VM1, VM2 and learn the functions related to groups.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/VM_Group.jpg)

	1.7 For VM1, changing its state, take several different snapshots, forming a branched tree of snapshots.
	1.8 Export VM1. Save the *.ova file to disk. Import VM from *.ova file.

![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/VBjpg.jpg)

 2. Configuration of virtual machines
 
	2.1 Explore VM configuration options (general settings, system settings, display, storage, audio, network, etc.).
	2.2 Configure the USB to connect the USB ports of the host machine to the VM.
	2.3 Configure a shared folder to exchange data between the virtual machine and the host.
	2.4 Configure different network modes for VM1, VM2. Check the connection between VM1, VM2, Host, Internet for different network modes. You can use the ping command to do this. Make a table of possible connections.

 3. Work with CLI through VBoxManage.
 
	3.1 Run the cmd.exe command line.
	-I downloaded a new image (MX-19.3_x64) in the format iso
	3.2 Examine the purpose and execute the basic commands of VBoxManage list, showvminfo, createvm, startvm, modifyvm, clonevm, snapshot, controlvm [1, ch.8].

	- VBoxManage list
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/VBoxManage_list.jpg)

	- showvminfo
	-VM1
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/Showinfo_vm1.jpg)
	-VM2
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/showinfo%202.jpg)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/showinfo2.1.jpg)

	- Createvm
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/Createvm.jpg)

	- Modify and startvm
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/modify%20and%20startvm.jpg)

	- Clone and snapshot
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/clone%20and%20snapshot.jpg)

	- Controlvm
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/controlvm.jpg)

# PART 3. WORK WITH VAGRANT

1. Download the required version of Vagrant according to the instructions and according to the host operating system (OS) installed on the workplace. For Windows, the file may be called, for example, vagrant_2.2.0_x86_64.msi. Install Vagrant. Check the path to Vagrant bin in the Path variable.
2. Run the powershell. Create a folder "student name" (in English). In this example, create a folder vagrant_test. Next, go to the folder.
Command -> mkdir bublyk_oleksandra_vagrant
3. Initialize the environment with the default Vagrant box: 
	command -> vagrant init hashicorp/precise64
4. Run vagrant up and watch for messages during VM boot and startup.
	command -> vagrant up 
5. Connect to the VM using the program PuTTY (can be downloaded from [6]), using SSH, IP address and port listed above (127.0.0.1:2222). By default, login - vagrant and password are also vagrant
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/Putty.jpg)

6. Record the date and time by executing the date command -> date
7. Stop and delete the created VM.
Command:
	- vagrant halt
	- vagrant destroy
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/Vagrant%20halt%20and%20destroy.jpg)

8. Create your own Vagrant box [7] 
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/Vagrant%20package%20and%20add.png)

9. (optional) Create a test environment from a few servers. Servers' parameters are chosen independently by the student.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/Launch%20multiVm.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/Change%20setting.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/ssh%20vm1.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/ssh%20vm2.png)

Vagrant file:
![alt tag](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module2/task%202.1/Vagrantfile)


