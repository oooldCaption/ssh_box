
class CmdTool{
// 显示系统资源使用情况和进程信息的实时命令
  static const String TOP_CMD = "top";

// 显示系统资源使用情况和进程信息的实时命令，具有更友好的用户界面
  static const String HTOP_CMD = "htop";

// 显示系统内存的使用情况的命令
  static const String FREE_CMD = "free";

// 显示文件系统的已用空间和可用空间的命令
  static const String DF_CMD = "df";

// 显示当前正在运行的进程的信息的命令
  static const String PS_CMD = "ps";

// 列出打开的文件和打开它们的进程的命令
  static const String LSOF_CMD = "lsof";

// 显示网络连接、路由表和网络统计信息的命令
  static const String NETSTAT_CMD = "netstat";

// 显示磁盘和网络设备的 I/O 统计信息的命令
  static const String IOSTAT_CMD = "iostat";

// 显示系统统计信息，包括内存、交换分区、 I/O 和 CPU 利用率的命令
  static const String VMSTAT_CMD = "vmstat";

// 显示系统运行时间以及过去 1、5、15 分钟的系统负载平均值的命令
  static const String UPTIME_CMD = "uptime";
}