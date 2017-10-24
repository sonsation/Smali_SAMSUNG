.class public Landroid/net/dhcp/SemDhcpClientUtil;
.super Ljava/lang/Object;
.source "SemDhcpClientUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DHCP_CONFIG_FILE:Ljava/lang/String;

.field private static final KEY_BSSID:Ljava/lang/String; = "bssid"

.field private static final KEY_IP:Ljava/lang/String; = "ip"

.field private static final KEY_PREFIX:Ljava/lang/String; = "ip_prefix"

.field private static final KEY_SERVER_IP:Ljava/lang/String; = "server_ip"

.field private static final KEY_UPDATED:Ljava/lang/String; = "last_updated"

.field private static final MAX_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DhcpClient"

.field private static sInstance:Landroid/net/dhcp/SemDhcpClientUtil;


# instance fields
.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/misc/wifi/dhcp_lease.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    sput-object v0, Landroid/net/dhcp/SemDhcpClientUtil;->DHCP_CONFIG_FILE:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    .line 57
    sget-object v0, Landroid/net/dhcp/SemDhcpClientUtil;->DHCP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/dhcp/SemDhcpClientUtil;->loadConfigFile(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 215
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static declared-synchronized getInstance()Landroid/net/dhcp/SemDhcpClientUtil;
    .locals 2

    .prologue
    const-class v1, Landroid/net/dhcp/SemDhcpClientUtil;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Landroid/net/dhcp/SemDhcpClientUtil;->sInstance:Landroid/net/dhcp/SemDhcpClientUtil;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/net/dhcp/SemDhcpClientUtil;

    invoke-direct {v0}, Landroid/net/dhcp/SemDhcpClientUtil;-><init>()V

    sput-object v0, Landroid/net/dhcp/SemDhcpClientUtil;->sInstance:Landroid/net/dhcp/SemDhcpClientUtil;

    .line 64
    :cond_0
    sget-object v0, Landroid/net/dhcp/SemDhcpClientUtil;->sInstance:Landroid/net/dhcp/SemDhcpClientUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadConfigFile(Ljava/lang/String;)V
    .locals 17
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-boolean v14, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v14, :cond_0

    const-string/jumbo v14, "DhcpClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "loadConfigFile "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    const/4 v10, 0x0

    .line 70
    .local v10, "lastConnectedInfo":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    const-wide/16 v12, 0x0

    .line 72
    .local v12, "lastestTime":J
    const/4 v6, 0x0

    .line 74
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 77
    .local v11, "version":I
    const/4 v14, 0x1

    if-eq v11, v14, :cond_2

    .line 78
    const-string/jumbo v14, "DhcpClient"

    const-string/jumbo v15, "Bad version on dhcp configuration file, ignore read"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    if-eqz v7, :cond_1

    .line 122
    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 83
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    new-instance v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    const/4 v14, 0x0

    invoke-direct {v8, v14}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;-><init>(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)V

    .line 86
    .end local v10    # "lastConnectedInfo":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    .local v8, "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    :cond_3
    :goto_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 88
    .local v9, "key":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v14, "bssid"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 89
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 111
    :catch_1
    move-exception v4

    .line 112
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string/jumbo v14, "DhcpClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Ignore invalid address while reading"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 120
    if-eqz v7, :cond_4

    .line 122
    :try_start_6
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_4
    :goto_2
    move-object v6, v7

    .line 126
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v8    # "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "version":I
    :cond_5
    :goto_3
    if-eqz v10, :cond_6

    .line 127
    const/4 v14, 0x1

    iput-boolean v14, v10, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->isLastUpdatedInfo:Z

    .line 67
    :cond_6
    return-void

    .line 90
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v11    # "version":I
    :cond_7
    :try_start_7
    const-string/jumbo v14, "ip"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 91
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 116
    .end local v8    # "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "version":I
    :catch_2
    move-exception v5

    .local v5, "ignore":Ljava/io/EOFException;
    move-object v6, v7

    .line 120
    .end local v7    # "in":Ljava/io/DataInputStream;
    :goto_4
    if-eqz v6, :cond_5

    .line 122
    :try_start_8
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 123
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 92
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "ignore":Ljava/io/EOFException;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v11    # "version":I
    :cond_8
    :try_start_9
    const-string/jumbo v14, "ip_prefix"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 93
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    iput v14, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 117
    .end local v8    # "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "version":I
    :catch_4
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v6, v7

    .line 118
    .end local v7    # "in":Ljava/io/DataInputStream;
    :goto_5
    :try_start_a
    sget-boolean v14, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v14, :cond_9

    const-string/jumbo v14, "DhcpClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error parsing configuration: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 120
    :cond_9
    if-eqz v6, :cond_5

    .line 122
    :try_start_b
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_3

    .line 123
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 94
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v11    # "version":I
    :cond_a
    :try_start_c
    const-string/jumbo v14, "server_ip"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 95
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 119
    .end local v8    # "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "version":I
    :catchall_0
    move-exception v14

    move-object v6, v7

    .line 120
    .end local v7    # "in":Ljava/io/DataInputStream;
    :goto_6
    if-eqz v6, :cond_b

    .line 122
    :try_start_d
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 119
    :cond_b
    :goto_7
    throw v14

    .line 96
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v11    # "version":I
    :cond_c
    :try_start_e
    const-string/jumbo v14, "last_updated"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 97
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    iput-wide v14, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    .line 99
    invoke-virtual {v8}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->isValid()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 100
    sget-boolean v14, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v14, :cond_d

    const-string/jumbo v14, "DhcpClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "load dhcp info - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    iget-object v15, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v14, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-wide v14, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_3

    .line 104
    move-object v10, v8

    .line 105
    .local v10, "lastConnectedInfo":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    iget-wide v12, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    goto/16 :goto_1

    .line 108
    .end local v10    # "lastConnectedInfo":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    :cond_e
    const-string/jumbo v14, "DhcpClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "info "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " in not valid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 123
    .restart local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v8    # "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "version":I
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_7

    .line 119
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v14

    goto :goto_6

    .line 116
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .local v10, "lastConnectedInfo":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    :catch_8
    move-exception v5

    .restart local v5    # "ignore":Ljava/io/EOFException;
    goto/16 :goto_4

    .line 117
    .end local v5    # "ignore":Ljava/io/EOFException;
    :catch_9
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_5
.end method


# virtual methods
.method public getDhcpResult(Ljava/lang/String;)Landroid/net/DhcpResults;
    .locals 7
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 189
    iget-object v3, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    const-string/jumbo v3, "DhcpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDhcpResult - bssid is not matched "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-object v6

    .line 194
    :cond_0
    iget-object v3, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    .line 195
    .local v1, "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    if-nez v1, :cond_1

    .line 196
    return-object v6

    .line 199
    :cond_1
    const-string/jumbo v3, "DhcpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDhcpResult - matched "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 200
    iget-object v5, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 200
    const-string/jumbo v5, "/"

    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 200
    iget v5, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 200
    const-string/jumbo v5, ", "

    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 200
    iget-object v5, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v2, Landroid/net/DhcpResults;

    invoke-direct {v2}, Landroid/net/DhcpResults;-><init>()V

    .line 204
    .local v2, "results":Landroid/net/DhcpResults;
    :try_start_0
    new-instance v3, Landroid/net/LinkAddress;

    iget-object v4, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/net/dhcp/SemDhcpClientUtil;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v4

    iget v5, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    invoke-direct {v3, v4, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, v2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    iget-object v3, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/net/dhcp/SemDhcpClientUtil;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v3

    iput-object v3, v2, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 210
    return-object v2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object v6
.end method

.method public saveDhcpResult(Ljava/lang/String;Landroid/net/DhcpResults;)V
    .locals 16
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "results"    # Landroid/net/DhcpResults;

    .prologue
    .line 132
    sget-boolean v13, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v13, :cond_0

    const-string/jumbo v13, "DhcpClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "saveDhcpResult bssid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    if-nez v13, :cond_3

    .line 134
    :cond_1
    sget-boolean v13, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v13, :cond_2

    const-string/jumbo v13, "DhcpClient"

    const-string/jumbo v14, "failed to save dhcp result - dhcp result is null"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    return-void

    .line 133
    :cond_3
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    if-eqz v13, :cond_1

    .line 137
    new-instance v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    const/4 v13, 0x0

    invoke-direct {v2, v13}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;-><init>(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)V

    .line 138
    .local v2, "currentInfo":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    move-object/from16 v0, p1

    iput-object v0, v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    .line 139
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    .line 140
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v13}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v13

    iput v13, v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    .line 141
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    .line 145
    .local v9, "origInfo":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    if-eqz v9, :cond_4

    iget-boolean v13, v9, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->isLastUpdatedInfo:Z

    if-eqz v13, :cond_4

    invoke-virtual {v2, v9}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->equals(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 147
    return-void

    .line 149
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/4 v10, 0x0

    .line 153
    .local v10, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v11, Ljava/io/DataOutputStream;

    new-instance v13, Ljava/io/BufferedOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    sget-object v15, Landroid/net/dhcp/SemDhcpClientUtil;->DHCP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .local v11, "out":Ljava/io/DataOutputStream;
    const/4 v12, 0x1

    .line 155
    .local v12, "version":I
    :try_start_1
    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 157
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v8, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    .line 159
    .local v6, "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 177
    .end local v6    # "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    .end local v7    # "info$iterator":Ljava/util/Iterator;
    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;>;"
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    move-object v10, v11

    .line 178
    .end local v11    # "out":Ljava/io/DataOutputStream;
    .end local v12    # "version":I
    :goto_1
    :try_start_2
    sget-boolean v13, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v13, :cond_5

    const-string/jumbo v13, "DhcpClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error parsing configuration: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    :cond_5
    if-eqz v10, :cond_6

    .line 182
    :try_start_3
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 131
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    :goto_2
    return-void

    .line 161
    .restart local v7    # "info$iterator":Ljava/util/Iterator;
    .restart local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;>;"
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v12    # "version":I
    :cond_7
    :try_start_4
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 163
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/16 v14, 0xa

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-ge v5, v13, :cond_9

    .line 164
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    .line 165
    .restart local v6    # "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    sget-boolean v13, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v13, :cond_8

    const-string/jumbo v13, "DhcpClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "save dhcp info - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_8
    const-string/jumbo v13, "bssid"

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 167
    iget-object v13, v6, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v13, "ip"

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 169
    iget-object v13, v6, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v13, "ip_prefix"

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 171
    iget v13, v6, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 172
    const-string/jumbo v13, "server_ip"

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 173
    iget-object v13, v6, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v13, "last_updated"

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 175
    iget-wide v14, v6, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    invoke-virtual {v11, v14, v15}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 180
    .end local v6    # "info":Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    :cond_9
    if-eqz v11, :cond_a

    .line 182
    :try_start_5
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_a
    :goto_4
    move-object v10, v11

    .end local v11    # "out":Ljava/io/DataOutputStream;
    .local v10, "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 183
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    goto :goto_4

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "i":I
    .end local v7    # "info$iterator":Ljava/util/Iterator;
    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;>;"
    .end local v11    # "out":Ljava/io/DataOutputStream;
    .end local v12    # "version":I
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 179
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 180
    :goto_5
    if-eqz v10, :cond_b

    .line 182
    :try_start_6
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 179
    :cond_b
    :goto_6
    throw v13

    .line 183
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 179
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v12    # "version":I
    :catchall_1
    move-exception v13

    move-object v10, v11

    .end local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    goto :goto_5

    .line 177
    .end local v12    # "version":I
    .local v10, "out":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_1
.end method
