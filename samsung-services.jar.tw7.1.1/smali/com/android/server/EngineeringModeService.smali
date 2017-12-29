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

.field private static final MODE_CUST_KERNEL:I = 0x3

.field private static final MODE_DEBUG_LOG:I = 0x2

.field private static final MODE_ENG_KERNEL:I = 0x0

.field private static final MODE_KNOX_TEST:I = 0x4

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
    .line 79
    const-string v0, "engmode"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;-><init>()V

    .line 96
    sput-object p1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-direct {v0, p0}, Lcom/android/server/EngineeringModeService$EMClientList;-><init>(Lcom/android/server/EngineeringModeService;)V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    .line 100
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->registerClients()V

    .line 94
    return-void
.end method

.method private getPackageName(I)Ljava/lang/String;
    .locals 8
    .param p1, "callingPid"    # I

    .prologue
    .line 145
    const-string v1, "Unknown"

    .line 149
    .local v1, "currentPkgName":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeGetProcessName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "system_server"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    const-string v1, "system_server"

    .line 176
    :cond_0
    :goto_0
    return-object v1

    .line 153
    :cond_1
    sget-object v6, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 154
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_2

    .line 155
    return-object v1

    .line 158
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 159
    .local v5, "processInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v5, :cond_3

    .line 160
    return-object v1

    .line 163
    :cond_3
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "processInfo$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 164
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v3, :cond_4

    .line 165
    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_4

    .line 166
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "processInfo$iterator":Ljava/util/Iterator;
    .end local v5    # "processInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v2

    .line 173
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
    .line 181
    const/4 v1, 0x0

    .line 183
    .local v1, "ret":Z
    const-string v0, ""

    .line 184
    .local v0, "procName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const/4 v1, 0x1

    .line 188
    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EMClient : ProcName = [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return v1

    .line 190
    :cond_0
    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Permission : ProcName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")], UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], MODE = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEmClient(Ljava/lang/String;III)Z
    .locals 6
    .param p1, "currentPkgName"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "mode"    # I

    .prologue
    .line 198
    const/4 v2, 0x0

    .line 200
    .local v2, "ret":Z
    const-string v1, ""

    .line 201
    .local v1, "procName":Ljava/lang/String;
    const-string v0, ""

    .line 203
    .local v0, "pkgName":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    move-object v0, p1

    .line 208
    :cond_0
    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, p3, v4}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    .local v2, "ret":Z
    if-eqz v2, :cond_1

    .line 209
    const-string v3, "EngineeringModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EMClient : ProcName = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return v2

    .line 210
    :cond_1
    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, p3, v4}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    const-string v3, "EngineeringModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EMClient : PacageName = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_2
    const-string v3, "EngineeringModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Permission : PackageName = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "],"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 214
    const-string v5, "ProcName = ["

    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 214
    const-string v5, "("

    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 214
    const-string v5, ")],"

    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 215
    const-string v5, "UID = ["

    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 215
    const-string v5, "], MODE = ["

    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 215
    const-string v5, "]"

    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isEmService(II)Z
    .locals 5
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 225
    .local v1, "ret":Z
    const-string v0, ""

    .line 226
    .local v0, "pkgName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmService(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    const/4 v1, 0x1

    .line 234
    :goto_0
    return v1

    .line 231
    :cond_0
    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Permission : PackageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

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
    .locals 11

    .prologue
    .line 106
    :try_start_0
    new-instance v3, Lcom/android/server/EngineeringModeService$EMApplication;

    const-string v9, "com.sec.android.app.emservice"

    const/16 v10, 0x3e8

    invoke-direct {v3, p0, v9, v10}, Lcom/android/server/EngineeringModeService$EMApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    .line 107
    .local v3, "emservice":Lcom/android/server/EngineeringModeService$EMApplication;
    iget-object v9, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v9, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    .line 109
    new-instance v8, Lcom/android/server/EngineeringModeService$EMSystemServer;

    const-string v9, "system_server"

    const/16 v10, 0x3e8

    invoke-direct {v8, p0, v9, v10}, Lcom/android/server/EngineeringModeService$EMSystemServer;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    .line 110
    .local v8, "systemServer":Lcom/android/server/EngineeringModeService$EMSystemServer;
    iget-object v9, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v9, v8}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    .line 112
    new-instance v0, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string v9, "com.samsung.android.MtpApplication"

    const/16 v10, 0x3e8

    invoke-direct {v0, p0, v9, v10}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    .line 113
    .local v0, "MtpApplication":Lcom/android/server/EngineeringModeService$SystemApplication;
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    .line 114
    iget-object v9, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v9, v0}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    .line 116
    new-instance v1, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string v9, "com.sec.bcservice"

    const/16 v10, 0x3e8

    invoke-direct {v1, p0, v9, v10}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    .line 117
    .local v1, "bcservice":Lcom/android/server/EngineeringModeService$SystemApplication;
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    .line 118
    iget-object v9, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v9, v1}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    .line 120
    new-instance v6, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string v9, "com.sec.keystringscreen"

    invoke-direct {v6, p0, v9}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    .line 121
    .local v6, "keystringscreen":Lcom/android/server/EngineeringModeService$PlatformApplication;
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    .line 122
    iget-object v9, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v9, v6}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    .line 124
    new-instance v5, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string v9, "com.samsung.toolkit.ga_settingapplication"

    const/16 v10, 0x3e8

    invoke-direct {v5, p0, v9, v10}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    .line 125
    .local v5, "ga_settingapplication":Lcom/android/server/EngineeringModeService$SystemApplication;
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    .line 126
    iget-object v9, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v9, v5}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    .line 129
    new-instance v7, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string v9, "com.sec.android.app.servicemodeapp"

    const/16 v10, 0x3e8

    invoke-direct {v7, p0, v9, v10}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    .line 130
    .local v7, "serviceModeApp_FB":Lcom/android/server/EngineeringModeService$SystemApplication;
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    .line 131
    iget-object v9, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v9, v7}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    .line 134
    new-instance v4, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string v9, "com.sdet.fotaagent"

    const/16 v10, 0x3e8

    invoke-direct {v4, p0, v9, v10}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    .line 135
    .local v4, "fotaAgentApp":Lcom/android/server/EngineeringModeService$SystemApplication;
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    .line 136
    iget-object v9, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v9, v4}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "MtpApplication":Lcom/android/server/EngineeringModeService$SystemApplication;
    .end local v1    # "bcservice":Lcom/android/server/EngineeringModeService$SystemApplication;
    .end local v3    # "emservice":Lcom/android/server/EngineeringModeService$EMApplication;
    .end local v4    # "fotaAgentApp":Lcom/android/server/EngineeringModeService$SystemApplication;
    .end local v5    # "ga_settingapplication":Lcom/android/server/EngineeringModeService$SystemApplication;
    .end local v6    # "keystringscreen":Lcom/android/server/EngineeringModeService$PlatformApplication;
    .end local v7    # "serviceModeApp_FB":Lcom/android/server/EngineeringModeService$SystemApplication;
    .end local v8    # "systemServer":Lcom/android/server/EngineeringModeService$EMSystemServer;
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getID()[B
    .locals 2

    .prologue
    .line 301
    const-string v0, "EngineeringModeService"

    const-string v1, "getID() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    sget-object v0, Lcom/android/server/EngineeringModeService;->ERRORBYTE_NO_PERMISSION:[B

    return-object v0

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeGetId()[B

    move-result-object v0

    return-object v0
.end method

.method public getNumOfModes()I
    .locals 2

    .prologue
    .line 311
    const-string v0, "EngineeringModeService"

    const-string v1, "getNumOfModes() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    const/16 v0, -0x514

    return v0

    .line 316
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
    .line 259
    const-string v0, "EngineeringModeService"

    const-string v1, "getRequestMsg() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    sget-object v0, Lcom/android/server/EngineeringModeService;->ERRORBYTE_NO_PERMISSION:[B

    return-object v0

    .line 263
    :cond_0
    sget-object v0, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/android/server/EngineeringModeDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getModelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mModel:Ljava/lang/String;

    .line 264
    sget-object v0, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/android/server/EngineeringModeDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/EngineeringModeDeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mImei:Ljava/lang/String;

    .line 266
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
    .line 239
    const-string v0, "EngineeringModeService"

    const-string v1, "getStatus() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/EngineeringModeService;->isEmClient(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    const/16 v0, -0x514

    return v0

    .line 244
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeGetStatus(I)I

    move-result v0

    return v0
.end method

.method public getStatus(ILjava/lang/String;)I
    .locals 2
    .param p1, "mode"    # I
    .param p2, "currentPkgName"    # Ljava/lang/String;

    .prologue
    .line 249
    const-string v0, "EngineeringModeService"

    const-string v1, "getStatus() is called.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/server/EngineeringModeService;->isEmClient(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const/16 v0, -0x514

    return v0

    .line 254
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeGetStatus(I)I

    move-result v0

    return v0
.end method

.method public installToken([B)I
    .locals 2
    .param p1, "token"    # [B

    .prologue
    .line 271
    const-string v0, "EngineeringModeService"

    const-string v1, "installToken() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    const/16 v0, -0x514

    return v0

    .line 276
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeInstallToken([B)I

    move-result v0

    return v0
.end method

.method public isTokenInstalled()I
    .locals 2

    .prologue
    .line 281
    const-string v0, "EngineeringModeService"

    const-string v1, "isTokenInstalled() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    const/16 v0, -0x514

    return v0

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeIsTokenInstalled()I

    move-result v0

    return v0
.end method

.method public removeToken()I
    .locals 2

    .prologue
    .line 291
    const-string v0, "EngineeringModeService"

    const-string v1, "removeToken() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const/16 v0, -0x514

    return v0

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeRemoveToken()I

    move-result v0

    return v0
.end method

.method public sendFuseCmd()I
    .locals 2

    .prologue
    .line 321
    const-string v0, "EngineeringModeService"

    const-string v1, "sendFuseCmd() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    const/16 v0, -0x514

    return v0

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeSendFuseCmd()I

    move-result v0

    return v0
.end method
