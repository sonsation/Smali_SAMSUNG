.class public Landroid/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Process$ProcessStartResult;,
        Landroid/os/Process$ZygoteState;
    }
.end annotation


# static fields
.field public static final ADVMODEM_UID:I = 0x1399

.field public static final ASF_FILESHARE_UID:I = 0x138d

.field public static final ASF_MEDIASHARE_UID:I = 0x138f

.field public static final AUDIOSERVER_UID:I = 0x411

.field public static final BCMGR_SERVICE_UID:I = 0x138e

.field public static final BLUETOOTH_UID:I = 0x3ea

.field public static final CAMERASERVER_UID:I = 0x417

.field public static final CLOUDGATEWAY_SERVICE_UID:I = 0x1390

.field public static final CMH_SERVICE_UID:I = 0x138c

.field public static final DRM_UID:I = 0x3fb

.field public static final ENHANCED_FEATURES_UID:I = 0x1393

.field public static final FIRST_APPLICATION_UID:I = 0x2710

.field public static final FIRST_ISOLATED_UID:I = 0x182b8

.field public static final FIRST_SHARED_APPLICATION_GID:I = 0xc350

.field public static final FRESCO_UID:I = 0x1397

.field public static final INTELLIGENCE_SERVICE_UID:I = 0x1392

.field public static final JACK_UID:I = 0xfa1

.field public static final LAST_APPLICATION_UID:I = 0x4e1f

.field public static final LAST_ISOLATED_UID:I = 0x1869f

.field public static final LAST_SHARED_APPLICATION_GID:I = 0xea5f

.field private static final LOG_TAG:Ljava/lang/String; = "Process"

.field public static final LOG_UID:I = 0x3ef

.field public static final MEDIA_RW_GID:I = 0x3ff

.field public static final MEDIA_UID:I = 0x3f5

.field public static final MSG_COMM_UID:I = 0x138a

.field public static final NFC_UID:I = 0x403

.field public static final NS_FLP_UID:I = 0x1395

.field public static final OCRSERVICE_UID:I = 0x1398

.field public static final PACKAGE_INFO_GID:I = 0x408

.field public static final PHONE_UID:I = 0x3e9

.field public static final PROC_CHAR:I = 0x800

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_QUOTES:I = 0x400

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I = 0x0

.field public static final ROOT_UID:I = 0x0

.field public static final SCHED_BATCH:I = 0x3

.field public static final SCHED_FIFO:I = 0x1

.field public static final SCHED_IDLE:I = 0x5

.field public static final SCHED_OTHER:I = 0x0

.field public static final SCHED_RESET_ON_FORK:I = 0x40000000

.field public static final SCHED_RR:I = 0x2

.field public static final SCLOUD_SERVICE_UID:I = 0x1391

.field public static final SECONDARY_ZYGOTE_SOCKET:Ljava/lang/String; = "zygote_secondary"

.field public static final SENDHELPMSG_UID:I = 0x138b

.field public static final SHARED_RELRO_UID:I = 0x40d

.field public static final SHARED_USER_GID:I = 0x270d

.field public static final SHELL_UID:I = 0x7d0

.field public static final SIGNAL_KILL:I = 0x9

.field public static final SIGNAL_QUIT:I = 0x3

.field public static final SIGNAL_USR1:I = 0xa

.field public static final SMDS_UID:I = 0x1394

.field public static final SPASS_UID:I = 0x4b1

.field public static final SPAY_UID:I = 0x4b0

.field public static final SYSTEM_ACCESS_UID:I = 0x514

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final THREAD_GROUP_ABNORMAL:I = -0x3

.field public static final THREAD_GROUP_AUDIO_APP:I = 0x3

.field public static final THREAD_GROUP_AUDIO_SYS:I = 0x4

.field public static final THREAD_GROUP_BG_NONINTERACTIVE:I = 0x0

.field public static final THREAD_GROUP_CACHED:I = -0x2

.field public static final THREAD_GROUP_DEFAULT:I = -0x1

.field private static final THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final THREAD_GROUP_FOREGROUND_BOOST:I = 0x5

.field public static final THREAD_GROUP_SYSTEM:I = 0x2

.field public static final THREAD_PRIORITY_AUDIO:I = -0x10

