.class public Lcom/samsung/android/rlc/util/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static final IMEI:Ljava/lang/String; = "IMEI:"

.field private static final MEID:Ljava/lang/String; = "MEID:"

.field private static final TAG:Ljava/lang/String;

.field private static final TWID:Ljava/lang/String; = "TWID:"

.field private static final UTF:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/samsung/android/rlc/util/DeviceUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    .line 46
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/rlc/util/DeviceUtil;->HEX_DIGITS:[C

    .line 35
    return-void

    .line 46
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Checksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "deviceId"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xe

    const/4 v4, 0x0

    .line 341
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x41

    if-lt v4, v5, :cond_0

    .line 342
    return-object p0

    .line 344
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 345
    const/4 v2, 0x0

    .line 346
    .local v2, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_3

    .line 347
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_1

    .line 348
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    .line 346
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v3, v4, 0x2

    .line 351
    .local v3, "temp":I
    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    .line 352
    add-int/2addr v2, v3

    goto :goto_1

    .line 354
    :cond_2
    rem-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    goto :goto_1

    .line 359
    .end local v3    # "temp":I
    :cond_3
    rem-int/lit8 v4, v2, 0xa

    if-nez v4, :cond_4

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "checksum":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 363
    .end local v0    # "checksum":I
    :cond_4
    rem-int/lit8 v4, v2, 0xa

    rsub-int/lit8 v0, v4, 0xa

    .line 364
    .restart local v0    # "checksum":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 367
    .end local v0    # "checksum":I
    .end local v1    # "i":I
    .end local v2    # "sum":I
    :cond_5
    return-object p0
.end method

.method public static getCISSalesCode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    const-string v1, "rlc.sales"

    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "salesCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-static {}, Lcom/samsung/android/rlc/util/DeviceUtil;->getSalesCodeRegion()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_0
    const-string v1, "SER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SKZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    const-string v1, "CAC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 179
    if-nez v1, :cond_1

    .line 180
    const-string v1, "SEK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 179
    if-eqz v1, :cond_2

    .line 181
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 184
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static getData([B)Ljava/lang/String;
    .locals 5
    .param p0, "inbox"    # [B

    .prologue
    .line 284
    const-string v2, ""

    .line 285
    .local v2, "sessionID":Ljava/lang/String;
    array-length v4, p0

    add-int/lit8 v4, v4, -0x10

    new-array v3, v4, [B

    .line 286
    .local v3, "tmp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x10

    if-ge v0, v4, :cond_0

    .line 288
    add-int/lit8 v4, v0, 0x10

    aget-byte v4, p0, v4

    aput-byte v4, v3, v0

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    array-length v4, v3

    new-array v1, v4, [B

    .line 292
    .local v1, "pPushBody":[B
    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 294
    aget-byte v4, v3, v0

    aput-byte v4, v1, v0

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 297
    :cond_1
    if-eqz v1, :cond_2

    .line 299
    invoke-static {v1}, Lcom/samsung/android/rlc/util/DeviceUtil;->libToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 302
    :cond_2
    return-object v2
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0xf

    const/16 v5, 0xe

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    .line 139
    .local v3, "phoneType":I
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceIdWithException(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    .end local v1    # "deviceId":Ljava/lang/String;
    :goto_0
    const-string v0, "IMEI:"

    .line 144
    .local v0, "addressType":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 146
    if-eqz v1, :cond_2

    const-string v4, "000000000000000"

    if-eq v1, v4, :cond_2

    .line 147
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_0

    const-string v0, "MEID:"

    .line 163
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 140
    .end local v0    # "addressType":Ljava/lang/String;
    .restart local v1    # "deviceId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v2    # "e1":Ljava/lang/Exception;
    .restart local v0    # "addressType":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    const-string v0, "IMEI:"

    goto :goto_1

    .line 149
    :cond_1
    const-string v0, "NONE"

    goto :goto_1

    .line 152
    :cond_2
    const-string v4, "ro.serialno"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "deviceId":Ljava/lang/String;
    const-string v0, "TWID:"

    goto :goto_1

    .line 158
    .end local v1    # "deviceId":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_4

    const-string v0, "MEID:"

    goto :goto_1

    .line 159
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_5

    const-string v0, "IMEI:"

    goto :goto_1

    .line 160
    :cond_5
    const-string v0, "NONE:"

    goto :goto_1
.end method

.method private static getDeviceIDWithoutPrefix(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "deviceId":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceIdWithException(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    .end local v0    # "deviceId":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    const-string v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    const-string v2, "ro.serialno"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_1
    return-object v0

    .line 120
    .restart local v0    # "deviceId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceIdWithException(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getIMEIorMEID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "deviceId":Ljava/lang/String;
    return-object v0
.end method

.method public static getDualSIMDeviceID(Landroid/content/Context;Z)[Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needHasing"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 67
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 68
    .local v0, "count":I
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->getIMEI(I)[Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "id":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 70
    sget-object v8, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v9, "There are imeis in rmm area"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-eqz p1, :cond_0

    .line 72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v3

    if-ge v2, v8, :cond_0

    .line 73
    aget-object v8, v3, v2

    invoke-static {v8}, Lcom/samsung/android/rlc/util/DeviceUtil;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    :cond_0
    return-object v3

    .line 79
    :cond_1
    if-le v0, v9, :cond_3

    .line 80
    new-array v3, v0, [Ljava/lang/String;

    .line 81
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 82
    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {v7, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/rlc/util/DeviceUtil;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2

    .line 81
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v7, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 109
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "id":[Ljava/lang/String;
    .end local v7    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    return-object v11

    .line 88
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    .restart local v3    # "id":[Ljava/lang/String;
    .restart local v7    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    if-nez v0, :cond_8

    .line 89
    :try_start_1
    const-string v8, "ril.serialnumber"

    invoke-static {v8}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "mRilSerial":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "00000000000"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_4
    const-string v5, "ro.serialno"

    .line 91
    .local v5, "serial":Ljava/lang/String;
    :goto_3
    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "serialNum":Ljava/lang/String;
    sget-object v8, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WIFI only device : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    .line 94
    if-eqz p1, :cond_7

    .line 95
    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/rlc/util/DeviceUtil;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v3, v9

    .line 108
    .end local v4    # "mRilSerial":Ljava/lang/String;
    .end local v5    # "serial":Ljava/lang/String;
    .end local v6    # "serialNum":Ljava/lang/String;
    :cond_5
    :goto_4
    return-object v3

    .line 90
    .restart local v4    # "mRilSerial":Ljava/lang/String;
    :cond_6
    const-string v5, "ril.serialnumber"

    goto :goto_3

    .line 97
    .restart local v5    # "serial":Ljava/lang/String;
    .restart local v6    # "serialNum":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v3, v9

    goto :goto_4

    .line 100
    .end local v4    # "mRilSerial":Ljava/lang/String;
    .end local v5    # "serial":Ljava/lang/String;
    .end local v6    # "serialNum":Ljava/lang/String;
    :cond_8
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    .line 101
    if-eqz p1, :cond_9

    .line 102
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceIDWithoutPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/rlc/util/DeviceUtil;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v3, v9

    goto :goto_4

    .line 104
    :cond_9
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceIDWithoutPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v3, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static getHashString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "plainValue"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 53
    if-nez p0, :cond_0

    return-object v6

    .line 54
    :cond_0
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 55
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 56
    .local v2, "result":[B
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 57
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "result":[B
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    return-object v6
.end method

.method public static getIMEIorMEID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 372
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 373
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "str0":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    .line 375
    return-object v0

    .line 376
    :cond_0
    if-eqz v0, :cond_1

    .line 377
    invoke-static {v0}, Lcom/samsung/android/rlc/util/DeviceUtil;->Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 378
    :cond_1
    return-object v4
.end method

.method public static getSalesCodeRegion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 168
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "salesCode":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSalesCodeRegion :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object v0
.end method

.method public static getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 408
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/rlc/util/DeviceUtil;->isGetFirstExcpetedModel()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 412
    :try_start_0
    const-class v6, Landroid/telephony/TelephonyManager;

    const-string v7, "getFirst"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .local v5, "temp":Landroid/telephony/TelephonyManager;
    move-object v4, v5

    .line 430
    .end local v5    # "temp":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 432
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 434
    .restart local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    return-object v4

    .line 424
    :catch_0
    move-exception v2

    .line 425
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 421
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 422
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 418
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 415
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isGetFirstExcpetedModel()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 438
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v3, v5, :cond_1

    .line 440
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 441
    .local v2, "productmodel":Ljava/lang/String;
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "GT-N7102"

    aput-object v3, v0, v4

    const-string v3, "GT-I9502"

    aput-object v3, v0, v7

    const-string v3, "SM-N9002"

    const/4 v5, 0x2

    aput-object v3, v0, v5

    const-string v3, "SM-G9052"

    const/4 v5, 0x3

    aput-object v3, v0, v5

    .line 443
    .local v0, "MODELS":[Ljava/lang/String;
    array-length v5, v0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 445
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 447
    sget-object v3, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v4, "Get First Model is true"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return v7

    .line 443
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    .end local v1    # "model":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "flag":Z
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/DeviceUtil;->isNetworkAvailable(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 202
    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v2, "Wifi is available"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    return v0

    .line 205
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/DeviceUtil;->isNetworkAvailable(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const/4 v0, 0x1

    .line 207
    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v2, "3G is available"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v2, "Network access is not available"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isNetworkAvailable(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    .line 227
    const/4 v3, 0x0

    .line 230
    .local v3, "isConnect":Z
    const-string v4, "connectivity"

    .line 229
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 233
    .local v0, "connecitivyManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 234
    :try_start_0
    sget-object v4, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v5, "Network access is not available."

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return v7

    .line 237
    :cond_0
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 238
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 239
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 248
    .end local v3    # "isConnect":Z
    :cond_1
    :goto_0
    return v3

    .line 239
    .restart local v3    # "isConnect":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 243
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network access is not available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return v7
.end method

.method public static isNetworkAvailableVer(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 259
    const/4 v3, 0x0

    .line 261
    .local v3, "isConnect":Z
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 264
    .local v0, "connecitivyManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 265
    :try_start_0
    sget-object v4, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v5, "Network access is not available."

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return v7

    .line 268
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 269
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 270
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 279
    .end local v3    # "isConnect":Z
    :cond_1
    :goto_0
    return v3

    .line 270
    .restart local v3    # "isConnect":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 274
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network access is not available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return v7
.end method

.method public static libToHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "array"    # [B

    .prologue
    .line 310
    const/4 v6, 0x4

    new-array v1, v6, [C

    .line 311
    .local v1, "buf":[C
    const/4 v2, 0x0

    .local v2, "bufIndex":I
    const/4 v4, 0x0

    .line 312
    .local v4, "i":I
    const/4 v5, 0x0

    .line 307
    .local v5, "szBuf":Ljava/lang/String;
    const/4 v4, 0x5

    move v3, v2

    .line 314
    .end local v2    # "bufIndex":I
    .local v3, "bufIndex":I
    :goto_0
    const/4 v6, 0x7

    if-ge v4, v6, :cond_0

    .line 316
    aget-byte v0, p0, v4

    .line 317
    .local v0, "b":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "bufIndex":I
    .restart local v2    # "bufIndex":I
    sget-object v6, Lcom/samsung/android/rlc/util/DeviceUtil;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 318
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "bufIndex":I
    .restart local v3    # "bufIndex":I
    sget-object v6, Lcom/samsung/android/rlc/util/DeviceUtil;->HEX_DIGITS:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v2

    .line 314
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "b":B
    :cond_0
    const/4 v4, 0x0

    :goto_1
    array-length v6, v1

    if-ge v4, v6, :cond_1

    .line 324
    aget-char v6, v1, v4

    const/16 v7, 0x30

    if-le v6, v7, :cond_2

    .line 329
    :cond_1
    array-length v6, v1

    if-ne v4, v6, :cond_3

    .line 331
    new-instance v5, Ljava/lang/String;

    .end local v5    # "szBuf":Ljava/lang/String;
    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 337
    .local v5, "szBuf":Ljava/lang/String;
    :goto_2
    return-object v5

    .line 322
    .local v5, "szBuf":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 335
    :cond_3
    array-length v6, v1

    sub-int/2addr v6, v4

    invoke-static {v1, v4, v6}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    .local v5, "szBuf":Ljava/lang/String;
    goto :goto_2
.end method

.method public static versionChanged(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "result":Z
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->PKG_VER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->PKG_VER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 458
    :cond_1
    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v2, "Package version changed"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 v0, 0x1

    goto :goto_0
.end method
