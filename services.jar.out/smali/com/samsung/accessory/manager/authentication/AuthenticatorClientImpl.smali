.class public Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;
.super Lcom/samsung/accessory/manager/authentication/Authenticator;
.source "AuthenticatorClientImpl.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = true


# instance fields
.field private final COMMAND_ATQS:I

.field private final COMMAND_FIRMWARE:I

.field private final COMMAND_KEY_CHANGE:I

.field private final COMMAND_PUB_KEY:I

.field private final COMMAND_READ_ID:I

.field private final COMMAND_REQEXTRA:I

.field private final COMMAND_REQUNIFIED:I

.field private final COMMAND_REQURL:I

.field private final COMMAND_SEC_PUB_KEY:I

.field private final COMMAND_VERIFICATION:I

.field private final COMMAND_WRITE_ID:I

.field private final RETRY_TIME:I

.field private final SW_FAIL:[B

.field private final SW_SECURITY_ATTACK:[B

.field private final SW_SUCCESS:[B

.field private volatile isInterrupted:Z

.field private mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

.field private mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

.field private randNum:[B

.field private statusWord:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    .line 16
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 496
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;-><init>(Landroid/content/Context;)V

    .line 19
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->RETRY_TIME:I

    .line 21
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_ATQS:I

    .line 22
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_PUB_KEY:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_VERIFICATION:I

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_WRITE_ID:I

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_READ_ID:I

    .line 26
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_FIRMWARE:I

    .line 27
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_KEY_CHANGE:I

    .line 28
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_SEC_PUB_KEY:I

    .line 29
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_REQURL:I

    .line 30
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_REQEXTRA:I

    .line 31
    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->COMMAND_REQUNIFIED:I

    .line 33
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS:[B

    .line 34
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_FAIL:[B

    .line 35
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SECURITY_ATTACK:[B

    .line 37
    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 38
    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->randNum:[B

    .line 40
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    .line 497
    iput p2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mType:I

    .line 499
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    .line 500
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 495
    return-void

    .line 33
    :array_0
    .array-data 1
        -0x70t
        0x0t
    .end array-data

    .line 34
    nop

    :array_1
    .array-data 1
        0x69t
        -0x7ft
    .end array-data

    .line 35
    nop

    :array_2
    .array-data 1
        0x69t
        -0x7et
    .end array-data
.end method

.method private authNFC(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .locals 10
    .param p1, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "resMsg":[B
    const/4 v2, 0x0

    .line 60
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-nez v3, :cond_0

    .line 61
    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onAuthenticationChallenge, mConnection is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 63
    return v6

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v1

    .line 68
    .local v1, "resMsg":[B
    if-eqz v1, :cond_13

    .line 69
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received atqS Data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    sget-object v3, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NOT_SUPPORT:[B

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    :cond_2
    array-length v3, v1

    if-ne v3, v7, :cond_e

    .line 75
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    if-ne v3, v7, :cond_3

    .line 76
    const/16 v3, 0x14

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 101
    return v6

    .line 77
    :cond_3
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v4, -0x4f

    if-ne v3, v4, :cond_4

    .line 78
    const/16 v3, 0x15

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v1    # "resMsg":[B
    .end local v2    # "ret":Z
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    const/16 v3, 0xe

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 212
    return v6

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "resMsg":[B
    .restart local v2    # "ret":Z
    :cond_4
    const/4 v3, 0x0

    :try_start_1
    aget-byte v3, v1, v3

    const/16 v4, -0x4e

    if-ne v3, v4, :cond_5

    .line 80
    const/16 v3, 0x16

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 81
    :cond_5
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v4, -0x20

    if-ne v3, v4, :cond_6

    .line 82
    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 83
    :cond_6
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v4, -0xf

    if-ne v3, v4, :cond_7

    .line 84
    const/16 v3, 0x28

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 85
    :cond_7
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v4, -0xe

    if-ne v3, v4, :cond_8

    .line 86
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 87
    :cond_8
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v4, -0xd

    if-ne v3, v4, :cond_9

    .line 88
    const/16 v3, 0x2a

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 89
    :cond_9
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v4, -0xc

    if-ne v3, v4, :cond_a

    .line 90
    const/16 v3, 0x2b

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 91
    :cond_a
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v4, -0xb

    if-ne v3, v4, :cond_b

    .line 92
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 93
    :cond_b
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v4, -0xa

    if-ne v3, v4, :cond_c

    .line 94
    const/16 v3, 0x2d

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    .line 95
    :cond_c
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v4, -0x9

    if-ne v3, v4, :cond_d

    .line 96
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    .line 98
    :cond_d
    const/16 v3, 0x1b

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto/16 :goto_0

    .line 102
    :cond_e
    array-length v3, v1

    const/16 v4, 0x10

    if-ne v3, v4, :cond_11

    .line 103
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    move-result v2

    .line 114
    .end local v2    # "ret":Z
    :cond_f
    :goto_1
    if-nez v2, :cond_14

    .line 115
    const/16 v3, 0x1a

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 116
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_10

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "atqS fail, call sendStopAuth()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 118
    return v6

    .line 105
    .restart local v2    # "ret":Z
    :cond_11
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_12

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "atqS is not correct"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_12
    const/16 v3, 0x19

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 108
    return v6

    .line 111
    :cond_13
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_f

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, " atqS is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 121
    .end local v2    # "ret":Z
    :cond_14
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 122
    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    .line 123
    .local v2, "ret":Z
    if-nez v2, :cond_15

    .line 124
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 125
    return v6

    .line 128
    :cond_15
    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    .line 129
    if-nez v2, :cond_16

    .line 130
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 131
    return v6

    .line 134
    :cond_16
    const/4 v3, 0x5

    invoke-direct {p0, p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    .line 135
    if-nez v2, :cond_18

    .line 136
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_17

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Read id fail."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_17
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 138
    return v6

    .line 141
    :cond_18
    iget v3, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v3, v7, :cond_1d

    .line 142
    const/16 v3, 0x9

    invoke-direct {p0, p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    .line 143
    if-nez v2, :cond_19

    .line 144
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_19

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Url is not exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_19
    :goto_2
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_1a

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Success auth, call sendStopAuth()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v2    # "ret":Z
    :cond_1a
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 160
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    .line 161
    const-string/jumbo v4, "need to key change, retry authentication throught chaeged key"

    .line 160
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1b
    const/4 v3, 0x7

    invoke-direct {p0, p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    .line 163
    .restart local v2    # "ret":Z
    if-eqz v2, :cond_1c

    .line 164
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setKeyChanged(Z)V

    .line 168
    .end local v2    # "ret":Z
    :cond_1c
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 169
    const/16 v3, 0x8

    invoke-direct {p0, p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    .line 170
    .restart local v2    # "ret":Z
    if-nez v2, :cond_1f

    .line 171
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 172
    return v6

    .line 145
    :cond_1d
    iget v3, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v3, v9, :cond_1e

    .line 146
    const/16 v3, 0xa

    invoke-direct {p0, p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    .line 147
    if-nez v2, :cond_19

    .line 148
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_19

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Extra is not exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 149
    :cond_1e
    iget v3, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v3, v8, :cond_19

    .line 150
    const/16 v3, 0xb

    invoke-direct {p0, p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    .line 151
    if-nez v2, :cond_19

    .line 152
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_19

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "3rd data is not exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 175
    :cond_1f
    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    .line 176
    if-nez v2, :cond_20

    .line 177
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 178
    return v6

    .line 181
    :cond_20
    const/4 v3, 0x5

    invoke-direct {p0, p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    .line 182
    if-nez v2, :cond_22

    .line 183
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_21

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Read id fail."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_21
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z

    .line 185
    return v6

    .line 188
    :cond_22
    iget v3, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v3, v7, :cond_25

    .line 189
    const/16 v3, 0x9

    invoke-direct {p0, p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    .line 190
    if-nez v2, :cond_23

    .line 191
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_23

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "url is not exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_23
    :goto_3
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_24

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Success auth, call sendStopAuth()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v2    # "ret":Z
    :cond_24
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    invoke-virtual {p1, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 216
    return v7

    .line 192
    .restart local v2    # "ret":Z
    :cond_25
    :try_start_2
    iget v3, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v3, v9, :cond_26

    .line 193
    const/16 v3, 0xa

    invoke-direct {p0, p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    .line 194
    if-nez v2, :cond_23

    .line 195
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_23

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "extra is not exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 196
    :cond_26
    iget v3, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    if-ne v3, v8, :cond_23

    .line 197
    const/16 v3, 0xb

    invoke-direct {p0, p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    move-result v2

    .line 198
    if-nez v2, :cond_23

    .line 199
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v3, :cond_23

    sget-object v3, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "3rd data is not exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .locals 7
    .param p1, "what"    # I
    .param p2, "resMsg"    # [B
    .param p3, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 427
    const/4 v1, 0x0

    .line 429
    .local v1, "ret":Z
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    if-eqz p2, :cond_1

    array-length v2, p2

    if-nez v2, :cond_2

    .line 432
    :cond_1
    const/16 v2, 0xc

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 433
    return v5

    .line 436
    :cond_2
    array-length v2, p2

    if-ne v2, v6, :cond_f

    .line 437
    aget-byte v0, p2, v5

    .line 438
    .local v0, "error":B
    if-ne v0, v6, :cond_4

    .line 439
    const/16 v2, 0x14

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 481
    .end local v0    # "error":B
    .end local v1    # "ret":Z
    :cond_3
    :goto_0
    return v1

    .line 440
    .restart local v0    # "error":B
    .restart local v1    # "ret":Z
    :cond_4
    const/16 v2, -0x50

    if-ne v0, v2, :cond_5

    .line 441
    const/16 v2, 0x15

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 442
    :cond_5
    const/16 v2, -0x4e

    if-ne v0, v2, :cond_6

    .line 443
    const/16 v2, 0x16

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 444
    :cond_6
    const/16 v2, -0x20

    if-ne v0, v2, :cond_7

    .line 445
    const/16 v2, 0xd

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 446
    :cond_7
    const/16 v2, -0xf

    if-ne v0, v2, :cond_8

    .line 447
    const/16 v2, 0x28

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 448
    :cond_8
    const/16 v2, -0xe

    if-ne v0, v2, :cond_9

    .line 449
    const/16 v2, 0x29

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 450
    :cond_9
    const/16 v2, -0xd

    if-ne v0, v2, :cond_a

    .line 451
    const/16 v2, 0x2a

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 452
    :cond_a
    const/16 v2, -0xc

    if-ne v0, v2, :cond_b

    .line 453
    const/16 v2, 0x2b

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 454
    :cond_b
    const/16 v2, -0xb

    if-ne v0, v2, :cond_c

    .line 455
    const/16 v2, 0x2c

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 456
    :cond_c
    const/16 v2, -0xa

    if-ne v0, v2, :cond_d

    .line 457
    const/16 v2, 0x2d

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 458
    :cond_d
    const/16 v2, -0x9

    if-ne v0, v2, :cond_e

    .line 459
    const/16 v2, 0x2e

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 461
    :cond_e
    const/16 v2, 0x1b

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    goto :goto_0

    .line 462
    .end local v0    # "error":B
    :cond_f
    array-length v2, p2

    const/4 v3, 0x3

    if-le v2, v3, :cond_3

    .line 463
    array-length v2, p2

    add-int/lit8 v2, v2, -0x3

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    const/4 v4, 0x2

    invoke-static {p2, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 464
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->DBG:Z

    if-eqz v2, :cond_10

    sget-object v2, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Status Word: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_10
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 467
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[B)Z

    move-result v1

    .line 468
    .local v1, "ret":Z
    if-nez v1, :cond_3

    .line 469
    invoke-virtual {p3, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 470
    return v5

    .line 472
    .local v1, "ret":Z
    :cond_11
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SECURITY_ATTACK:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 473
    const/16 v2, 0x18

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 474
    return v5

    .line 475
    :cond_12
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_FAIL:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 476
    const/16 v2, 0x17

    invoke-virtual {p3, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 477
    return v5
.end method

.method private sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z
    .locals 10
    .param p1, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    .param p2, "what"    # I

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x0

    .line 220
    const/4 v4, 0x0

    .line 221
    .local v4, "ret":Z
    const/4 v2, 0x0

    .line 222
    .local v2, "reqMsg":[B
    const/4 v3, 0x0

    .line 224
    .local v3, "resMsg":[B
    iget-boolean v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    if-eqz v5, :cond_0

    .line 225
    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "interrupted!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 227
    return v8

    .line 229
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 421
    .end local v2    # "reqMsg":[B
    .end local v3    # "resMsg":[B
    .end local v4    # "ret":Z
    :cond_1
    :goto_0
    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Receive Command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return v4

    .line 231
    .restart local v2    # "reqMsg":[B
    .restart local v3    # "resMsg":[B
    .restart local v4    # "ret":Z
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqFirmwareVersion()[B

    move-result-object v2

    .line 233
    .local v2, "reqMsg":[B
    const/4 v1, 0x0

    .end local v3    # "resMsg":[B
    .local v1, "i":I
    :goto_1
    const/4 v5, 0x1

    if-ge v1, v5, :cond_2

    .line 234
    :try_start_0
    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Send Command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 233
    .local v3, "resMsg":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    .end local v3    # "resMsg":[B
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 240
    return v8

    .line 242
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 245
    .end local v1    # "i":I
    .local v2, "reqMsg":[B
    .local v3, "resMsg":[B
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqPubKey()[B

    move-result-object v2

    .line 248
    .local v2, "reqMsg":[B
    :try_start_1
    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Send Command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    .line 251
    .local v3, "resMsg":[B
    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    .line 252
    .local v4, "ret":Z
    if-nez v4, :cond_3

    .line 253
    return v8

    .line 255
    :cond_3
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getPublicKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 256
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getPublicKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setPublicKey(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 260
    .end local v3    # "resMsg":[B
    .end local v4    # "ret":Z
    :catch_1
    move-exception v0

    .line 262
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p1, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 263
    return v8

    .line 267
    .end local v0    # "e":Ljava/io/IOException;
    .local v2, "reqMsg":[B
    .local v3, "resMsg":[B
    .local v4, "ret":Z
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqPubKey()[B

    move-result-object v2

    .line 270
    .local v2, "reqMsg":[B
    :try_start_2
    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Send Command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    .line 273
    .local v3, "resMsg":[B
    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 274
    .local v4, "ret":Z
    if-nez v4, :cond_1

    .line 275
    return v8

    .line 279
    .end local v3    # "resMsg":[B
    .local v4, "ret":Z
    :catch_2
    move-exception v0

    .line 281
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p1, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 282
    return v8

    .line 289
    .end local v0    # "e":Ljava/io/IOException;
    .local v2, "reqMsg":[B
    .local v3, "resMsg":[B
    :pswitch_3
    :try_start_3
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->makeRandomNumber()[B

    .line 290
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getRandNum()[B

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->randNum:[B

    .line 291
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->randNum:[B

    invoke-virtual {v5, v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->setRandNum([B)V

    .line 292
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getDataVerification()[B

    move-result-object v2

    .line 294
    .local v2, "reqMsg":[B
    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Send Command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    .line 297
    .local v3, "resMsg":[B
    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    .line 298
    .local v4, "ret":Z
    if-nez v4, :cond_1

    .line 299
    return v8

    .line 303
    .end local v2    # "reqMsg":[B
    .end local v3    # "resMsg":[B
    .local v4, "ret":Z
    :catch_3
    move-exception v0

    .line 305
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p1, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 306
    return v8

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    .local v2, "reqMsg":[B
    .local v3, "resMsg":[B
    :pswitch_4
    const/4 v4, 0x1

    .line 312
    goto/16 :goto_0

    .line 314
    :pswitch_5
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReadCoverId()[B

    move-result-object v2

    .line 317
    .local v2, "reqMsg":[B
    :try_start_4
    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Send Command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    .line 319
    .local v3, "resMsg":[B
    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    .line 320
    .local v4, "ret":Z
    if-nez v4, :cond_4

    .line 321
    return v8

    .line 323
    :cond_4
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getSerialNumber()[B

    move-result-object v5

    if-eqz v5, :cond_5

    .line 324
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getSerialNumber()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraId([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 333
    :cond_5
    const/4 v4, 0x1

    .local v4, "ret":Z
    goto/16 :goto_0

    .line 328
    .end local v3    # "resMsg":[B
    .end local v4    # "ret":Z
    :catch_4
    move-exception v0

    .line 330
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p1, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 331
    return v8

    .line 336
    .end local v0    # "e":Ljava/io/IOException;
    .local v2, "reqMsg":[B
    .local v3, "resMsg":[B
    .restart local v4    # "ret":Z
    :pswitch_6
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getKeyChange()[B

    move-result-object v2

    .line 339
    .local v2, "reqMsg":[B
    :try_start_5
    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Send Command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    .line 341
    .local v3, "resMsg":[B
    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v4

    .line 342
    .local v4, "ret":Z
    if-nez v4, :cond_6

    .line 343
    return v8

    .line 347
    .end local v3    # "resMsg":[B
    .local v4, "ret":Z
    :catch_5
    move-exception v0

    .line 349
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p1, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 350
    return v8

    .line 352
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "resMsg":[B
    .local v4, "ret":Z
    :cond_6
    const/4 v4, 0x1

    .local v4, "ret":Z
    goto/16 :goto_0

    .line 355
    .local v2, "reqMsg":[B
    .local v3, "resMsg":[B
    :pswitch_7
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqUrl()[B

    move-result-object v2

    .line 358
    .local v2, "reqMsg":[B
    :try_start_6
    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Send Command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    .line 360
    .local v3, "resMsg":[B
    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    .line 361
    .local v4, "ret":Z
    if-nez v4, :cond_7

    .line 362
    return v8

    .line 364
    :cond_7
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 365
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 369
    .end local v3    # "resMsg":[B
    .end local v4    # "ret":Z
    :catch_6
    move-exception v0

    .line 371
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p1, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 372
    return v8

    .line 376
    .end local v0    # "e":Ljava/io/IOException;
    .local v2, "reqMsg":[B
    .local v3, "resMsg":[B
    .local v4, "ret":Z
    :pswitch_8
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqExtra()[B

    move-result-object v2

    .line 379
    .local v2, "reqMsg":[B
    :try_start_7
    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Send Command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    .line 381
    .local v3, "resMsg":[B
    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    .line 382
    .local v4, "ret":Z
    if-nez v4, :cond_8

    .line 383
    return v8

    .line 385
    :cond_8
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 386
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 390
    .end local v3    # "resMsg":[B
    .end local v4    # "ret":Z
    :catch_7
    move-exception v0

    .line 392
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p1, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 393
    return v8

    .line 397
    .end local v0    # "e":Ljava/io/IOException;
    .local v2, "reqMsg":[B
    .local v3, "resMsg":[B
    .local v4, "ret":Z
    :pswitch_9
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getReqUnified3rd()[B

    move-result-object v2

    .line 400
    .local v2, "reqMsg":[B
    :try_start_8
    sget-object v5, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Send Command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0, v2, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    .line 402
    .local v3, "resMsg":[B
    invoke-direct {p0, p2, v3, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v4

    .line 403
    .local v4, "ret":Z
    if-nez v4, :cond_9

    .line 404
    return v8

    .line 406
    :cond_9
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v5

    if-eqz v5, :cond_a

    .line 407
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getManagerUrl()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    .line 408
    :cond_a
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 409
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->getExtraData()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 413
    .end local v3    # "resMsg":[B
    .end local v4    # "ret":Z
    :catch_8
    move-exception v0

    .line 415
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p1, v9}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 416
    return v8

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .locals 6
    .param p1, "input"    # [B

    .prologue
    .line 485
    if-eqz p1, :cond_1

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 488
    const-string/jumbo v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p1, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 492
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :cond_1
    const-string/jumbo v2, "null"

    return-object v2
.end method

.method public onAuthenticationChallenge(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .locals 1
    .param p1, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->authNFC(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0

    return v0
.end method

.method onInterrupted()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    .line 51
    return-void
.end method