.field public static final THREAD_PRIORITY_BACKGROUND:I = 0xa

.field public static final THREAD_PRIORITY_DEFAULT:I = 0x0

.field public static final THREAD_PRIORITY_DISPLAY:I = -0x4

.field public static final THREAD_PRIORITY_FOREGROUND:I = -0x2

.field public static final THREAD_PRIORITY_LESS_FAVORABLE:I = 0x1

.field public static final THREAD_PRIORITY_LOWEST:I = 0x13

.field public static final THREAD_PRIORITY_MORE_FAVORABLE:I = -0x1

.field public static final THREAD_PRIORITY_URGENT_AUDIO:I = -0x13

.field public static final THREAD_PRIORITY_URGENT_DISPLAY:I = -0x8

.field public static final VPN_UID:I = 0x3f8

.field public static final WECHAT_WIFISERVICE_UID:I = 0x1396

.field public static final WIFI_UID:I = 0x3f2

.field static final ZYGOTE_RETRY_MILLIS:I = 0x1f4

.field public static final ZYGOTE_SOCKET:Ljava/lang/String; = "zygote"

.field static agent32ZygoteState:Landroid/os/Process$ZygoteState;

.field static agent64ZygoteState:Landroid/os/Process$ZygoteState;

.field static primaryZygoteState:Landroid/os/Process$ZygoteState;

.field private static sStartElapsedRealtime:J

.field private static sStartUptimeMillis:J

.field static secondaryZygoteState:Landroid/os/Process$ZygoteState;

.field private static systemServerPid:I


