.class public Lcom/samsung/android/app/music/common/util/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/samsung/android/app/music/common/util/SntpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/SntpClient;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private read32([BI)J
    .locals 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v9, 0x80

    .line 166
    aget-byte v0, p1, p2

    .line 167
    .local v0, "b0":B
    add-int/lit8 v8, p2, 0x1

    aget-byte v1, p1, v8

    .line 168
    .local v1, "b1":B
    add-int/lit8 v8, p2, 0x2

    aget-byte v2, p1, v8

    .line 169
    .local v2, "b2":B
    add-int/lit8 v8, p2, 0x3

    aget-byte v3, p1, v8

    .line 172
    .local v3, "b3":B
    and-int/lit16 v8, v0, 0x80

    if-ne v8, v9, :cond_0

    and-int/lit8 v8, v0, 0x7f

    add-int/lit16 v4, v8, 0x80

    .line 173
    .local v4, "i0":I
    :goto_0
    and-int/lit16 v8, v1, 0x80

    if-ne v8, v9, :cond_1

    and-int/lit8 v8, v1, 0x7f

    add-int/lit16 v5, v8, 0x80

    .line 174
    .local v5, "i1":I
    :goto_1
    and-int/lit16 v8, v2, 0x80

    if-ne v8, v9, :cond_2

    and-int/lit8 v8, v2, 0x7f

    add-int/lit16 v6, v8, 0x80

    .line 175
    .local v6, "i2":I
    :goto_2
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v9, :cond_3

    and-int/lit8 v8, v3, 0x7f

    add-int/lit16 v7, v8, 0x80

    .line 177
    .local v7, "i3":I
    :goto_3
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    add-long/2addr v8, v10

    return-wide v8

    .end local v4    # "i0":I
    .end local v5    # "i1":I
    .end local v6    # "i2":I
    .end local v7    # "i3":I
    :cond_0
    move v4, v0

    .line 172
    goto :goto_0

    .restart local v4    # "i0":I
    :cond_1
    move v5, v1

    .line 173
    goto :goto_1

    .restart local v5    # "i1":I
    :cond_2
    move v6, v2

    .line 174
    goto :goto_2

    .restart local v6    # "i2":I
    :cond_3
    move v7, v3

    .line 175
    goto :goto_3
.end method

.method private readTimeStamp([BI)J
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    const-wide/16 v6, 0x3e8

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/util/SntpClient;->read32([BI)J

    move-result-wide v2

    .line 186
    .local v2, "seconds":J
    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/app/music/common/util/SntpClient;->read32([BI)J

    move-result-wide v0

    .line 187
    .local v0, "fraction":J
    const-wide v4, 0x83aa7e80L

    sub-long v4, v2, v4

    mul-long/2addr v4, v6

    mul-long/2addr v6, v0

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .locals 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "time"    # J

    .prologue
    .line 195
    const-wide/16 v8, 0x3e8

    div-long v6, p3, v8

    .line 196
    .local v6, "seconds":J
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    sub-long v2, p3, v8

    .line 197
    .local v2, "milliseconds":J
    const-wide v8, 0x83aa7e80L

    add-long/2addr v6, v8

    .line 200
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .local v4, "offset":I
    const/16 v5, 0x18

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 201
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 202
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 203
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/4 v5, 0x0

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 205
    const-wide v8, 0x100000000L

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 207
    .local v0, "fraction":J
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x18

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 208
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 209
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 211
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 212
    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/util/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/util/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/util/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 34
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 74
    const/16 v19, 0x0

    .line 76
    .local v19, "socket":Ljava/net/DatagramSocket;
    :try_start_0
    new-instance v26, Ljava/net/DatagramSocket;

    invoke-direct/range {v26 .. v26}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .local v26, "socket":Ljava/net/DatagramSocket;
    :try_start_1
    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 78
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 79
    .local v4, "address":Ljava/net/InetAddress;
    const/16 v27, 0x30

    move/from16 v0, v27

    new-array v5, v0, [B

    .line 80
    .local v5, "buffer":[B
    new-instance v9, Ljava/net/DatagramPacket;

    array-length v0, v5

    move/from16 v27, v0

    const/16 v30, 0x7b

    move/from16 v0, v27

    move/from16 v1, v30

    invoke-direct {v9, v5, v0, v4, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 85
    .local v9, "request":Ljava/net/DatagramPacket;
    const/16 v27, 0x0

    const/16 v30, 0x1b

    aput-byte v30, v5, v27

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 89
    .local v16, "requestTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 90
    .local v14, "requestTicks":J
    const/16 v27, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v16

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/samsung/android/app/music/common/util/SntpClient;->writeTimeStamp([BIJ)V

    .line 92
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 95
    new-instance v18, Ljava/net/DatagramPacket;

    array-length v0, v5

    move/from16 v27, v0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-direct {v0, v5, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 96
    .local v18, "response":Ljava/net/DatagramPacket;
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 98
    .local v20, "responseTicks":J
    sub-long v30, v20, v14

    add-long v22, v16, v30

    .line 101
    .local v22, "responseTime":J
    const/16 v27, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v5, v1}, Lcom/samsung/android/app/music/common/util/SntpClient;->readTimeStamp([BI)J

    move-result-wide v10

    .line 102
    .local v10, "originateTime":J
    const/16 v27, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v5, v1}, Lcom/samsung/android/app/music/common/util/SntpClient;->readTimeStamp([BI)J

    move-result-wide v12

    .line 103
    .local v12, "receiveTime":J
    const/16 v27, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v5, v1}, Lcom/samsung/android/app/music/common/util/SntpClient;->readTimeStamp([BI)J

    move-result-wide v28

    .line 104
    .local v28, "transmitTime":J
    sub-long v30, v20, v14

    sub-long v32, v28, v12

    sub-long v24, v30, v32

    .line 113
    .local v24, "roundTripTime":J
    sub-long v30, v12, v10

    sub-long v32, v28, v22

    add-long v30, v30, v32

    const-wide/16 v32, 0x2

    div-long v6, v30, v32

    .line 119
    .local v6, "clockOffset":J
    add-long v30, v22, v6

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/app/music/common/util/SntpClient;->mNtpTime:J

    .line 120
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/app/music/common/util/SntpClient;->mNtpTimeReference:J

    .line 121
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/app/music/common/util/SntpClient;->mRoundTripTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    if-eqz v26, :cond_0

    .line 127
    invoke-virtual/range {v26 .. v26}, Ljava/net/DatagramSocket;->close()V

    .line 131
    :cond_0
    const/16 v27, 0x1

    move-object/from16 v19, v26

    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v5    # "buffer":[B
    .end local v6    # "clockOffset":J
    .end local v9    # "request":Ljava/net/DatagramPacket;
    .end local v10    # "originateTime":J
    .end local v12    # "receiveTime":J
    .end local v14    # "requestTicks":J
    .end local v16    # "requestTime":J
    .end local v18    # "response":Ljava/net/DatagramPacket;
    .end local v20    # "responseTicks":J
    .end local v22    # "responseTime":J
    .end local v24    # "roundTripTime":J
    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .end local v28    # "transmitTime":J
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    :cond_1
    :goto_0
    return v27

    .line 122
    :catch_0
    move-exception v8

    .line 123
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    sget-object v27, Lcom/samsung/android/app/music/common/util/SntpClient;->LOG_TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "request time failed: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    const/16 v27, 0x0

    .line 126
    if-eqz v19, :cond_1

    .line 127
    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V

    goto :goto_0

    .line 126
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v27

    :goto_2
    if-eqz v19, :cond_2

    .line 127
    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    throw v27

    .line 126
    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v27

    move-object/from16 v19, v26

    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    goto :goto_2

    .line 122
    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v8

    move-object/from16 v19, v26

    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    goto :goto_1
.end method
