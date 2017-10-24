.class public Lcom/samsung/android/rlc/util/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static final IMEI:Ljava/lang/String; = "IMEI:"

.field private static final MEID:Ljava/lang/String; = "MEID:"

.field private static final TAG:Ljava/lang/String;

.field private static final TWID:Ljava/lang/String; = "TWID:"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-class v0, Lcom/samsung/android/rlc/util/DeviceUtil;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const/16 v0, 0x10

    .line 44
    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x42

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x46

    aput-char v2, v0, v1

    sput-object v0, Lcom/samsung/android/rlc/util/DeviceUtil;->HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Checksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xe

    const/4 v2, 0x0

    .line 301
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-ge v0, v1, :cond_0

    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 327
    return-object p0

    .line 302
    :cond_0
    return-object p0

    :cond_1
    move v1, v2

    move v0, v2

    .line 306
    :goto_0
    if-lt v1, v5, :cond_2

    .line 319
    rem-int/lit8 v1, v0, 0xa

    if-eqz v1, :cond_5

    .line 323
    rem-int/lit8 v0, v0, 0xa

    rsub-int/lit8 v0, v0, 0xa

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 307
    :cond_2
    rem-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_3

    .line 310
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0x2

    const/16 v4, 0xa

    .line 311
    if-lt v3, v4, :cond_4

    .line 314
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 306
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    goto :goto_1

    .line 312
    :cond_4
    add-int/2addr v0, v3

    goto :goto_1

    .line 321
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCISSalesCode(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "rlc.sales"

    .line 135
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PushUtil;->getRlcDebugProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const-string/jumbo v1, "SER"

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_1
    invoke-static {}, Lcom/samsung/android/rlc/util/DeviceUtil;->getSalesCodeRegion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "SKZ"

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CAC"

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SEK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    return v2
.end method

.method public static getData([B)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v2, ""

    .line 245
    array-length v0, p0

    add-int/lit8 v0, v0, -0x10

    new-array v3, v0, [B

    move v0, v1

    .line 246
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x10

    if-lt v0, v4, :cond_0

    .line 251
    array-length v0, v3

    new-array v0, v0, [B

    .line 252
    :goto_1
    array-length v4, v3

    if-lt v1, v4, :cond_1

    .line 257
    if-nez v0, :cond_2

    move-object v0, v2

    .line 262
    :goto_2
    return-object v0

    .line 248
    :cond_0
    add-int/lit8 v4, v0, 0x10

    aget-byte v4, p0, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    aget-byte v4, v3, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/rlc/util/DeviceUtil;->libToHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0xf

    const/16 v3, 0xe

    .line 97
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 99
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceIdWithException(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string/jumbo v2, "IMEI:"

    .line 104
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v4, :cond_6

    const-string/jumbo v1, "NONE:"

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 123
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :catch_0
    move-exception v2

    .line 101
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 106
    :cond_0
    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v0, "ro.serialno"

    const-string/jumbo v1, "unknown"

    .line 112
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "TWID:"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "000000000000000"

    .line 106
    if-eq v0, v1, :cond_1

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v4, :cond_4

    const-string/jumbo v1, "NONE"

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 109
    goto :goto_1

    :cond_3
    const-string/jumbo v1, "MEID:"

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 107
    goto :goto_1

    :cond_4
    const-string/jumbo v1, "IMEI:"

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 108
    goto :goto_1

    :cond_5
    const-string/jumbo v1, "MEID:"

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 118
    goto :goto_1

    :cond_6
    const-string/jumbo v1, "IMEI:"

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 119
    goto :goto_1
.end method

.method private static getDeviceIDWithoutPrefix(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceIdWithException(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ro.serialno"

    const-string/jumbo v1, "unknown"

    .line 84
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_1
    return-object v0

    .line 82
    :catch_0
    move-exception v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "000000000000000"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1
.end method

.method public static getDeviceIdWithException(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getIMEIorMEID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 343
    return-object v0
.end method

.method public static getDualSIMDeviceID(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 53
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/rlc/util/RLCUtil;->getIMEI(I)[Ljava/lang/String;

    move-result-object v0

    .line 55
    if-nez v0, :cond_1

    .line 60
    if-gt v3, v4, :cond_2

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    .line 68
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDeviceIDWithoutPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->setIMEIs([Ljava/lang/String;)V

    .line 72
    return-object v0

    .line 56
    :cond_1
    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "There are imeis in rmm area"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object v0

    .line 61
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    .line 62
    :goto_0
    if-ge v1, v3, :cond_0

    .line 63
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 64
    sget-object v4, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    aget-object v5, v0, v1

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getIMEIorMEID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 332
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 334
    if-nez v0, :cond_1

    .line 336
    :cond_0
    if-nez v0, :cond_2

    .line 338
    return-object v3

    :cond_1
    const/4 v1, 0x0

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    .line 335
    return-object v0

    .line 337
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/rlc/util/DeviceUtil;->Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSalesCodeRegion()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "ro.csc.sales_code"

    .line 128
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSalesCodeRegion :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-object v0
.end method

.method private static getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 5

    .prologue
    const-string/jumbo v1, "phone"

    .line 347
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 368
    invoke-static {}, Lcom/samsung/android/rlc/util/DeviceUtil;->isGetFirstExcpetedModel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    :goto_0
    if-eqz v1, :cond_1

    .line 394
    :goto_1
    return-object v1

    :cond_0
    :try_start_0
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "getFirst"

    const/4 v4, 0x0

    .line 372
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 386
    :catch_0
    move-exception v2

    .line 376
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 386
    :catch_1
    move-exception v2

    .line 379
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 386
    :catch_2
    move-exception v2

    .line 382
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 386
    :catch_3
    move-exception v2

    .line 385
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "phone"

    .line 392
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    goto :goto_1
.end method

.method public static isGetFirstExcpetedModel()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 412
    :cond_0
    return v1

    .line 400
    :cond_1
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v0, 0x4

    .line 401
    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "GT-N7102"

    aput-object v0, v3, v1

    const-string/jumbo v0, "GT-I9502"

    aput-object v0, v3, v6

    const/4 v0, 0x2

    const-string/jumbo v4, "SM-N9002"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string/jumbo v4, "SM-G9052"

    aput-object v4, v3, v0

    .line 403
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 405
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_2
    sget-object v0, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Get First Model is true"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return v6
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 159
    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/DeviceUtil;->isNetworkAvailable(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/DeviceUtil;->isNetworkAvailable(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    sget-object v1, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Network access is not available"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    return v0

    .line 162
    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Wifi is available"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 167
    :cond_1
    sget-object v0, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "3G is available"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private static isNetworkAvailable(Landroid/content/Context;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "connectivity"

    .line 190
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 193
    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 198
    if-nez v0, :cond_1

    .line 208
    :goto_0
    return v1

    .line 194
    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Network access is not available."

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return v1

    .line 199
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 206
    :catch_0
    move-exception v0

    .line 204
    sget-object v2, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Network access is not available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return v1
.end method

.method public static isNetworkAvailableVer(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "connectivity"

    .line 221
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 224
    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 229
    if-nez v0, :cond_1

    .line 239
    :goto_0
    return v1

    .line 225
    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Network access is not available."

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return v1

    .line 230
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 237
    :catch_0
    move-exception v0

    .line 235
    sget-object v2, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Network access is not available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return v1
.end method

.method public static libToHexString([B)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 270
    const/4 v1, 0x4

    new-array v3, v1, [C

    const/4 v1, 0x5

    move v2, v0

    .line 274
    :goto_0
    const/4 v4, 0x7

    if-lt v1, v4, :cond_1

    .line 282
    :goto_1
    array-length v1, v3

    if-lt v0, v1, :cond_2

    .line 289
    :cond_0
    array-length v1, v3

    if-eq v0, v1, :cond_3

    .line 295
    array-length v1, v3

    sub-int/2addr v1, v0

    invoke-static {v3, v0, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 297
    :goto_2
    return-object v0

    .line 276
    :cond_1
    aget-byte v4, p0, v1

    .line 277
    add-int/lit8 v5, v2, 0x1

    sget-object v6, Lcom/samsung/android/rlc/util/DeviceUtil;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v3, v2

    .line 278
    add-int/lit8 v2, v5, 0x1

    sget-object v6, Lcom/samsung/android/rlc/util/DeviceUtil;->HEX_DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    int-to-char v4, v4

    aput-char v4, v3, v5

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_2
    aget-char v1, v3, v0

    const/16 v2, 0x30

    if-gt v1, v2, :cond_0

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_3
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static versionChanged(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 417
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->PKG_VER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    :goto_0
    return v0

    .line 418
    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/util/DeviceUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Package version changed"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v0, 0x1

    goto :goto_0
.end method