# direct methods
.method static synthetic -wrap0(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "inputStream"    # Ljava/io/DataInputStream;

    .prologue
    invoke-static {p0, p1}, Landroid/os/Process;->getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static establishZygoteConnectionForAbi(Ljava/lang/String;)V
    .locals 4
    .param p0, "abi"    # Ljava/lang/String;

    .prologue
    .line 1005
    :try_start_0
    invoke-static {p0}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    .line 1007
    sget-boolean v1, Lcom/android/internal/os/Zygote;->isEnhancedZygoteASLREnabled:Z

    if-eqz v1, :cond_0

    .line 1009
    invoke-static {p0}, Landroid/os/Process;->openZygoteASLRAgentSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :cond_0
    return-void

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to connect to zygote for abi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    const-string/jumbo v2, "1"

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 733
    const-string/jumbo v2, "--query-abi-list"

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 735
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    .line 738
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 739
    .local v1, "numBytes":I
    new-array v0, v1, [B

    .line 740
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 742
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public static final native getElapsedCpuTime()J
.end method

.method public static final native getExclusiveCores()[I
.end method

.method public static final native getFreeMemory()J
.end method

.method public static final native getGidForName(Ljava/lang/String;)I
.end method

.method public static final getParentPid(I)I
    .locals 5
    .param p0, "pid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1249
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v2, "PPid:"

    aput-object v2, v0, v4

    .line 1250
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    .line 1251
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 1252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1253
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getPids(Ljava/lang/String;[I)[I
.end method

.method public static final native getPidsForCommands([Ljava/lang/String;)[I
.end method

.method public static final native getProcessGroup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native getPss(I)J
.end method

.method public static final getStartElapsedRealtime()J
    .locals 2

    .prologue
    .line 1123
    sget-wide v0, Landroid/os/Process;->sStartElapsedRealtime:J

    return-wide v0
.end method

.method public static final getStartUptimeMillis()J
    .locals 2

    .prologue
    .line 1130
    sget-wide v0, Landroid/os/Process;->sStartUptimeMillis:J

    return-wide v0
.end method

.method public static final getThreadGroupLeader(I)I
    .locals 5
    .param p0, "tid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1264
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v2, "Tgid:"

    aput-object v2, v0, v4

    .line 1265
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    .line 1266
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 1267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1268
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getThreadPriority(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getThreadScheduler(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getTotalMemory()J
.end method

.method public static final native getUidForName(Ljava/lang/String;)I
.end method

.method public static final getUidForPid(I)I
    .locals 5
    .param p0, "pid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1235
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v2, "Uid:"

    aput-object v2, v0, v4

    .line 1236
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v3, [J

    .line 1237
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 1238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1239
    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final is64Bit()Z
    .locals 1

    .prologue
    .line 1143
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    return v0
.end method

.method public static isApplicationUid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 1197
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    return v0
.end method

.method public static final native isCpusetEnabled()Z
.end method

.method public static final isIsolated()Z
    .locals 1

    .prologue
    .line 1205
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    return v0
.end method

.method public static final isIsolated(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1210
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 1211
    const v1, 0x182b8

    if-lt p0, v1, :cond_0

    const v1, 0x1869f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final isThreadInProcess(II)Z
    .locals 5
    .param p0, "tid"    # I
    .param p1, "pid"    # I

    .prologue
    const/4 v4, 0x0

    .line 1632
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 1634
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/task/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v2, v3}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1635
    const/4 v2, 0x1

    .line 1642
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1635
    return v2

    .line 1642
    :cond_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1637
    return v4

    .line 1639
    :catch_0
    move-exception v0

    .line 1642
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1640
    return v4

    .line 1641
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 1642
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1641
    throw v2
.end method

.method public static final killProcess(I)V
    .locals 3
    .param p0, "pid"    # I

    .prologue
    .line 1485
    sget v0, Landroid/os/Process;->systemServerPid:I

    if-ne p0, v0, :cond_0

    .line 1486
    const-string/jumbo v0, "Process"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system_server pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Process;->systemServerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 1489
    :cond_0
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 1484
    return-void
.end method

.method public static final native killProcessGroup(II)I
.end method

.method public static final killProcessQuiet(I)V
    .locals 3
    .param p0, "pid"    # I

    .prologue
    .line 1513
    sget v0, Landroid/os/Process;->systemServerPid:I

    if-ne p0, v0, :cond_0

    .line 1514
    const-string/jumbo v0, "Process"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system_server pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Process;->systemServerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 1517
    :cond_0
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    .line 1512
    return-void
.end method

.method public static final myPid()I
    .locals 1

    .prologue
    .line 1151
    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public static final myPpid()I
    .locals 1

    .prologue
    .line 1159
    invoke-static {}, Landroid/system/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public static final myTid()I
    .locals 1

    .prologue
    .line 1167
    invoke-static {}, Landroid/system/Os;->gettid()I

    move-result v0

    return v0
.end method

.method public static final myUid()I
    .locals 1

    .prologue
    .line 1177
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v0

    return v0
.end method

.method public static myUserHandle()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 1187
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method private static openZygoteASLRAgentSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    .locals 4
    .param p0, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1026
    const-string/jumbo v1, "arm64"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1027
    sget-object v1, Landroid/os/Process;->agent64ZygoteState:Landroid/os/Process$ZygoteState;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Process;->agent64ZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1}, Landroid/os/Process$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1028
    :cond_0
    const-string/jumbo v1, "init.svc.zygote_agent64"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "running"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1035
    :try_start_0
    const-string/jumbo v1, "zygote_agent64"

    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v1

    sput-object v1, Landroid/os/Process;->agent64ZygoteState:Landroid/os/Process$ZygoteState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :cond_1
    :goto_0
    sget-object v1, Landroid/os/Process;->agent64ZygoteState:Landroid/os/Process$ZygoteState;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Process;->agent64ZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1045
    sget-object v1, Landroid/os/Process;->agent64ZygoteState:Landroid/os/Process$ZygoteState;

    return-object v1

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v1, "Enhanced Zygote ASLR"

    .line 1038
    const-string/jumbo v2, "Error connecting to zygote socket: zygote_agent64"

    .line 1037
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    sput-object v3, Landroid/os/Process;->agent64ZygoteState:Landroid/os/Process$ZygoteState;

    goto :goto_0

    .line 1047
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    const-string/jumbo v1, "Enhanced Zygote ASLR"

    const-string/jumbo v2, "zygote_agent64 is not running yet. Rollback using the original one"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    return-object v3

    .line 1050
    :cond_3
    const-string/jumbo v1, "armeabi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1051
    sget-object v1, Landroid/os/Process;->agent32ZygoteState:Landroid/os/Process$ZygoteState;

    if-eqz v1, :cond_4

    sget-object v1, Landroid/os/Process;->agent32ZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1}, Landroid/os/Process$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1052
    :cond_4
    const-string/jumbo v1, "init.svc.zygote_agent32"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "running"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1059
    :try_start_1
    const-string/jumbo v1, "zygote_agent32"

    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v1

    sput-object v1, Landroid/os/Process;->agent32ZygoteState:Landroid/os/Process$ZygoteState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1068
    :cond_5
    :goto_1
    sget-object v1, Landroid/os/Process;->agent32ZygoteState:Landroid/os/Process$ZygoteState;

    if-eqz v1, :cond_6

    sget-object v1, Landroid/os/Process;->agent32ZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1069
    sget-object v1, Landroid/os/Process;->agent32ZygoteState:Landroid/os/Process$ZygoteState;

    return-object v1

    .line 1060
    :catch_1
    move-exception v0

    .line 1061
    .restart local v0    # "ioe":Ljava/io/IOException;
    const-string/jumbo v1, "Enhanced Zygote ASLR"

    .line 1062
    const-string/jumbo v2, "Error connecting to zygote socket: zygote_agent32"

    .line 1061
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    sput-object v3, Landroid/os/Process;->agent32ZygoteState:Landroid/os/Process$ZygoteState;

    goto :goto_1

    .line 1071
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_6
    const-string/jumbo v1, "Enhanced Zygote ASLR"

    const-string/jumbo v2, "zygote_agent32 is not running yet. Rollback using the original one"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    return-object v3

    .line 1076
    :cond_7
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported zygote ABI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    .locals 4
    .param p0, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 1085
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1}, Landroid/os/Process$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1087
    :cond_0
    :try_start_0
    const-string/jumbo v1, "zygote"

    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v1

    sput-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :cond_1
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1094
    sget-object v1, Landroid/os/Process;->primaryZygoteState:Landroid/os/Process$ZygoteState;

    return-object v1

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v2, "Error connecting to primary zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1098
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1}, Landroid/os/Process$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1100
    :cond_3
    :try_start_1
    const-string/jumbo v1, "zygote_secondary"

    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v1

    sput-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1106
    :cond_4
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    invoke-virtual {v1, p0}, Landroid/os/Process$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1107
    sget-object v1, Landroid/os/Process;->secondaryZygoteState:Landroid/os/Process$ZygoteState;

    return-object v1

    .line 1101
    :catch_1
    move-exception v0

    .line 1102
    .restart local v0    # "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v2, "Error connecting to secondary zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1110
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_5
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported zygote ABI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final native parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
.end method

.method public static final native removeAllProcessGroups()V
.end method

.method public static final semGetPids(Ljava/lang/String;[I)[I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "lastArray"    # [I

    .prologue
    .line 1546
    invoke-static {p0, p1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static final native sendSignal(II)V
.end method

.method public static final native sendSignalQuiet(II)V
.end method

.method public static final native setArgV0(Ljava/lang/String;)V
.end method

.method public static final native setCanSelfBackground(Z)V
.end method

.method public static final native setGid(I)I
.end method

.method public static final native setProcessGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final setStartTimes(JJ)V
    .locals 0
    .param p0, "elapsedRealtime"    # J
    .param p2, "uptimeMillis"    # J

    .prologue
    .line 1135
    sput-wide p0, Landroid/os/Process;->sStartElapsedRealtime:J

    .line 1136
    sput-wide p2, Landroid/os/Process;->sStartUptimeMillis:J

    .line 1134
    return-void
.end method

.method public static final native setSwappiness(IZ)Z
.end method

.method public static setSystemServerPid()V
    .locals 4

    .prologue
    .line 561
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 562
    .local v0, "pid":I
    const-string/jumbo v1, "Process"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "system_server pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    sput v0, Landroid/os/Process;->systemServerPid:I

    .line 560
    return-void
.end method

.method public static final native setThreadGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadScheduler(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native setUid(I)I
.end method

.method public static final start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 3
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "debugFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "category"    # I
    .param p10, "accessInfo"    # I
    .param p11, "abi"    # Ljava/lang/String;
    .param p12, "instructionSet"    # Ljava/lang/String;
    .param p13, "appDataDir"    # Ljava/lang/String;
    .param p14, "mountKnoxPoint"    # Z
    .param p15, "zygoteArgs"    # [Ljava/lang/String;

    .prologue
    .line 706
    :try_start_0
    invoke-static/range {p0 .. p15}, Landroid/os/Process;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    const-string/jumbo v1, "Process"

    .line 711
    const-string/jumbo v2, "Starting VM process through Zygote failed"

    .line 710
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v1, Ljava/lang/RuntimeException;

    .line 713
    const-string/jumbo v2, "Starting VM process through Zygote failed"

    .line 712
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 14
    .param p0, "processClass"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "gids"    # [I
    .param p5, "debugFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "category"    # I
    .param p10, "accessInfo"    # I
    .param p11, "abi"    # Ljava/lang/String;
    .param p12, "instructionSet"    # Ljava/lang/String;
    .param p13, "appDataDir"    # Ljava/lang/String;
    .param p14, "mountKnoxPoint"    # Z
    .param p15, "extraArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 846
    const-class v10, Landroid/os/Process;

    monitor-enter v10

    .line 847
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v2, "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v9, "--runtime-args"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--setuid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--setgid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    and-int/lit8 v9, p5, 0x10

    if-eqz v9, :cond_0

    .line 855
    const-string/jumbo v9, "--enable-jni-logging"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_0
    and-int/lit8 v9, p5, 0x8

    if-eqz v9, :cond_1

    .line 858
    const-string/jumbo v9, "--enable-safemode"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_1
    and-int/lit8 v9, p5, 0x1

    if-eqz v9, :cond_2

    .line 861
    const-string/jumbo v9, "--enable-debugger"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    :cond_2
    and-int/lit8 v9, p5, 0x2

    if-eqz v9, :cond_3

    .line 864
    const-string/jumbo v9, "--enable-checkjni"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_3
    and-int/lit8 v9, p5, 0x20

    if-eqz v9, :cond_4

    .line 867
    const-string/jumbo v9, "--generate-debug-info"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_4
    and-int/lit8 v9, p5, 0x40

    if-eqz v9, :cond_5

    .line 870
    const-string/jumbo v9, "--always-jit"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    :cond_5
    move/from16 v0, p5

    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    .line 873
    const-string/jumbo v9, "--native-debuggable"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    :cond_6
    and-int/lit8 v9, p5, 0x4

    if-eqz v9, :cond_7

    .line 876
    const-string/jumbo v9, "--enable-assert"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_7
    const/4 v9, 0x1

    move/from16 v0, p6

    if-ne v0, v9, :cond_a

    .line 879
    const-string/jumbo v9, "--mount-external-default"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    :cond_8
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--target-sdk-version="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    if-eqz p4, :cond_d

    move-object/from16 v0, p4

    array-length v9, v0

    if-lez v9, :cond_d

    .line 892
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "--setgroups="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    move-object/from16 v0, p4

    array-length v8, v0

    .line 896
    .local v8, "sz":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_c

    .line 897
    if-eqz v6, :cond_9

    .line 898
    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 900
    :cond_9
    aget v9, p4, v6

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 896
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 880
    .end local v6    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "sz":I
    :cond_a
    const/4 v9, 0x2

    move/from16 v0, p6

    if-ne v0, v9, :cond_b

    .line 881
    const-string/jumbo v9, "--mount-external-read"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 846
    .end local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 882
    .restart local v2    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    const/4 v9, 0x3

    move/from16 v0, p6

    if-ne v0, v9, :cond_8

    .line 883
    :try_start_1
    const-string/jumbo v9, "--mount-external-write"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 903
    .restart local v6    # "i":I
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "sz":I
    :cond_c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    .end local v6    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "sz":I
    :cond_d
    if-eqz p1, :cond_e

    .line 907
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--nice-name="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    :cond_e
    if-eqz p8, :cond_f

    .line 911
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--seinfo="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--category="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--accessInfo="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    if-eqz p12, :cond_10

    .line 917
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--instruction-set="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p12

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    :cond_10
    if-eqz p13, :cond_11

    .line 921
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--app-data-dir="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p13

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    :cond_11
    if-eqz p14, :cond_12

    .line 925
    const-string/jumbo v9, "--mount-knox-point=1"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    :cond_12
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    if-eqz p15, :cond_13

    .line 931
    const/4 v9, 0x0

    move-object/from16 v0, p15

    array-length v11, v0

    :goto_2
    if-ge v9, v11, :cond_13

    aget-object v1, p15, v9

    .line 932
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 937
    .end local v1    # "arg":Ljava/lang/String;
    :cond_13
    sget-boolean v9, Lcom/android/internal/os/Zygote;->isEnhancedZygoteASLREnabled:Z

    if-eqz v9, :cond_18

    .line 942
    const/4 v5, 0x1

    .line 944
    .local v5, "forkFromZygoteASLRAgent":Z
    const/16 v9, 0x3e8

    move/from16 v0, p2

    if-ne v0, v9, :cond_15

    .line 949
    const/4 v5, 0x0

    .line 965
    :cond_14
    :goto_3
    if-eqz v5, :cond_17

    .line 966
    invoke-static/range {p11 .. p11}, Landroid/os/Process;->openZygoteASLRAgentSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v4

    .line 968
    .local v4, "currentZygoteState":Landroid/os/Process$ZygoteState;
    if-eqz v4, :cond_17

    .line 975
    invoke-static {v4, v2}, Landroid/os/Process;->zygoteSendArgsAndGetResult(Landroid/os/Process$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    monitor-exit v10

    return-object v9

    .line 957
    .end local v4    # "currentZygoteState":Landroid/os/Process$ZygoteState;
    :cond_15
    :try_start_2
    sget-object v11, Lcom/android/internal/os/Zygote;->SEINFO_REQUIRE_ORIGINAL_FORK:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v12, v11

    :goto_4
    if-ge v9, v12, :cond_14

    aget-object v3, v11, v9

    .line 958
    .local v3, "critical_seinfo":Ljava/lang/String;
    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 959
    const/4 v5, 0x0

    .line 960
    goto :goto_3

    .line 957
    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 986
    .end local v3    # "critical_seinfo":Ljava/lang/String;
    :cond_17
    invoke-static/range {p11 .. p11}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v9

    invoke-static {v9, v2}, Landroid/os/Process;->zygoteSendArgsAndGetResult(Landroid/os/Process$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    monitor-exit v10

    return-object v9

    .line 990
    .end local v5    # "forkFromZygoteASLRAgent":Z
    :cond_18
    :try_start_3
    invoke-static/range {p11 .. p11}, Landroid/os/Process;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v9

    invoke-static {v9, v2}, Landroid/os/Process;->zygoteSendArgsAndGetResult(Landroid/os/Process$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    monitor-exit v10

    return-object v9
.end method

.method public static final supportsProcesses()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1447
    const/4 v0, 0x1

    return v0
.end method

.method private static zygoteSendArgsAndGetResult(Landroid/os/Process$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    .locals 9
    .param p0, "zygoteState"    # Landroid/os/Process$ZygoteState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Process$ZygoteState;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .prologue
    .line 758
    .local p1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 759
    .local v5, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 760
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_0

    .line 761
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v8, "embedded newlines not allowed"

    invoke-direct {v7, v8}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    .end local v2    # "i":I
    .end local v5    # "sz":I
    :catch_0
    move-exception v1

    .line 803
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Landroid/os/Process$ZygoteState;->close()V

    .line 804
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    invoke-direct {v7, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 759
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v5    # "sz":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 775
    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/os/Process$ZygoteState;->writer:Ljava/io/BufferedWriter;

    .line 776
    .local v6, "writer":Ljava/io/BufferedWriter;
    iget-object v3, p0, Landroid/os/Process$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    .line 778
    .local v3, "inputStream":Ljava/io/DataInputStream;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 781
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    .line 782
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 783
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 781
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 787
    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 790
    new-instance v4, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v4}, Landroid/os/Process$ProcessStartResult;-><init>()V

    .line 795
    .local v4, "result":Landroid/os/Process$ProcessStartResult;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 796
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    iput-boolean v7, v4, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    .line 798
    iget v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    if-gez v7, :cond_3

    .line 799
    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v8, "fork() failed"

    invoke-direct {v7, v8}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 801
    :cond_3
    return-object v4
.end method
