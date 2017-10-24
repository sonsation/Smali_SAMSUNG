.class public final Lcom/android/server/EngineeringModeService;
.super Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/EngineeringModeService$EMApplication;,
        Lcom/android/server/EngineeringModeService$EMClient;,
        Lcom/android/server/EngineeringModeService$EMClientList;,
        Lcom/android/server/EngineeringModeService$EMSystemServer;,
        Lcom/android/server/EngineeringModeService$GeneralApplication;,
        Lcom/android/server/EngineeringModeService$PlatformApplication;,
        Lcom/android/server/EngineeringModeService$SystemApplication;
    }
.end annotation


# static fields
.field private static final ANDROID_SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field private static final ERRORBYTE_NO_PERMISSION:[B = null

.field private static final ERROR_NO_PERMISSION:I = -0x514

.field private static final MODE_ENG_KERNEL:I = 0x0

.field private static final MODE_TEST_ENV:I = 0x1

.field private static final MODE_USB_DEBUG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EngineeringModeService"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

.field private mImei:Ljava/lang/String;

.field private mModel:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "engmode"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;-><init>()V

    .line 75
    sput-object p1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-direct {v0, p0}, Lcom/android/server/EngineeringModeService$EMClientList;-><init>(Lcom/android/server/EngineeringModeService;)V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    .line 79
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->registerClients()V

    .line 73
    return-void
.end method

.method private getPackageName(I)Ljava/lang/String;
    .locals 7
    .param p1, "callingPid"    # I

    .prologue
    .line 114
    const-string/jumbo v1, ""

    .line 117
    .local v1, "currentPkgName":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeGetProcessName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "system_server"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    const-string/jumbo v1, "system_server"

    .line 133
    :cond_0
    :goto_0
    return-object v1

    .line 120
    :cond_1
    sget-object v5, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 122
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "processInfo$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 123
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_2

    .line 124
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "processInfo$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isEmClient(III)Z
    .locals 5
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, "ret":Z
    const-string/jumbo v0, ""

    .line 141
    .local v0, "pkgName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const/4 v1, 0x1

    .line 145
    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EMClient : PackageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return v1

    .line 147
    :cond_0
    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No Permission : PackageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], MODE = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEmService(II)Z
    .locals 5
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, "ret":Z
    const-string/jumbo v0, ""

    .line 158
    .local v0, "pkgName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmService(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const/4 v1, 0x1

    .line 166
    :goto_0
    return v1

    .line 163
    :cond_0
    const-string/jumbo v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No Permission : PackageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native nativeGetId()[B
.end method

.method private native nativeGetNumOfModes()I
.end method

.method private native nativeGetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeGetRequestMsg(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeGetStatus(I)I
.end method

.method private native nativeInstallToken([B)I
.end method

.method private native nativeIsTokenInstalled()I
.end method

.method private native nativeRemoveToken()I
.end method

.method private native nativeSendFuseCmd()I
.end method

.method private registerClients()V
    .locals 9

    .prologue
    .line 85
    :try_start_0
    new-instance v3, Lcom/android/server/EngineeringModeService$EMApplication;

    const-string/jumbo v7, "com.sec.android.app.emservice"

    const/16 v8, 0x3e8

    invoke-direct {v3, p0, v7, v8}, Lcom/android/server/EngineeringModeService$EMApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    .line 86
    .local v3, "emservice":Lcom/android/server/EngineeringModeService$EMApplication;
    iget-object v7, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v7, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    .line 88
    new-instance v6, Lcom/android/server/EngineeringModeService$EMSystemServer;

    const-string/jumbo v7, "system_server"

    const/16 v8, 0x3e8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/server/EngineeringModeService$EMSystemServer;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    .line 89
    .local v6, "systemServer":Lcom/android/server/EngineeringModeService$EMSystemServer;
    iget-object v7, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v7, v6}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    .line 91
    new-instance v0, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v7, "com.samsung.android.MtpApplication"

    const/16 v8, 0x3e8

    invoke-direct {v0, p0, v7, v8}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    .line 92
    .local v0, "MtpApplication":Lcom/android/server/EngineeringModeService$SystemApplication;
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    .line 93
    iget-object v7, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v7, v0}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    .line 95
    new-instance v1, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v7, "com.sec.bcservice"

    const/16 v8, 0x3e8

    invoke-direct {v1, p0, v7, v8}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    .line 96
    .local v1, "bcservice":Lcom/android/server/EngineeringModeService$SystemApplication;
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    .line 97
    iget-object v7, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v7, v1}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    .line 99
    new-instance v5, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string/jumbo v7, "com.sec.keystringscreen"

    invoke-direct {v5, p0, v7}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    .line 100
    .local v5, "keystringscreen":Lcom/android/server/EngineeringModeService$PlatformApplication;
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    .line 101
    iget-object v7, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v7, v5}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    .line 103
    new-instance v4, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string/jumbo v7, "com.samsung.toolkit.ga_settingapplication"

    const/16 v8, 0x3e8

    invoke-direct {v4, p0, v7, v8}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    .line 104
    .local v4, "ga_settingapplication":Lcom/android/server/EngineeringModeService$SystemApplication;
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    .line 105
    iget-object v7, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v7, v4}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "MtpApplication":Lcom/android/server/EngineeringModeService$SystemApplication;
    .end local v1    # "bcservice":Lcom/android/server/EngineeringModeService$SystemApplication;
    .end local v3    # "emservice":Lcom/android/server/EngineeringModeService$EMApplication;
    .end local v4    # "ga_settingapplication":Lcom/android/server/EngineeringModeService$SystemApplication;
    .end local v5    # "keystringscreen":Lcom/android/server/EngineeringModeService$PlatformApplication;
    .end local v6    # "systemServer":Lcom/android/server/EngineeringModeService$EMSystemServer;
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getID()[B
    .locals 2

    .prologue
    .line 223
    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "getID() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    sget-object v0, Lcom/android/server/EngineeringModeService;->ERRORBYTE_NO_PERMISSION:[B

    return-object v0

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeGetId()[B

    move-result-object v0

    return-object v0
.end method

.method public getNumOfModes()I
    .locals 2

    .prologue
    .line 233
    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "getNumOfModes() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const/16 v0, -0x514

    return v0

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeGetNumOfModes()I

    move-result v0

    return v0
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 7
    .param p1, "singleID"    # Ljava/lang/String;
    .param p2, "OTP"    # Ljava/lang/String;
    .param p3, "modeSet"    # [B
    .param p4, "validityCount"    # I

    .prologue
    .line 181
    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "getRequestMsg() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lcom/android/server/EngineeringModeService;->ERRORBYTE_NO_PERMISSION:[B

    return-object v0

    .line 185
    :cond_0
    sget-object v0, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/android/server/EngineeringModeDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getModelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mModel:Ljava/lang/String;

    .line 186
    sget-object v0, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/android/server/EngineeringModeDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mImei:Ljava/lang/String;

    .line 188
    iget-object v5, p0, Lcom/android/server/EngineeringModeService;->mModel:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/EngineeringModeService;->mImei:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/EngineeringModeService;->nativeGetRequestMsg(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getStatus(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 171
    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "getStatus() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/EngineeringModeService;->isEmClient(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const/16 v0, -0x514

    return v0

    .line 176
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeGetStatus(I)I

    move-result v0

    return v0
.end method

.method public installToken([B)I
    .locals 2
    .param p1, "token"    # [B

    .prologue
    .line 193
    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "installToken() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const/16 v0, -0x514

    return v0

    .line 198
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeInstallToken([B)I

    move-result v0

    return v0
.end method

.method public isTokenInstalled()I
    .locals 2

    .prologue
    .line 203
    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "isTokenInstalled() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const/16 v0, -0x514

    return v0

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeIsTokenInstalled()I

    move-result v0

    return v0
.end method

.method public removeToken()I
    .locals 2

    .prologue
    .line 213
    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "removeToken() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    const/16 v0, -0x514

    return v0

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeRemoveToken()I

    move-result v0

    return v0
.end method

.method public sendFuseCmd()I
    .locals 2

    .prologue
    .line 243
    const-string/jumbo v0, "EngineeringModeService"

    const-string/jumbo v1, "sendFuseCmd() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const/16 v0, -0x514

    return v0

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeSendFuseCmd()I

    move-result v0

    return v0
.end method
