.class public Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;
.super Ljava/lang/Object;
.source "MilkTelephonyManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PROPERTY_DATA_PREFER_SIM_ID:Ljava/lang/String; = "persist.sys.dataprefer.simid"

.field private static final TELEPHONY_SERVICE_2:Ljava/lang/String; = "phone2"

.field private static volatile mInstance:Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static mProperties:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "usm.json"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInstance(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mProperties:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    .line 37
    return-void
.end method

.method private getDefaultPhoneId()I
    .locals 8

    .prologue
    .line 254
    :try_start_0
    const-string v4, "MultiSimManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 255
    .local v2, "multiSimManager":Ljava/lang/Class;
    const-string v4, "getDefaultPhoneId"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 256
    .local v1, "getDefaultPhoneId":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v3

    .line 269
    .end local v1    # "getDefaultPhoneId":Ljava/lang/reflect/Method;
    .end local v2    # "multiSimManager":Ljava/lang/Class;
    :goto_0
    return v3

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 269
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    const/4 v3, -0x1

    goto :goto_0

    .line 260
    :catch_1
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 262
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 264
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mInstance:Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mInstance:Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mInstance:Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mInstance:Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getNetworkOperator()Ljava/lang/String;
    .locals 5

    .prologue
    .line 273
    const-string v0, ""

    .line 274
    .local v0, "operator":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getPreferTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 275
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 286
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 288
    if-nez v0, :cond_0

    .line 289
    const-string v0, ""

    .line 291
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkOperator operator : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 292
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_1
    return-object v0
.end method

.method private getPreferTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getSimOperatorBelowL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSimOperatorAboveL()Ljava/lang/String;
    .locals 9

    .prologue
    .line 324
    const-string v4, ""

    .line 325
    .local v4, "operator":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 328
    :try_start_0
    const-string v5, "MultiSimManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 329
    .local v3, "multiSimManager":Ljava/lang/Class;
    const-string v5, "getSimOperator"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 330
    .local v2, "getSimOperator":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getDefaultPhoneId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 332
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 334
    sget-object v5, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimMncAboveL operator : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v5, v4

    .line 352
    .end local v2    # "getSimOperator":Ljava/lang/reflect/Method;
    .end local v3    # "multiSimManager":Ljava/lang/Class;
    :goto_0
    return-object v5

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 352
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getSimOperatorBelowL()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 341
    :catch_1
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 343
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 345
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 347
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private getSimOperatorBelowL()Ljava/lang/String;
    .locals 5

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getPreferTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 310
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 311
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "operator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    sget-object v2, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimOperatorBelowL operator : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .end local v0    # "operator":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getSimState()I
    .locals 8

    .prologue
    .line 234
    :try_start_0
    const-string v4, "MultiSimManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 235
    .local v2, "multiSimManager":Ljava/lang/Class;
    const-string v4, "getSimState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 236
    .local v1, "getDefaultPhoneId":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getDefaultPhoneId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v3

    .line 249
    .end local v1    # "getDefaultPhoneId":Ljava/lang/reflect/Method;
    .end local v2    # "multiSimManager":Ljava/lang/Class;
    :goto_0
    return v3

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 249
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    const/4 v3, -0x1

    goto :goto_0

    .line 240
    :catch_1
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 242
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 244
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 246
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getMcc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    sget-object v2, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mProperties:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    if-eqz v2, :cond_0

    .line 52
    sget-object v2, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mProperties:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    const-string v3, "mcc"

    sget-object v4, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->DEFAULT_MOBILE_COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "mcc_property":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->DEFAULT_MOBILE_COUNTRY_CODE:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    .line 67
    .end local v1    # "mcc_property":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getMccSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "mcc":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getMccNetworkOperator()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 67
    goto :goto_0
.end method

.method public getMccNetworkOperator()Ljava/lang/String;
    .locals 6

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, "mcc":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "operator":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 145
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 154
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v3    # "operator":Ljava/lang/String;
    .local v2, "mcc":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 147
    .end local v2    # "mcc":Ljava/lang/String;
    .restart local v1    # "mcc":Ljava/lang/String;
    .restart local v3    # "operator":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getMccNetworkOperator operator is empty!"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v3    # "operator":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    move-object v2, v1

    .line 154
    .end local v1    # "mcc":Ljava/lang/String;
    .restart local v2    # "mcc":Ljava/lang/String;
    goto :goto_1
.end method

.method public getMccSimOperator()Ljava/lang/String;
    .locals 7

    .prologue
    .line 94
    sget-object v4, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mProperties:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    if-eqz v4, :cond_0

    .line 95
    sget-object v4, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mProperties:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    const-string v5, "mcc"

    sget-object v6, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->DEFAULT_MOBILE_COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "mcc_property":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->DEFAULT_MOBILE_COUNTRY_CODE:Ljava/lang/String;

    if-eq v2, v4, :cond_0

    .line 113
    .end local v2    # "mcc_property":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "simOperator":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "mcc":Ljava/lang/String;
    move-object v2, v1

    .line 107
    goto :goto_0

    .line 108
    .end local v1    # "mcc":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 71
    sget-object v2, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mProperties:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    if-eqz v2, :cond_0

    .line 72
    sget-object v2, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mProperties:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    const-string v3, "mnc"

    sget-object v4, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->DEFAULT_MOBILE_NETWORK_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "mnc_property":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->DEFAULT_MOBILE_NETWORK_CODE:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    .line 87
    .end local v1    # "mnc_property":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getMncSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "mnc":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getMncNetworkOperator()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 87
    goto :goto_0
.end method

.method public getMncNetworkOperator()Ljava/lang/String;
    .locals 6

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 160
    .local v1, "mnc":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "operator":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 162
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 171
    .end local v1    # "mnc":Ljava/lang/String;
    .end local v3    # "operator":Ljava/lang/String;
    .local v2, "mnc":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 164
    .end local v2    # "mnc":Ljava/lang/String;
    .restart local v1    # "mnc":Ljava/lang/String;
    .restart local v3    # "operator":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getMncNetworkOperator operator is empty!"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v3    # "operator":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    move-object v2, v1

    .line 171
    .end local v1    # "mnc":Ljava/lang/String;
    .restart local v2    # "mnc":Ljava/lang/String;
    goto :goto_1
.end method

.method public getMncSimOperator()Ljava/lang/String;
    .locals 7

    .prologue
    .line 118
    sget-object v4, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mProperties:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    if-eqz v4, :cond_0

    .line 119
    sget-object v4, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->mProperties:Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    const-string v5, "mnc"

    sget-object v6, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->DEFAULT_MOBILE_NETWORK_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "mnc_property":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->DEFAULT_MOBILE_NETWORK_CODE:Ljava/lang/String;

    if-eq v2, v4, :cond_0

    .line 137
    .end local v2    # "mnc_property":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "simOperator":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 130
    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "mnc":Ljava/lang/String;
    move-object v2, v1

    .line 131
    goto :goto_0

    .line 132
    .end local v1    # "mnc":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 137
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
