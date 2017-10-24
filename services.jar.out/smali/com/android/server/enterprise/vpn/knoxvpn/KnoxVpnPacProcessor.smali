.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
.super Ljava/lang/Object;
.source "KnoxVpnPacProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DOWNLOAD_STATUS_FAILURE:I = 0x1

.field private static final DOWNLOAD_STATUS_RETRY:I = 0x2

.field private static final DOWNLOAD_STATUS_SUCCESS:I = 0x0

.field private static final FINAL_RETRY_ATTEMPT:I = 0xa

.field private static final INITIAL_RETRY_ATTEMPT:I = 0x0

.field private static final INVALID_FD:I = -0x1

.field private static final INVALID_PORT:I = -0x1

.field private static final PAC_IDENTIFIER:Ljava/lang/String; = "function"

.field private static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field private static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field private static final TAG:Ljava/lang/String; = "KnoxVpnPacProcessor"

.field private static mContext:Landroid/content/Context;

.field private static mDownloadStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mDownloadUrlThread:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;",
            ">;"
        }
    .end annotation
.end field

.field private static mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field private static mProxyService:Lcom/android/net/IProxyService;

.field private static mRetryAttempt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Ljava/util/HashMap;
    .locals 1

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2()Ljava/util/HashMap;
    .locals 1

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3()Ljava/util/HashMap;
    .locals 1

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "interfaceName"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    .line 84
    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    .line 89
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    .line 91
    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 98
    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method private checkIfRetryNeeded(Ljava/lang/String;)V
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xa

    .line 590
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 591
    .local v2, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageCount()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 592
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 593
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v5, :cond_1

    .line 594
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Downloading the pac url failed, going to retry for the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "attempt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 599
    :goto_0
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    .line 588
    .end local v2    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_0
    :goto_1
    return-void

    .line 600
    .restart local v2    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 601
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Downloading the pac url failed even after the final retry attempt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removeDownloadThreadDetails(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 615
    .end local v2    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception occured while retry attempt to download pac file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 605
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_2
    :try_start_3
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Downloading the pac url failed for the first time, start the retry process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    goto :goto_1

    .line 610
    :cond_3
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vpn profile is in unknown state, resetting the retry-Status to default value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 612
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 598
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_0
.end method

.method private closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "in"    # Ljava/io/BufferedReader;
    .param p3, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 574
    if-eqz p1, :cond_0

    .line 575
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 577
    :cond_0
    if-eqz p3, :cond_1

    .line 578
    invoke-virtual {p3}, Ljava/io/PrintStream;->close()V

    .line 580
    :cond_1
    if-eqz p2, :cond_2

    .line 581
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :cond_2
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "KnoxVpnPacProcessor"

    const-string/jumbo v2, "IOException occured while trying to close the socket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 35
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 452
    monitor-enter p1

    .line 453
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacUrlDownloadStatus(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit p1

    return-void

    .line 454
    :cond_0
    const/16 v22, 0x0

    .line 455
    .local v22, "out":Ljava/io/PrintStream;
    const/16 v19, 0x0

    .line 456
    .local v19, "in":Ljava/io/BufferedReader;
    const/16 v31, 0x0

    .line 457
    .local v31, "socket":Ljava/net/Socket;
    const/16 v24, 0x0

    .line 460
    .local v24, "pacBuilder":Ljava/lang/StringBuilder;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Landroid/system/GaiException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v33

    .line 461
    .local v33, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v33, :cond_1

    .line 567
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    .line 461
    return-void

    .line 462
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getMarkForInterface(Ljava/lang/String;)I

    move-result v9

    .line 463
    .local v9, "isKnoxNetId":I
    if-eqz p5, :cond_a

    const/4 v4, -0x1

    if-eq v9, v4, :cond_a

    .line 464
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "KnoxVpnPacProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The host name to resolve is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_2
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnType()I

    move-result v5

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getValidEndPointAddress(ILjava/lang/String;ILjava/lang/String;I)Ljava/net/Socket;

    move-result-object v31

    .line 466
    .local v31, "socket":Ljava/net/Socket;
    if-nez v31, :cond_3

    new-instance v4, Ljava/net/ConnectException;

    invoke-direct {v4}, Ljava/net/ConnectException;-><init>()V

    throw v4
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Landroid/system/GaiException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 526
    .end local v9    # "isKnoxNetId":I
    .end local v31    # "socket":Ljava/net/Socket;
    .end local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v15

    .line 527
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .local v15, "e":Ljava/net/ConnectException;
    :goto_0
    :try_start_4
    const-string/jumbo v4, "KnoxVpnPacProcessor"

    const-string/jumbo v5, "ConnectException occured while trying to download the pac url"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 529
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 567
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v15    # "e":Ljava/net/ConnectException;
    :goto_1
    monitor-exit p1

    .line 451
    return-void

    .line 467
    .restart local v9    # "isKnoxNetId":I
    .restart local v19    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "out":Ljava/io/PrintStream;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v31    # "socket":Ljava/net/Socket;
    .restart local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_3
    :try_start_6
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Landroid/system/GaiException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 468
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .local v25, "pacBuilder":Ljava/lang/StringBuilder;
    :try_start_7
    invoke-virtual/range {v31 .. v31}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v28

    .line 469
    .local v28, "readFromServer":Ljava/io/InputStream;
    invoke-virtual/range {v31 .. v31}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v34

    .line 470
    .local v34, "writeToServer":Ljava/io/OutputStream;
    new-instance v23, Ljava/io/PrintStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Landroid/system/GaiException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1b
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 471
    .local v23, "out":Ljava/io/PrintStream;
    :try_start_8
    new-instance v20, Ljava/io/BufferedReader;

    .end local v22    # "out":Ljava/io/PrintStream;
    new-instance v4, Ljava/io/InputStreamReader;

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/net/ConnectException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Landroid/system/GaiException; {:try_start_8 .. :try_end_8} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1c
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 473
    .local v20, "in":Ljava/io/BufferedReader;
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v19    # "in":Ljava/io/BufferedReader;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GET "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " HTTP/1.1\r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 475
    const-string/jumbo v4, "Connection: close\r"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 476
    const-string/jumbo v4, "\r"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->flush()V

    .line 478
    const/16 v32, 0x0

    .line 479
    .local v32, "startReading":Z
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .line 480
    .local v21, "line":Ljava/lang/String;
    :goto_2
    if-eqz v21, :cond_7

    .line 481
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 482
    const/16 v32, 0x1

    .line 483
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    goto :goto_2

    .line 486
    :cond_4
    if-eqz v32, :cond_6

    .line 487
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "KnoxVpnPacProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The pac line printed is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string/jumbo v4, "\n"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    goto :goto_2

    .line 494
    :cond_7
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 495
    .local v26, "pacContent":Ljava/lang/String;
    if-eqz v26, :cond_c

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c

    .line 496
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I
    :try_end_9
    .catch Ljava/net/ConnectException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Landroid/system/GaiException; {:try_start_9 .. :try_end_9} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1d
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result v27

    .line 497
    .local v27, "pacContentLength":I
    const/16 v30, 0x0

    .line 499
    .local v30, "savePacScript":Z
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v4, v0, v1}, Lcom/android/net/IProxyService;->setPacFileForKnoxProfile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_14
    .catch Landroid/system/GaiException; {:try_start_a .. :try_end_a} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1d
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result v30

    .line 506
    .end local v30    # "savePacScript":Z
    :goto_3
    if-eqz v30, :cond_b

    .line 507
    :try_start_b
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 509
    const-string/jumbo v4, "KnoxVpnPacProcessor"

    const-string/jumbo v5, "The pac file has been downloaded successfully,cancelling further retry attempts"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removeDownloadThreadDetails(Ljava/lang/String;)V

    .line 513
    if-eqz v33, :cond_9

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v4, v9, v0, v5}, Lcom/android/net/IProxyService;->setMiscValueForPacProfile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v29

    .line 515
    .local v29, "saveMiscValue":Z
    const-string/jumbo v4, "KnoxVpnPacProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The Misc value for the pac file has been set successfully "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/net/ConnectException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_14
    .catch Landroid/system/GaiException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1d
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .end local v29    # "saveMiscValue":Z
    :cond_9
    :goto_4
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .local v24, "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .local v19, "in":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .line 567
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v21    # "line":Ljava/lang/String;
    .end local v23    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v26    # "pacContent":Ljava/lang/String;
    .end local v27    # "pacContentLength":I
    .end local v28    # "readFromServer":Ljava/io/InputStream;
    .end local v31    # "socket":Ljava/net/Socket;
    .end local v32    # "startReading":Z
    .end local v34    # "writeToServer":Ljava/io/OutputStream;
    :cond_a
    :goto_5
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 452
    .end local v9    # "isKnoxNetId":I
    .end local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catchall_0
    move-exception v4

    monitor-exit p1

    throw v4

    .line 500
    .restart local v9    # "isKnoxNetId":I
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v26    # "pacContent":Ljava/lang/String;
    .restart local v27    # "pacContentLength":I
    .restart local v28    # "readFromServer":Ljava/io/InputStream;
    .restart local v30    # "savePacScript":Z
    .restart local v31    # "socket":Ljava/net/Socket;
    .restart local v32    # "startReading":Z
    .restart local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v34    # "writeToServer":Ljava/io/OutputStream;
    :catch_1
    move-exception v14

    .line 501
    .local v14, "e":Ljava/lang/NullPointerException;
    :try_start_d
    const-string/jumbo v4, "KnoxVpnPacProcessor"

    const-string/jumbo v5, "Exception occured due to the pac service not intialized"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 503
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 526
    .end local v14    # "e":Ljava/lang/NullPointerException;
    .end local v21    # "line":Ljava/lang/String;
    .end local v26    # "pacContent":Ljava/lang/String;
    .end local v27    # "pacContentLength":I
    .end local v30    # "savePacScript":Z
    .end local v32    # "startReading":Z
    :catch_2
    move-exception v15

    .restart local v15    # "e":Ljava/net/ConnectException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .local v22, "out":Ljava/io/PrintStream;
    goto/16 :goto_0

    .line 518
    .end local v15    # "e":Ljava/net/ConnectException;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v26    # "pacContent":Ljava/lang/String;
    .restart local v27    # "pacContentLength":I
    .restart local v32    # "startReading":Z
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 519
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/ConnectException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_14
    .catch Landroid/system/GaiException; {:try_start_d .. :try_end_d} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_4

    .line 531
    .end local v21    # "line":Ljava/lang/String;
    .end local v26    # "pacContent":Ljava/lang/String;
    .end local v27    # "pacContentLength":I
    .end local v32    # "startReading":Z
    :catch_3
    move-exception v16

    .local v16, "e":Ljava/net/SocketException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .line 532
    .end local v9    # "isKnoxNetId":I
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v23    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v28    # "readFromServer":Ljava/io/InputStream;
    .end local v31    # "socket":Ljava/net/Socket;
    .end local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v34    # "writeToServer":Ljava/io/OutputStream;
    :goto_6
    :try_start_e
    const-string/jumbo v4, "KnoxVpnPacProcessor"

    const-string/jumbo v5, "SocketException occured while trying to download the pac url"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 534
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 567
    :try_start_f
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    .line 523
    .end local v16    # "e":Ljava/net/SocketException;
    .restart local v9    # "isKnoxNetId":I
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v26    # "pacContent":Ljava/lang/String;
    .restart local v28    # "readFromServer":Ljava/io/InputStream;
    .restart local v31    # "socket":Ljava/net/Socket;
    .restart local v32    # "startReading":Z
    .restart local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v34    # "writeToServer":Ljava/io/OutputStream;
    :cond_c
    :try_start_10
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/net/ConnectException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_14
    .catch Landroid/system/GaiException; {:try_start_10 .. :try_end_10} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1d
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .restart local v22    # "out":Ljava/io/PrintStream;
    goto/16 :goto_5

    .line 562
    .end local v9    # "isKnoxNetId":I
    .end local v21    # "line":Ljava/lang/String;
    .end local v26    # "pacContent":Ljava/lang/String;
    .end local v28    # "readFromServer":Ljava/io/InputStream;
    .end local v31    # "socket":Ljava/net/Socket;
    .end local v32    # "startReading":Z
    .end local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v34    # "writeToServer":Ljava/io/OutputStream;
    .local v19, "in":Ljava/io/BufferedReader;
    .local v22, "out":Ljava/io/PrintStream;
    .local v24, "pacBuilder":Ljava/lang/StringBuilder;
    :catch_4
    move-exception v12

    .line 563
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .local v12, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_11
    const-string/jumbo v4, "KnoxVpnPacProcessor"

    const-string/jumbo v5, "Exception occured while trying to pac url "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 565
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 567
    :try_start_12
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .line 558
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "out":Ljava/io/PrintStream;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v13

    .line 559
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    :goto_8
    :try_start_13
    const-string/jumbo v4, "KnoxVpnPacProcessor"

    const-string/jumbo v5, "cannot find the dns server to resolve the pac url"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 561
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 567
    :try_start_14
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_1

    .line 545
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "out":Ljava/io/PrintStream;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_6
    move-exception v10

    .line 546
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .local v10, "e":Landroid/system/GaiException;
    :goto_9
    :try_start_15
    const-string/jumbo v4, "KnoxVpnPacProcessor"

    const-string/jumbo v5, "GaiException occured while trying to download the pac url "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 548
    const-wide/16 v4, 0x1388

    :try_start_16
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->wait(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 555
    :try_start_17
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 556
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 567
    :try_start_18
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_1

    .line 549
    :catch_7
    move-exception v18

    .line 550
    .local v18, "e1":Ljava/lang/InterruptedException;
    :try_start_19
    const-string/jumbo v4, "KnoxVpnPacProcessor"

    const-string/jumbo v5, "Got Interruption while trying to resolve the domain name "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 552
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 567
    :try_start_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    monitor-exit p1

    .line 553
    return-void

    .line 540
    .end local v10    # "e":Landroid/system/GaiException;
    .end local v18    # "e1":Ljava/lang/InterruptedException;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "out":Ljava/io/PrintStream;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_8
    move-exception v11

    .line 541
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .local v11, "e":Ljava/io/IOException;
    :goto_a
    :try_start_1b
    const-string/jumbo v4, "KnoxVpnPacProcessor"

    const-string/jumbo v5, "IOException occured while trying to download the pac url "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 543
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 567
    :try_start_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto/16 :goto_1

    .line 536
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "out":Ljava/io/PrintStream;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_9
    move-exception v17

    .line 537
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .local v17, "e":Ljava/nio/channels/ClosedByInterruptException;
    :goto_b
    :try_start_1d
    const-string/jumbo v4, "KnoxVpnPacProcessor"

    const-string/jumbo v5, "Downloading the pac url failed due to Interruption, close the existing connections"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 539
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 567
    :try_start_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    goto/16 :goto_1

    .line 566
    .end local v17    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :catchall_1
    move-exception v4

    .line 567
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 566
    throw v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .restart local v9    # "isKnoxNetId":I
    .restart local v19    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v31    # "socket":Ljava/net/Socket;
    .restart local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catchall_2
    move-exception v4

    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .local v24, "pacBuilder":Ljava/lang/StringBuilder;
    goto :goto_c

    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v28    # "readFromServer":Ljava/io/InputStream;
    .restart local v34    # "writeToServer":Ljava/io/OutputStream;
    :catchall_3
    move-exception v4

    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .local v22, "out":Ljava/io/PrintStream;
    goto :goto_c

    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    :catchall_4
    move-exception v4

    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .local v19, "in":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .restart local v22    # "out":Ljava/io/PrintStream;
    goto :goto_c

    .line 526
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v28    # "readFromServer":Ljava/io/InputStream;
    .end local v34    # "writeToServer":Ljava/io/OutputStream;
    .local v19, "in":Ljava/io/BufferedReader;
    .local v22, "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_a
    move-exception v15

    .restart local v15    # "e":Ljava/net/ConnectException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    goto/16 :goto_0

    .end local v15    # "e":Ljava/net/ConnectException;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v28    # "readFromServer":Ljava/io/InputStream;
    .restart local v34    # "writeToServer":Ljava/io/OutputStream;
    :catch_b
    move-exception v15

    .restart local v15    # "e":Ljava/net/ConnectException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .local v22, "out":Ljava/io/PrintStream;
    goto/16 :goto_0

    .line 531
    .end local v9    # "isKnoxNetId":I
    .end local v15    # "e":Ljava/net/ConnectException;
    .end local v28    # "readFromServer":Ljava/io/InputStream;
    .end local v31    # "socket":Ljava/net/Socket;
    .end local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v34    # "writeToServer":Ljava/io/OutputStream;
    .local v22, "out":Ljava/io/PrintStream;
    .local v24, "pacBuilder":Ljava/lang/StringBuilder;
    :catch_c
    move-exception v16

    .restart local v16    # "e":Ljava/net/SocketException;
    goto/16 :goto_6

    .end local v16    # "e":Ljava/net/SocketException;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v9    # "isKnoxNetId":I
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v31    # "socket":Ljava/net/Socket;
    .restart local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_d
    move-exception v16

    .restart local v16    # "e":Ljava/net/SocketException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .local v24, "pacBuilder":Ljava/lang/StringBuilder;
    goto/16 :goto_6

    .end local v16    # "e":Ljava/net/SocketException;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v28    # "readFromServer":Ljava/io/InputStream;
    .restart local v34    # "writeToServer":Ljava/io/OutputStream;
    :catch_e
    move-exception v16

    .restart local v16    # "e":Ljava/net/SocketException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .local v22, "out":Ljava/io/PrintStream;
    goto/16 :goto_6

    .line 536
    .end local v16    # "e":Ljava/net/SocketException;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v28    # "readFromServer":Ljava/io/InputStream;
    .end local v34    # "writeToServer":Ljava/io/OutputStream;
    .local v22, "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_f
    move-exception v17

    .restart local v17    # "e":Ljava/nio/channels/ClosedByInterruptException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    goto :goto_b

    .end local v17    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v28    # "readFromServer":Ljava/io/InputStream;
    .restart local v34    # "writeToServer":Ljava/io/OutputStream;
    :catch_10
    move-exception v17

    .restart local v17    # "e":Ljava/nio/channels/ClosedByInterruptException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .local v22, "out":Ljava/io/PrintStream;
    goto :goto_b

    .end local v17    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_11
    move-exception v17

    .restart local v17    # "e":Ljava/nio/channels/ClosedByInterruptException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .local v19, "in":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .restart local v22    # "out":Ljava/io/PrintStream;
    goto :goto_b

    .line 540
    .end local v17    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v28    # "readFromServer":Ljava/io/InputStream;
    .end local v34    # "writeToServer":Ljava/io/OutputStream;
    .local v19, "in":Ljava/io/BufferedReader;
    .local v22, "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_12
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    goto/16 :goto_a

    .end local v11    # "e":Ljava/io/IOException;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v28    # "readFromServer":Ljava/io/InputStream;
    .restart local v34    # "writeToServer":Ljava/io/OutputStream;
    :catch_13
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .local v22, "out":Ljava/io/PrintStream;
    goto/16 :goto_a

    .end local v11    # "e":Ljava/io/IOException;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_14
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .local v19, "in":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .restart local v22    # "out":Ljava/io/PrintStream;
    goto/16 :goto_a

    .line 545
    .end local v11    # "e":Ljava/io/IOException;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v28    # "readFromServer":Ljava/io/InputStream;
    .end local v34    # "writeToServer":Ljava/io/OutputStream;
    .local v19, "in":Ljava/io/BufferedReader;
    .local v22, "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_15
    move-exception v10

    .restart local v10    # "e":Landroid/system/GaiException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    goto/16 :goto_9

    .end local v10    # "e":Landroid/system/GaiException;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v28    # "readFromServer":Ljava/io/InputStream;
    .restart local v34    # "writeToServer":Ljava/io/OutputStream;
    :catch_16
    move-exception v10

    .restart local v10    # "e":Landroid/system/GaiException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .local v22, "out":Ljava/io/PrintStream;
    goto/16 :goto_9

    .end local v10    # "e":Landroid/system/GaiException;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_17
    move-exception v10

    .restart local v10    # "e":Landroid/system/GaiException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .local v19, "in":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .restart local v22    # "out":Ljava/io/PrintStream;
    goto/16 :goto_9

    .line 558
    .end local v10    # "e":Landroid/system/GaiException;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v28    # "readFromServer":Ljava/io/InputStream;
    .end local v34    # "writeToServer":Ljava/io/OutputStream;
    .local v19, "in":Ljava/io/BufferedReader;
    .local v22, "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_18
    move-exception v13

    .restart local v13    # "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    goto/16 :goto_8

    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v28    # "readFromServer":Ljava/io/InputStream;
    .restart local v34    # "writeToServer":Ljava/io/OutputStream;
    :catch_19
    move-exception v13

    .restart local v13    # "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .local v22, "out":Ljava/io/PrintStream;
    goto/16 :goto_8

    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_1a
    move-exception v13

    .restart local v13    # "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .local v19, "in":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .restart local v22    # "out":Ljava/io/PrintStream;
    goto/16 :goto_8

    .line 562
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v28    # "readFromServer":Ljava/io/InputStream;
    .end local v34    # "writeToServer":Ljava/io/OutputStream;
    .local v19, "in":Ljava/io/BufferedReader;
    .local v22, "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_1b
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    goto/16 :goto_7

    .end local v12    # "e":Ljava/lang/Exception;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v28    # "readFromServer":Ljava/io/InputStream;
    .restart local v34    # "writeToServer":Ljava/io/OutputStream;
    :catch_1c
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .local v22, "out":Ljava/io/PrintStream;
    goto/16 :goto_7

    .end local v12    # "e":Ljava/lang/Exception;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v22    # "out":Ljava/io/PrintStream;
    .end local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    :catch_1d
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    move-object/from16 v24, v25

    .end local v25    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "pacBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .local v19, "in":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/PrintStream;
    .restart local v22    # "out":Ljava/io/PrintStream;
    goto/16 :goto_7
.end method

.method private extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "pacUrl"    # Ljava/lang/String;

    .prologue
    .line 319
    const/4 v12, 0x0

    .line 320
    .local v12, "protocol":Ljava/lang/String;
    const/4 v6, -0x1

    .line 323
    .local v6, "port":I
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 324
    .local v13, "urlToDownload":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, "hostname":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    .line 327
    .local v12, "protocol":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 328
    const/4 v2, -0x1

    if-ne v6, v2, :cond_0

    .line 329
    invoke-direct {p0, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPortFromProtocol(Ljava/lang/String;)I

    move-result v6

    .line 332
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 333
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The current status of the download thread of the profile "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->interrupt()V

    .line 337
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_2
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    .local v1, "downloadUrlThread":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->start()V

    .line 341
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v1    # "downloadUrlThread":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;
    .end local v4    # "hostname":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v12    # "protocol":Ljava/lang/String;
    .end local v13    # "urlToDownload":Ljava/net/URL;
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v8

    .line 353
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string/jumbo v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "error occured while trying to download the pac file after the vpn connection is established"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 350
    .local v10, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string/jumbo v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "error occured while trying to download the pac file due to some values being not intialized successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    .end local v10    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v9

    .line 347
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string/jumbo v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "error occured while trying to download the pac file due to unknown port number"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v11

    .line 344
    .local v11, "e":Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string/jumbo v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "error occured while trying to download the pac file due to unknow url format, remove and create the profile again"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static declared-synchronized getCurrentRetryStatus()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    .line 174
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    .line 177
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getDownloadStatus()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    .line 170
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getDownloadThread()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    .line 181
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    .line 184
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    .line 160
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 163
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMarkForInterface(Ljava/lang/String;)I
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 670
    const/4 v0, -0x1

    .line 671
    .local v0, "knoxNetworkMark":I
    if-nez p1, :cond_0

    .line 672
    return v0

    .line 674
    :cond_0
    const-string/jumbo v1, "ipsec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 675
    const/16 v0, 0x64

    .line 679
    :cond_1
    :goto_0
    return v0

    .line 676
    :cond_2
    const-string/jumbo v1, "tun"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x65

    goto :goto_0
.end method

.method private declared-synchronized getPacBinder()Lcom/android/net/IProxyService;
    .locals 2

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 152
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    .line 155
    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPacUrlDownloadStatus(Ljava/lang/String;)Z
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 298
    const/4 v2, 0x0

    .line 300
    .local v2, "isScriptDownloaded":Z
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 301
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 314
    :cond_0
    :goto_0
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "check to see if the pac url has been downloaded successfully "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return v2

    .line 304
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    const-string/jumbo v4, " error occured while trying to get download status pac file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    const-string/jumbo v4, "error occured while trying to get download status pac file due to some values being not intialized successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getPortFromProtocol(Ljava/lang/String;)I
    .locals 4
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "port":I
    const-string/jumbo v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const/16 v0, 0x50

    .line 373
    :goto_0
    const-string/jumbo v1, "KnoxVpnPacProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The pac file is going to be downloaded from the remote port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return v0

    .line 360
    :cond_0
    const-string/jumbo v1, "ftp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    const/16 v0, 0x15

    .line 366
    goto :goto_0

    .line 360
    :cond_1
    const-string/jumbo v1, "https"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    const/16 v0, 0x1bb

    .line 369
    goto :goto_0

    .line 371
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private getValidEndPointAddress(ILjava/lang/String;ILjava/lang/String;I)Ljava/net/Socket;
    .locals 21
    .param p1, "vpnType"    # I
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "interfaceName"    # Ljava/lang/String;
    .param p5, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation

    .prologue
    .line 379
    const/4 v12, 0x0

    .line 380
    .local v12, "socket":Ljava/net/Socket;
    const/4 v11, 0x0

    .line 382
    .local v11, "resolvedHostAddress":Ljava/lang/String;
    const/4 v14, 0x0

    .line 383
    .local v14, "socketAddresses":[Ljava/net/InetAddress;
    const/4 v10, 0x0

    .line 386
    .local v10, "isNumericAddress":Ljava/net/InetAddress;
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 391
    .end local v10    # "isNumericAddress":Ljava/net/InetAddress;
    :goto_0
    if-nez v10, :cond_5

    .line 394
    :try_start_1
    new-instance v8, Landroid/system/StructAddrinfo;

    invoke-direct {v8}, Landroid/system/StructAddrinfo;-><init>()V

    .line 395
    .local v8, "hints":Landroid/system/StructAddrinfo;
    sget v16, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    move/from16 v0, v16

    iput v0, v8, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 396
    sget v16, Landroid/system/OsConstants;->AF_UNSPEC:I

    move/from16 v0, v16

    iput v0, v8, Landroid/system/StructAddrinfo;->ai_family:I

    .line 397
    sget v16, Landroid/system/OsConstants;->SOCK_STREAM:I

    move/from16 v0, v16

    iput v0, v8, Landroid/system/StructAddrinfo;->ai_socktype:I

    .line 399
    sget-object v16, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-interface {v0, v1, v8, v2}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 408
    .end local v8    # "hints":Landroid/system/StructAddrinfo;
    .local v14, "socketAddresses":[Ljava/net/InetAddress;
    :goto_1
    if-eqz v14, :cond_4

    .line 409
    const/16 v16, 0x0

    array-length v0, v14

    move/from16 v17, v0

    move-object v13, v12

    .end local v11    # "resolvedHostAddress":Ljava/lang/String;
    .end local v12    # "socket":Ljava/net/Socket;
    .local v13, "socket":Ljava/net/Socket;
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    aget-object v5, v14, v16

    .line 411
    .local v5, "add":Ljava/net/InetAddress;
    :try_start_2
    new-instance v12, Ljava/net/Socket;

    invoke-direct {v12}, Ljava/net/Socket;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 412
    .end local v13    # "socket":Ljava/net/Socket;
    .local v12, "socket":Ljava/net/Socket;
    :try_start_3
    instance-of v0, v5, Ljava/net/Inet4Address;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 413
    const-string/jumbo v18, "KnoxVpnPacProcessor"

    const-string/jumbo v19, "The pac file is going to be downloaded from an interface having ipv4 address"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    .line 415
    .local v11, "resolvedHostAddress":Ljava/lang/String;
    sget-boolean v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v18, :cond_0

    const-string/jumbo v18, "KnoxVpnPacProcessor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "The resolved host address is a ipv4 address "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    new-instance v18, Ljava/net/InetSocketAddress;

    sget-object v19, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 423
    .end local v11    # "resolvedHostAddress":Ljava/lang/String;
    :cond_1
    :goto_3
    invoke-virtual {v12}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v15

    .line 424
    .local v15, "socketFd":Ljava/io/FileDescriptor;
    invoke-virtual {v15}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 425
    invoke-virtual {v15}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, v18

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindSocketToInterfaceWrapper(IIILjava/lang/String;)V

    .line 428
    :cond_2
    const/16 v18, 0x2710

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 430
    if-eqz v11, :cond_3

    .line 431
    new-instance v18, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-direct {v0, v11, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v19, 0x2710

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 443
    .end local v15    # "socketFd":Ljava/io/FileDescriptor;
    :cond_3
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/net/Socket;->isConnected()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 448
    .end local v5    # "add":Ljava/net/InetAddress;
    .end local v12    # "socket":Ljava/net/Socket;
    :cond_4
    :goto_4
    return-object v12

    .line 387
    .restart local v10    # "isNumericAddress":Ljava/net/InetAddress;
    .local v11, "resolvedHostAddress":Ljava/lang/String;
    .local v12, "socket":Ljava/net/Socket;
    .local v14, "socketAddresses":[Ljava/net/InetAddress;
    :catch_0
    move-exception v7

    .line 388
    .local v7, "e1":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v16, "KnoxVpnPacProcessor"

    const-string/jumbo v17, "The pac url being entered is not of numeric form and need to do a dns look up"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 400
    .end local v7    # "e1":Ljava/lang/IllegalArgumentException;
    .end local v10    # "isNumericAddress":Ljava/net/InetAddress;
    :catch_1
    move-exception v6

    .line 401
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v16, "KnoxVpnPacProcessor"

    const-string/jumbo v17, "GaiException occured while trying to query the ip address for the pac url domain name"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v16, Landroid/system/GaiException;

    const-string/jumbo v17, ""

    const/16 v18, 0x1

    invoke-direct/range {v16 .. v18}, Landroid/system/GaiException;-><init>(Ljava/lang/String;I)V

    throw v16

    .line 405
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v14, v0, [Ljava/net/InetAddress;

    .line 406
    .local v14, "socketAddresses":[Ljava/net/InetAddress;
    const/16 v16, 0x0

    aput-object v10, v14, v16

    goto/16 :goto_1

    .line 417
    .end local v11    # "resolvedHostAddress":Ljava/lang/String;
    .restart local v5    # "add":Ljava/net/InetAddress;
    .local v12, "socket":Ljava/net/Socket;
    :cond_6
    :try_start_4
    instance-of v0, v5, Ljava/net/Inet6Address;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 418
    const-string/jumbo v18, "KnoxVpnPacProcessor"

    const-string/jumbo v19, "The pac file is going to be downloaded from an interface having ipv6 address"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    .line 420
    .local v11, "resolvedHostAddress":Ljava/lang/String;
    sget-boolean v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v18, :cond_7

    const-string/jumbo v18, "KnoxVpnPacProcessor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "The resolved host address is a ipv6 address "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_7
    new-instance v18, Ljava/net/InetSocketAddress;

    sget-object v19, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 433
    .end local v11    # "resolvedHostAddress":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 434
    .restart local v6    # "e":Ljava/lang/Exception;
    :goto_5
    const-string/jumbo v18, "KnoxVpnPacProcessor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "IO Exception occured while trying to connect to the pac url remote address "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    if-eqz v12, :cond_3

    .line 437
    :try_start_5
    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 438
    const/4 v12, 0x0

    .line 409
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v12    # "socket":Ljava/net/Socket;
    :cond_8
    :goto_6
    add-int/lit8 v16, v16, 0x1

    move-object v13, v12

    .restart local v13    # "socket":Ljava/net/Socket;
    goto/16 :goto_2

    .line 439
    .end local v13    # "socket":Ljava/net/Socket;
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v12    # "socket":Ljava/net/Socket;
    :catch_3
    move-exception v9

    .local v9, "ie":Ljava/io/IOException;
    goto :goto_6

    .line 433
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "ie":Ljava/io/IOException;
    .end local v12    # "socket":Ljava/net/Socket;
    .restart local v13    # "socket":Ljava/net/Socket;
    :catch_4
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v12, v13

    .end local v13    # "socket":Ljava/net/Socket;
    .restart local v12    # "socket":Ljava/net/Socket;
    goto :goto_5

    .end local v5    # "add":Ljava/net/InetAddress;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v12    # "socket":Ljava/net/Socket;
    .restart local v13    # "socket":Ljava/net/Socket;
    :cond_9
    move-object v12, v13

    .end local v13    # "socket":Ljava/net/Socket;
    .restart local v12    # "socket":Ljava/net/Socket;
    goto/16 :goto_4
.end method

.method private declared-synchronized getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .locals 1

    .prologue
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-nez v0, :cond_0

    .line 189
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeDownloadThreadDetails(Ljava/lang/String;)V
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    :cond_0
    return-void
.end method

.method private startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V
    .locals 14
    .param p1, "vpnEntry"    # Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .prologue
    .line 627
    const/4 v1, 0x0

    .line 629
    .local v1, "profileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "profileName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 631
    .local v5, "interfaceName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Ljava/lang/String;

    move-result-object v10

    .line 632
    .local v10, "pacUrl":Ljava/lang/String;
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 633
    .local v12, "urlToDownload":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, "hostname":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v11

    .line 636
    .local v11, "protocol":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 637
    .local v4, "port":I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 638
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPortFromProtocol(Ljava/lang/String;)I

    move-result v4

    .line 640
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    if-eqz v10, :cond_1

    .line 641
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v13, 0x2

    if-ne v0, v13, :cond_1

    move-object v0, p0

    .line 642
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .end local v1    # "profileName":Ljava/lang/String;
    .end local v2    # "hostname":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v5    # "interfaceName":Ljava/lang/String;
    .end local v10    # "pacUrl":Ljava/lang/String;
    .end local v11    # "protocol":Ljava/lang/String;
    .end local v12    # "urlToDownload":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 654
    :catch_0
    move-exception v6

    .line 655
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string/jumbo v0, "KnoxVpnPacProcessor"

    const-string/jumbo v13, "retry attempt: error occured while trying to download the pac file"

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 651
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 652
    .local v9, "e":Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string/jumbo v0, "KnoxVpnPacProcessor"

    const-string/jumbo v13, "retry attempt: error occured while trying to download the pac file due to unknow url format"

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 648
    .end local v9    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v7

    .line 649
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string/jumbo v0, "KnoxVpnPacProcessor"

    const-string/jumbo v13, "retry attempt: Invalid port value is defined when trying to download the pac url"

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 645
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v8

    .line 646
    .local v8, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string/jumbo v0, "KnoxVpnPacProcessor"

    const-string/jumbo v13, "retry attempt: Some profile values are not intialized when trying to download the pac url"

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized bindPacService()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 137
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 138
    const-string/jumbo v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "No context for binding"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 139
    return-void

    .line 141
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;

    if-eqz v2, :cond_1

    .line 142
    const-string/jumbo v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "Already binded to pac service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 143
    return-void

    .line 145
    :cond_1
    :try_start_2
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)V

    .line 146
    .local v1, "pacConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.pacprocessor"

    const-string/jumbo v3, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 136
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pacConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected bindSocketToInterfaceWrapper(IIILjava/lang/String;)V
    .locals 5
    .param p1, "mark"    # I
    .param p2, "vpnType"    # I
    .param p3, "fd"    # I
    .param p4, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 662
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->jnibindSocketToInterface(IIILjava/lang/String;)I

    move-result v0

    .line 663
    .local v0, "bindResult":I
    const-string/jumbo v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bindResult value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    .end local v0    # "bindResult":I
    :goto_0
    return-void

    .line 664
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "Exception occured while trying to bind the socket to the interface "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native jnibindSocketToInterface(IIILjava/lang/String;)I
.end method

.method protected makeProxyRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v4, 0x0

    .line 279
    .local v4, "proxyAddress":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-char v0, v6, v5

    .line 281
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_1

    const/16 v8, 0x2e

    if-eq v0, v8, :cond_1

    const/16 v8, 0x2d

    if-eq v0, v8, :cond_1

    .line 282
    new-instance v5, Landroid/os/RemoteException;

    const-string/jumbo v6, "Invalid host was passed"

    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 287
    .end local v0    # "c":C
    .end local v4    # "proxyAddress":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 288
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "KnoxVpnPacProcessor"

    const-string/jumbo v6, "error occured while trying to retrieve the proxy config due to some values being not intialized successfully"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_1
    return-object v4

    .line 280
    .restart local v0    # "c":C
    .restart local v4    # "proxyAddress":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "c":C
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v5

    invoke-interface {v5, p1, p2, p3}, Lcom/android/net/IProxyService;->resolvePacFileForKnoxProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "proxyAddress":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "KnoxVpnPacProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The given url "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is going to go through the proxy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 289
    .end local v4    # "proxyAddress":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 290
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "KnoxVpnPacProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid host was passed for pac resolution "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 291
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 292
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "KnoxVpnPacProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "error occured while trying to to retrieve the proxy config for the profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected setCurrentProxyScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "pacurl"    # Ljava/lang/String;

    .prologue
    .line 244
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 245
    const-string/jumbo v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "The pac service has not been intialized while trying to set the proxy script, trying to bind again"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindPacService()V

    .line 247
    return-void

    .line 249
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 250
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 242
    :goto_0
    :pswitch_0
    return-void

    .line 257
    :pswitch_1
    const-string/jumbo v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Try to download the pac url for the profile after the interface is up for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "error occured while trying to get current status pac file due to some values being not intialized successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 271
    :catch_1
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, " error occured while trying to get current status pac file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setMiscValueForPacProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "interfaceAddress"    # Ljava/lang/String;

    .prologue
    .line 234
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getMarkForInterface(Ljava/lang/String;)I

    move-result v2

    .line 235
    .local v2, "netId":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v3

    invoke-interface {v3, v2, p1, p2}, Lcom/android/net/IProxyService;->setMiscValueForPacProfile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 236
    .local v1, "isMiscValueSet":Z
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checking if the Misc value has been set for the knox pac profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v1    # "isMiscValueSet":Z
    .end local v2    # "netId":I
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    const-string/jumbo v4, "Exception occurred while trying to set the misc value for the pac profile "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected startPacSupport(Ljava/lang/String;)V
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 196
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/net/IProxyService;->startPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v2

    .line 197
    .local v2, "startPacSupport":Z
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startPacSupport return value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v2    # "startPacSupport":Z
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " error occured while trying to start the pac script for the profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    const-string/jumbo v4, "error occured while trying to start the pac support due to some values being not intialized successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindPacService()V

    goto :goto_0
.end method

.method protected stopPacSupport(Ljava/lang/String;)V
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 208
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/net/IProxyService;->stopPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v2

    .line 209
    .local v2, "removePacSupport":Z
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "check to see if the pac support is removed for the profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 211
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    .line 216
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    .line 221
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v2    # "removePacSupport":Z
    :cond_2
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " error occured while trying to remove the pac script for the profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "KnoxVpnPacProcessor"

    const-string/jumbo v4, "error occured while trying to remove the pac support due to some values being not intialized successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
