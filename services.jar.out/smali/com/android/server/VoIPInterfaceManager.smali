.class public Lcom/android/server/VoIPInterfaceManager;
.super Landroid/os/IVoIPInterface$Stub;
.source "VoIPInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;,
        Lcom/android/server/VoIPInterfaceManager$CallState;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-VoIPInterfaceManager$CallStateSwitchesValues:[I = null

.field private static final DBG:Z = true

.field private static final INVALID_INDEX:I = -0x1

.field private static final PERMISSION_VOIP_INTERFACE:Ljava/lang/String; = "com.sec.android.permission.VOIP_INTERFACE"

.field private static final TAG:Ljava/lang/String; = "VoIPInterfaceManager"


# instance fields
.field alarms:Landroid/app/AlarmManager;

.field private callTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dbg_exception:Z

.field private dbg_level:I

.field private mContext:Landroid/content/Context;

.field mDirection:I

.field mIndex:I

.field mMode:I

.field mMpty:Z

.field mNumber:Ljava/lang/String;

.field mStatus:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mType:I

.field pIntent:Landroid/app/PendingIntent;


# direct methods
.method private static synthetic -getcom-android-server-VoIPInterfaceManager$CallStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/VoIPInterfaceManager;->-com-android-server-VoIPInterfaceManager$CallStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/VoIPInterfaceManager;->-com-android-server-VoIPInterfaceManager$CallStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/VoIPInterfaceManager$CallState;->values()[Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTED:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/android/server/VoIPInterfaceManager;->-com-android-server-VoIPInterfaceManager$CallStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 397
    invoke-direct {p0}, Landroid/os/IVoIPInterface$Stub;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_level:I

    .line 66
    iput-boolean v1, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_exception:Z

    .line 73
    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mIndex:I

    .line 74
    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mDirection:I

    .line 75
    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mStatus:I

    .line 76
    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mMode:I

    .line 77
    iput-boolean v1, p0, Lcom/android/server/VoIPInterfaceManager;->mMpty:Z

    .line 78
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->mNumber:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mType:I

    .line 2062
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->alarms:Landroid/app/AlarmManager;

    .line 398
    const-string/jumbo v0, "VoIPInterfaceManager()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 400
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    .line 403
    const-string/jumbo v0, "START VOIPINTERFACE SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1717
    const-string/jumbo v1, "createTelUrl()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1718
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1719
    const/4 v1, 0x0

    return-object v1

    .line 1722
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1723
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dump_calltype_w_index(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 2108
    const-class v2, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v2

    .line 2110
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 2112
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_0

    .line 2113
    const-string/jumbo v1, "###########################"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PKG NAME     : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION NAME  : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getactionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CALL NUMBER  : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->-get0(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CALL STATE   : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->-get2(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "REMOTE NUM   : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getRemotePartyNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 2107
    return-void

    .line 2108
    .end local v0    # "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private enforceCallingPermission(Ljava/lang/String;)V
    .locals 7
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.sec.android.permission.VOIP_INTERFACE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 193
    :cond_0
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x0

    .line 198
    .local v0, "isAllowed":Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 199
    .local v3, "pid":I
    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getPackageNameByPID(I)[Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 202
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 204
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->isAllowedVoIP(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 205
    const/4 v0, 0x1

    .line 211
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_0

    .line 212
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission denied:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", you do not have voip permission."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V
    .locals 7
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "isAllowed":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.sec.android.permission.VOIP_INTERFACE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 171
    :cond_0
    const/4 v0, 0x1

    .line 165
    :cond_1
    return-void

    .line 169
    :cond_2
    iget-object v5, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    iget-object v5, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 174
    .local v3, "pid":I
    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getPackageNameByPID(I)[Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 177
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v2, v4

    .line 179
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->isAllowedVoIPGetStateOnly(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 180
    const/4 v0, 0x1

    .line 185
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_1

    .line 186
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission denied:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", you do not have voip permission."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1814
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .line 1816
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    getCallSessionInfo_w_pkgName() : Can not find session index with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1818
    const/4 v2, 0x0

    return-object v2

    .line 1821
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    getCallSessionInfo_w_pkgName() : Find session index with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1823
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1824
    .local v1, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    return-object v1
.end method

.method private getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I
    .locals 4
    .param p1, "callState"    # Lcom/android/server/VoIPInterfaceManager$CallState;

    .prologue
    const/4 v3, -0x1

    .line 1830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCallTypeIndex_w_callstate()...callState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1831
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1832
    return v3

    .line 1835
    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_2

    .line 1836
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1837
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallDialing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1839
    return v0

    .line 1836
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1843
    .end local v0    # "i":I
    :cond_2
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_4

    .line 1844
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1845
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallRinging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1847
    return v0

    .line 1844
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1851
    .end local v0    # "i":I
    :cond_4
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_6

    .line 1852
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1853
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1855
    return v0

    .line 1852
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1859
    .end local v0    # "i":I
    :cond_6
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_8

    .line 1860
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1861
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallIdle()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1863
    return v0

    .line 1860
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1867
    .end local v0    # "i":I
    :cond_8
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_a

    .line 1868
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1869
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallHold()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1871
    return v0

    .line 1868
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1876
    .end local v0    # "i":I
    :cond_a
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_c

    .line 1877
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1878
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallAlerting()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1880
    return v0

    .line 1877
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1884
    .end local v0    # "i":I
    :cond_c
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_e

    .line 1885
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1886
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallIncoming()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1888
    return v0

    .line 1885
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1892
    .end local v0    # "i":I
    :cond_e
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_10

    .line 1893
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1894
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallWaiting()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1896
    return v0

    .line 1893
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1901
    .end local v0    # "i":I
    :cond_10
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_12

    .line 1902
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1903
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallDisconnecting()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1905
    return v0

    .line 1902
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1909
    .end local v0    # "i":I
    :cond_12
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTED:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_14

    .line 1910
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1911
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallDisconnected()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1913
    return v0

    .line 1910
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1918
    .end local v0    # "i":I
    :cond_14
    return v3
.end method

.method private getCallTypeIndex_w_pkgName(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1794
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1795
    .local v1, "listSize":I
    const/4 v2, -0x1

    .line 1797
    .local v2, "matchedIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1798
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v3}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    getCallTypeIndex_w_pkgName() : Find session index with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1800
    move v2, v0

    .line 1797
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1804
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    getCallTypeIndex_w_pkgName() : Can not find session index with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1809
    :cond_2
    return v2
.end method

.method private getPackageNameByPID(I)[Ljava/lang/String;
    .locals 7
    .param p1, "pid"    # I

    .prologue
    const/4 v6, 0x0

    .line 220
    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 221
    .local v0, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 222
    .local v3, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    .line 224
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "processInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 226
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_0

    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 227
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    return-object v4

    .line 230
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "processInfo$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v6
.end method

.method private isVoIPRunningAndDeregi()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1680
    const-string/jumbo v8, "isVoIPRunningAndDeregi()..."

    invoke-direct {p0, v8}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1681
    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_0

    .line 1682
    return v9

    .line 1684
    :cond_0
    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1685
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 1687
    .local v7, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 1688
    .local v5, "packagePid":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_3

    .line 1690
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "item$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1691
    .local v2, "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_2

    .line 1692
    iget-object v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v8, v8, v1

    iget v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1694
    :cond_2
    iget-object v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1695
    iget-object v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1699
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "item$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1701
    .local v4, "listSize":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v4, :cond_5

    .line 1702
    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v8}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1703
    .local v6, "pid":Ljava/lang/Integer;
    if-nez v6, :cond_4

    .line 1704
    const-string/jumbo v8, "The session is in DB. but, process is not running.. It will be destroyed.."

    invoke-direct {p0, v8}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1701
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1712
    .end local v6    # "pid":Ljava/lang/Integer;
    :cond_5
    const/4 v8, 0x1

    return v8
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2125
    const-string/jumbo v0, "VoIPInterfaceManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    return-void
.end method

.method private log(Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "setdbg_level"    # I

    .prologue
    .line 2130
    iget v0, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_level:I

    if-ge p2, v0, :cond_0

    .line 2131
    const-string/jumbo v0, "VoIPInterfaceManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    :cond_0
    return-void
.end method

.method private notifyVoIPCallStateChangeIntoTelephony()V
    .locals 4

    .prologue
    .line 1189
    const-string/jumbo v2, "    notifyVoIPCallStateChangeIntoTelephony()...notify to BT"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1191
    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1192
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1193
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->notifyVoIPCallStateChangeIntoBT()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    notifyVoIPCallStateChangeIntoTelephony()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendVoIPBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "extraDataValue"    # Ljava/lang/String;

    .prologue
    .line 1739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendVoIPBroadcast()...pkgName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] actionName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] extraDataValue["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1740
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1741
    .local v0, "voipActivity":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1742
    :cond_0
    const-string/jumbo v1, "VOIP_ACTION"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1743
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1737
    return-void
.end method

.method private updateStatusBar(ZZ)V
    .locals 5
    .param p1, "disableExpand"    # Z
    .param p2, "disableAlerts"    # Z

    .prologue
    .line 1495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1499
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 1498
    iput-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1501
    const/4 v2, 0x0

    .line 1503
    .local v2, "state":I
    if-eqz p1, :cond_0

    .line 1504
    const/high16 v2, 0x10000

    .line 1507
    :cond_0
    if-eqz p2, :cond_1

    .line 1508
    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    .line 1511
    :cond_1
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v2}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1493
    return-void

    .line 1512
    .end local v2    # "state":I
    :catchall_0
    move-exception v3

    .line 1513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1512
    throw v3
.end method


# virtual methods
.method public answerVoIPCall()Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 555
    const-string/jumbo v3, "answerVoIPCall"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 556
    const-string/jumbo v3, "answerVoIPCall()..."

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 559
    return v4

    .line 561
    :cond_0
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    if-ne v2, v5, :cond_1

    .line 563
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 566
    :cond_1
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 568
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVoIPCallbackInterface;->answerVoIPCall()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 569
    const-string/jumbo v3, "    answerVoIPCall() : answerVoIPCall() is true in callback"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    const/4 v3, 0x1

    return v3

    .line 564
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_2
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 581
    const-string/jumbo v3, "    Can not find RINGING session"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 584
    return v4

    .line 573
    .restart local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_3
    :try_start_1
    const-string/jumbo v3, "    answerVoIPCall() : answerVoIPCall() is false in callback"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 574
    return v4

    .line 576
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/Exception;
    return v4
.end method

.method public callInVoIP(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1610
    const-string/jumbo v3, "callInVoIP"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "callInVoIP()... : number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1613
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1614
    .local v2, "url":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1615
    const-string/jumbo v3, "    callInVoIP() : url == null"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1616
    return-void

    .line 1619
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1622
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1623
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1609
    :goto_0
    return-void

    .line 1624
    :catch_0
    move-exception v0

    .line 1625
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "VoIPInterfaceManager"

    const-string/jumbo v4, "Failed to start intent activity"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public canUseBTInVoIP(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1070
    const-string/jumbo v1, "canUseBTInVoIP"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "canUseBTInVoIP()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1073
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 1075
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_0

    .line 1076
    const-string/jumbo v1, "    canUseBTInVoIP() : session != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    return v1

    .line 1080
    :cond_0
    const-string/jumbo v1, "    canUseBTInVoIP() : session == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1081
    const/4 v1, 0x0

    return v1
.end method

.method public canUseHoldInVoIP()Z
    .locals 3

    .prologue
    .line 1231
    const-string/jumbo v2, "canUseHoldInVoIP"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1232
    const-string/jumbo v2, "canUseHoldInVoIP()..."

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1236
    .end local v0    # "index":I
    :cond_0
    const-string/jumbo v2, "    canUseHoldInVoIP() : There is no valid active voip call"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1237
    const/4 v2, 0x0

    return v2

    .line 1240
    .restart local v0    # "index":I
    :cond_1
    const-string/jumbo v2, "    canUseHoldInVoIP() : session == null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1241
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1242
    .local v1, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getHoldStatus()Z

    move-result v2

    return v2
.end method

.method public convertVoIPStateToCallState(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1973
    const-string/jumbo v1, "convertVoIPStateToCallState"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1974
    const/4 v0, 0x0

    .line 1975
    .local v0, "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "convertVoIPStateToCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1976
    invoke-static {}, Lcom/android/server/VoIPInterfaceManager;->-getcom-android-server-VoIPInterfaceManager$CallStateSwitchesValues()[I

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1999
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "convertVoIPStateToCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")  state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2000
    return v0

    .line 1978
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1980
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1982
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1984
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1986
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 1988
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 1990
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 1992
    :pswitch_7
    const/4 v0, 0x6

    goto :goto_0

    .line 1994
    :pswitch_8
    const/4 v0, 0x7

    goto :goto_0

    .line 1996
    :pswitch_9
    const/16 v0, 0x8

    goto :goto_0

    .line 1976
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public createCallSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)Z
    .locals 6
    .param p1, "apkName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "voipPhoneNumber"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IVoIPCallbackInterface;

    .prologue
    const/4 v5, 0x0

    .line 425
    const-string/jumbo v3, "createCallSession"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createCallSession()... apkName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", actionName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", voipPhoneNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", cb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 428
    const/4 v1, 0x0

    .line 430
    .local v1, "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    monitor-enter p0

    .line 431
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .line 433
    .local v0, "idxCallType":I
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\t This session already exists !! delete the same session !! apkName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", idxCallType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", callTypeList.count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->getSessionCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 436
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 438
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 441
    :cond_0
    new-instance v2, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-direct {v2, p0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;-><init>(Lcom/android/server/VoIPInterfaceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    .end local v1    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .local v2, "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-nez v2, :cond_1

    .line 443
    :try_start_1
    const-string/jumbo v3, "    createCallSession() : newCallSessionInfo == null"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 444
    return v5

    .line 447
    :cond_1
    :try_start_2
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v2, v3}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 448
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)V

    .line 450
    invoke-virtual {v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isValidSessionInfo()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    const-string/jumbo v3, "    createCallSession() : newCallSessionInfo.isValidSessionInfo() is true"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 453
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .line 456
    :cond_2
    :try_start_3
    const-string/jumbo v3, "    Fail adding callSession"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 457
    return v5

    .line 430
    .end local v0    # "idxCallType":I
    .end local v2    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .restart local v1    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :catchall_0
    move-exception v3

    .end local v1    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :goto_1
    monitor-exit p0

    throw v3

    .restart local v0    # "idxCallType":I
    .restart local v2    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .local v1, "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    goto :goto_1
.end method

.method public destroyCallSession(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string/jumbo v1, "destroyCallSession"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 470
    const-string/jumbo v1, "destroyCallSession()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 473
    monitor-enter p0

    .line 474
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .line 476
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 477
    const-string/jumbo v1, "    destroyCallSession() : Invalid packageName. Please check the package.."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 481
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    destroyCallSession() : find session with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "index value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 473
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public disableStatusBarforVoIP()V
    .locals 2

    .prologue
    .line 1518
    const-string/jumbo v0, "disableStatusBarforVoIP"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1520
    const-string/jumbo v0, "disableStatusBarforVoIP()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1521
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/VoIPInterfaceManager;->updateStatusBar(ZZ)V

    .line 1517
    return-void
.end method

.method public dumpCallSessionInfoDB(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1642
    const-string/jumbo v2, "dumpCallSessionInfoDB"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SESSION DB SIZE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1645
    if-nez p1, :cond_0

    .line 1646
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1647
    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->dump_calltype_w_index(I)V

    .line 1646
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1651
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v1

    .line 1652
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1653
    return-void

    .line 1656
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->dump_calltype_w_index(I)V

    .line 1641
    .end local v1    # "index":I
    :cond_2
    return-void
.end method

.method public existValidCall()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1728
    const-string/jumbo v0, "existValidCall"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1729
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1730
    const-string/jumbo v0, "Not exist call session"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1731
    return v1

    .line 1733
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "existValidCall()... callTypeList.size() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1734
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 407
    const-string/jumbo v0, "finalize()... "

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 411
    invoke-super {p0}, Landroid/os/IVoIPInterface$Stub;->finalize()V

    .line 406
    return-void
.end method

.method public getActiveCallIndex()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2004
    const-string/jumbo v1, "getActiveCallIndex"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2008
    return v3

    .line 2010
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2011
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v2, :cond_1

    .line 2012
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v2, :cond_2

    .line 2018
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getActiveCallIndex() ActiveCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2019
    return v0

    .line 2013
    :cond_2
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v2, :cond_1

    .line 2014
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v2, :cond_1

    .line 2015
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v2, :cond_1

    .line 2016
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v2, :cond_1

    .line 2017
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v2, :cond_1

    .line 2010
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2022
    :cond_3
    const-string/jumbo v1, "getActiveCallIndex() return  INVALID_INDEX "

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2023
    return v3
.end method

.method public getActiveFgCallState()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1922
    const-string/jumbo v1, "getActiveFgCallState"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1923
    const-string/jumbo v1, "getActiveFgCallState()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1925
    return v3

    .line 1928
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1929
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v2, :cond_1

    .line 1930
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v2, :cond_2

    .line 1932
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ActiveCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1933
    invoke-virtual {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->convertVoIPStateToCallState(I)I

    move-result v1

    return v1

    .line 1931
    :cond_2
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v2, :cond_1

    .line 1928
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1936
    :cond_3
    return v3
.end method

.method public getCallSessionInfo(I)Z
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1747
    const-string/jumbo v1, "getCallSessionInfo"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1748
    const-string/jumbo v1, "VoIPInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCallSessionInfo is called. Index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", callTypeList.size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v4, p1, 0x1

    if-ge v1, v4, :cond_0

    .line 1750
    return v2

    .line 1752
    :cond_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1753
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    const-string/jumbo v1, "VoIPInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCall("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mIndex:I

    .line 1756
    invoke-static {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->-get1(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mDirection:I

    .line 1757
    invoke-virtual {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->convertVoIPStateToCallState(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mStatus:I

    .line 1758
    iput v2, p0, Lcom/android/server/VoIPInterfaceManager;->mMode:I

    .line 1759
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/VoIPInterfaceManager;->mMpty:Z

    .line 1760
    invoke-static {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->-get3(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->mNumber:Ljava/lang/String;

    .line 1761
    const/16 v1, 0x81

    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mType:I

    .line 1763
    const-string/jumbo v1, "VoIPInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIndex : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/VoIPInterfaceManager;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", mDirection : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/VoIPInterfaceManager;->mDirection:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", mStatus : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/VoIPInterfaceManager;->mStatus:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", mMpty : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/VoIPInterfaceManager;->mMpty:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", mNumber : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", mType : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/VoIPInterfaceManager;->mType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    return v3

    :cond_2
    move v1, v3

    .line 1756
    goto :goto_0
.end method

.method public getCurrentRemoteCallNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1569
    const-string/jumbo v2, "getCurrentRemoteCallNumber"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1570
    const-string/jumbo v2, "getCurrentRemoteCallNumber()..."

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1573
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1574
    return-object v4

    .line 1577
    :cond_0
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    .local v1, "index":I
    if-eq v1, v3, :cond_2

    .line 1598
    :cond_1
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1599
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    Return remote party number for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getRemotePartyNumber()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1580
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_2
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1582
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1584
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1587
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1589
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1591
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1594
    const-string/jumbo v2, "    Call with IDLE voip state or DISCONNECT voip state"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1595
    return-object v4
.end method

.method public getCurrentVoIPNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1538
    const-string/jumbo v2, "getCurrentVoIPNumber"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1539
    const-string/jumbo v2, "getCurrentVoIPNumber()..."

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1543
    return-object v4

    .line 1546
    :cond_0
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    .local v1, "index":I
    if-eq v1, v3, :cond_2

    .line 1557
    :cond_1
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1558
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    Return voip number for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1560
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getRegisteredCallNumber()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1549
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_2
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1553
    const-string/jumbo v2, "    No call with ACTIVE voip state or HOLDING voip state"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1554
    return-object v4
.end method

.method public getDirectionForClcc()I
    .locals 1

    .prologue
    .line 1773
    const-string/jumbo v0, "getDirectionForClcc"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1774
    iget v0, p0, Lcom/android/server/VoIPInterfaceManager;->mDirection:I

    return v0
.end method

.method public getFirstActiveBgCallState()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1939
    const-string/jumbo v1, "getFirstActiveBgCallState"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1940
    const-string/jumbo v1, "getFirstActiveBgCallState()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1941
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1942
    return v3

    .line 1945
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1946
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v2, :cond_1

    .line 1947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HodingCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1948
    invoke-virtual {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->convertVoIPStateToCallState(I)I

    move-result v1

    return v1

    .line 1945
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1951
    :cond_2
    return v3
.end method

.method public getFirstActiveRingingCallState()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1955
    const-string/jumbo v1, "getFirstActiveRingingCallState"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1956
    const-string/jumbo v1, "getFirstActiveRingingCallState()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1957
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1958
    return v3

    .line 1961
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1962
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v2, :cond_1

    .line 1963
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v2, :cond_2

    .line 1965
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RingingCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->convertVoIPStateToCallState(I)I

    move-result v1

    return v1

    .line 1964
    :cond_2
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v2, :cond_1

    .line 1961
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1969
    :cond_3
    return v3
.end method

.method public getIndexForClcc()I
    .locals 1

    .prologue
    .line 1768
    const-string/jumbo v0, "getIndexForClcc"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1769
    iget v0, p0, Lcom/android/server/VoIPInterfaceManager;->mIndex:I

    return v0
.end method

.method public getMptyForClcc()Z
    .locals 1

    .prologue
    .line 1783
    const-string/jumbo v0, "getMptyForClcc"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1784
    iget-boolean v0, p0, Lcom/android/server/VoIPInterfaceManager;->mMpty:Z

    return v0
.end method

.method public getNumberForClcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1788
    const-string/jumbo v0, "getNumberForClcc"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1789
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionCount()I
    .locals 1

    .prologue
    .line 1636
    const-string/jumbo v0, "getSessionCount"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1637
    const-string/jumbo v0, "getSessionCount()... "

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1638
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 5

    .prologue
    .line 2027
    const-string/jumbo v3, "getState"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 2028
    const-string/jumbo v3, "getState()..."

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2030
    const/4 v2, 0x0

    .line 2033
    .local v2, "state":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->getActiveCallIndex()I

    move-result v1

    .line 2034
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 2035
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getState get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v3}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "index value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2036
    invoke-virtual {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->convertVoIPStateToCallState(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2044
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return v2

    .line 2040
    :catch_0
    move-exception v0

    .line 2041
    .local v0, "NPE":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "NullPointerException occurred"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2042
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->dumpCallSessionInfoDB(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStatusForClcc()I
    .locals 1

    .prologue
    .line 1778
    const-string/jumbo v0, "getStatusForClcc"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1779
    iget v0, p0, Lcom/android/server/VoIPInterfaceManager;->mStatus:I

    return v0
.end method

.method public getVoIPCallCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 764
    const-string/jumbo v1, "getVoIPCallCount"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 765
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 767
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_0

    .line 768
    const-string/jumbo v1, "    getVoIPCallCount() : temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCallCountInThisSession()I

    move-result v1

    return v1

    .line 772
    :cond_0
    const-string/jumbo v1, "    getVoIPCallCount() : temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 773
    const/4 v1, 0x0

    return v1
.end method

.method public getVoIPInCallAlert()Z
    .locals 3

    .prologue
    .line 543
    const-string/jumbo v1, "getVoIPInCallAlert"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 544
    const-string/jumbo v1, "getVoIPInCallAlert()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 546
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "pref_voip_alert_on_call"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public hangupVoIPCall()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 593
    const-string/jumbo v3, "hangupVoIPCall"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 594
    const-string/jumbo v3, "hangupVoIPCall()..."

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 598
    return v5

    .line 600
    :cond_0
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    if-ne v2, v4, :cond_1

    .line 601
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 610
    :cond_1
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 612
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVoIPCallbackInterface;->hangupVoIPCall()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 613
    const-string/jumbo v3, "    hangupVoIPCall() : hangupVoIPCall() is true in callback"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    const/4 v3, 0x1

    return v3

    .line 603
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_2
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 604
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 605
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 606
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 608
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 625
    const-string/jumbo v3, "    Can not find DIALING/RINGING/ACTIVE  session"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 628
    return v5

    .line 617
    .restart local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_3
    :try_start_1
    const-string/jumbo v3, "    hangupVoIPCall() : hangupVoIPCall() is false in callback"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 618
    return v5

    .line 620
    :catch_0
    move-exception v1

    .line 621
    .local v1, "e":Ljava/lang/Exception;
    return v5
.end method

.method public holdVoIPCall()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 637
    const-string/jumbo v3, "holdVoIPCall"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 638
    const-string/jumbo v3, "holdVoIPCall()..."

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 642
    return v4

    .line 644
    :cond_0
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 645
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 647
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVoIPCallbackInterface;->holdVoIPCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 648
    const-string/jumbo v3, "    holdVoIPCall() : holdVoIPCall() is true in callback"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 649
    const/4 v3, 0x1

    return v3

    .line 652
    :cond_1
    const-string/jumbo v3, "    holdVoIPCall() : holdVoIPCall() is false in callback"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    return v4

    .line 655
    :catch_0
    move-exception v1

    .line 656
    .local v1, "e":Ljava/lang/Exception;
    return v4

    .line 660
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v3, "    Can not find ACTIVE session"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 663
    return v4
.end method

.method protected isAllowedVoIP(Ljava/lang/String;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 86
    const/4 v5, 0x0

    .line 88
    .local v5, "signatureMatch":Z
    const-string/jumbo v8, "com.amc.ui"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 89
    return v5

    .line 90
    :cond_0
    const-string/jumbo v8, "eng"

    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 91
    return v10

    .line 94
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 95
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 96
    .local v6, "signatures":[Landroid/content/pm/Signature;
    if-eqz v6, :cond_4

    .line 97
    const/4 v8, 0x2

    new-array v0, v8, [Landroid/content/pm/Signature;

    .line 98
    new-instance v8, Landroid/content/pm/Signature;

    .line 99
    const-string/jumbo v9, "308201e53082014ea00302010202044c297bf2300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3130303632393034353230325a170d3131303632393034353230325a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100daa631a08a8f795410f717537bd9da66082ffc0a80c573683f38ca6e88b23df1789f85cc0665592ea84c669ba55ca6e327555882d24639da94e9a3168f8a6959d1bf937b8d471788917aa069fab9a5152cb9ab4ba6750abbc1b13b3a225a65c021dd8bf2cf2fd3cc1a097a3c227fcb6373899bb7267b05d42a05fcdcb5e6e24b0203010001300d06092a864886f70d010105050003818100749f8d27bad3d4837a029ae828bae9ff1deea50d04a4f5067da5bbe492a25c16eea7ee84a713bc81c853c77018ea10912a5d8d1b439f78563302c9b815cabd1f29bd9cceb0fdb64ac4b74c338200641597ee0abad0fc3183a4c69378a39ab070c4ae050d643268980e1ae3639e28a006d7290437af90741e87e363e31e9fccbd"

    .line 98
    invoke-direct {v8, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    aput-object v8, v0, v9

    .line 100
    new-instance v8, Landroid/content/pm/Signature;

    .line 101
    const-string/jumbo v9, "308201cf30820138a00302010202044e0bbe87300d06092a864886f70d0101050500302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f4950301e170d3131303633303030303833395a170d3431303632323030303833395a302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f495030819f300d06092a864886f70d010101050003818d0030818902818100c868e260bdeba63fde4630a72a7a7f4a7c9663ba6b28c182530fc807d3e7d0a9f1a9d5f83e05a4092ab8ae4b9b469f4fb7f9ea1c2dc0eeba09aae2c93bdd94f4665d3644639622bba583df2b44ad54d69ce5c7398338ad517cc3e6c3a8849a567131925475dd3db485b820920a2e2c690e780cfee2370eba462299c2a9e6d5990203010001300d06092a864886f70d010105050003818100b7972a1043f0ca6e7f6a62a48f785aaa56ca6b4533c11b4fdf0211855cc54174b088a287c399c2384bdfa95db476626f2d201e7a756c6d8e3cc98690a89379058c1c389096500a3a0945fce341d5188f70c2ef0e14f1aa7dfbeee888d8e30c2cdbc8870005490dbae4459170df512b4ee55f61f4e5299359b1bc54a0cb077387"

    .line 100
    invoke-direct {v8, v9}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    aput-object v8, v0, v9

    .line 103
    .local v0, "SIGNATURES":[Landroid/content/pm/Signature;
    array-length v8, v6

    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v4, v6, v7

    .line 104
    .local v4, "signature":Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v9, v0

    if-ge v2, v9, :cond_2

    .line 105
    aget-object v9, v0, v2

    invoke-virtual {v9, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_3

    .line 106
    const/4 v5, 0x1

    .line 103
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 104
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    .end local v0    # "SIGNATURES":[Landroid/content/pm/Signature;
    .end local v2    # "i":I
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "signature":Landroid/content/pm/Signature;
    .end local v6    # "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    .line 116
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    return v5
.end method

.method protected isAllowedVoIPGetStateOnly(Ljava/lang/String;)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 123
    const/4 v4, 0x0

    .line 126
    .local v4, "isAllowed":Z
    :try_start_0
    iget-object v9, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0xc0

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 127
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 129
    .local v7, "signatures":[Landroid/content/pm/Signature;
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 132
    .local v1, "appInfos":Landroid/content/pm/ApplicationInfo;
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    .line 133
    const/4 v4, 0x1

    .line 158
    .end local v1    # "appInfos":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "signatures":[Landroid/content/pm/Signature;
    :cond_0
    :goto_0
    return v4

    .line 135
    .restart local v1    # "appInfos":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "signatures":[Landroid/content/pm/Signature;
    :cond_1
    const-string/jumbo v9, "com.amc.ui"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v7, :cond_0

    .line 136
    const-string/jumbo v9, "eng"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 137
    return v11

    .line 139
    :cond_2
    const/4 v9, 0x2

    new-array v0, v9, [Landroid/content/pm/Signature;

    .line 140
    new-instance v9, Landroid/content/pm/Signature;

    .line 141
    const-string/jumbo v10, "308201e53082014ea00302010202044c297bf2300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3130303632393034353230325a170d3131303632393034353230325a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100daa631a08a8f795410f717537bd9da66082ffc0a80c573683f38ca6e88b23df1789f85cc0665592ea84c669ba55ca6e327555882d24639da94e9a3168f8a6959d1bf937b8d471788917aa069fab9a5152cb9ab4ba6750abbc1b13b3a225a65c021dd8bf2cf2fd3cc1a097a3c227fcb6373899bb7267b05d42a05fcdcb5e6e24b0203010001300d06092a864886f70d010105050003818100749f8d27bad3d4837a029ae828bae9ff1deea50d04a4f5067da5bbe492a25c16eea7ee84a713bc81c853c77018ea10912a5d8d1b439f78563302c9b815cabd1f29bd9cceb0fdb64ac4b74c338200641597ee0abad0fc3183a4c69378a39ab070c4ae050d643268980e1ae3639e28a006d7290437af90741e87e363e31e9fccbd"

    .line 140
    invoke-direct {v9, v10}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    aput-object v9, v0, v10

    .line 142
    new-instance v9, Landroid/content/pm/Signature;

    .line 143
    const-string/jumbo v10, "308201cf30820138a00302010202044e0bbe87300d06092a864886f70d0101050500302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f4950301e170d3131303633303030303833395a170d3431303632323030303833395a302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f495030819f300d06092a864886f70d010101050003818d0030818902818100c868e260bdeba63fde4630a72a7a7f4a7c9663ba6b28c182530fc807d3e7d0a9f1a9d5f83e05a4092ab8ae4b9b469f4fb7f9ea1c2dc0eeba09aae2c93bdd94f4665d3644639622bba583df2b44ad54d69ce5c7398338ad517cc3e6c3a8849a567131925475dd3db485b820920a2e2c690e780cfee2370eba462299c2a9e6d5990203010001300d06092a864886f70d010105050003818100b7972a1043f0ca6e7f6a62a48f785aaa56ca6b4533c11b4fdf0211855cc54174b088a287c399c2384bdfa95db476626f2d201e7a756c6d8e3cc98690a89379058c1c389096500a3a0945fce341d5188f70c2ef0e14f1aa7dfbeee888d8e30c2cdbc8870005490dbae4459170df512b4ee55f61f4e5299359b1bc54a0cb077387"

    .line 142
    invoke-direct {v9, v10}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    aput-object v9, v0, v10

    .line 145
    .local v0, "SIGNATURES":[Landroid/content/pm/Signature;
    array-length v9, v7

    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v6, v7, v8

    .line 146
    .local v6, "signature":Landroid/content/pm/Signature;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v10, v0

    if-ge v3, v10, :cond_3

    .line 147
    aget-object v10, v0, v3

    invoke-virtual {v10, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    .line 148
    const/4 v4, 0x1

    .line 145
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 146
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 155
    .end local v0    # "SIGNATURES":[Landroid/content/pm/Signature;
    .end local v1    # "appInfos":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "signature":Landroid/content/pm/Signature;
    .end local v7    # "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isDualBTConnection()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1114
    const-string/jumbo v2, "isDualBTConnection"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1115
    const-string/jumbo v2, "isDualBTConnection()... :  = "

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1117
    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1118
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1119
    const-string/jumbo v2, "    idDualBTConnection(): ITelephony != null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1120
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDualBTConnection()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1122
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "e":Landroid/os/RemoteException;
    return v3

    .line 1126
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    return v3
.end method

.method public isIncoming()Z
    .locals 4

    .prologue
    .line 2047
    const-string/jumbo v2, "isIncoming"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 2048
    const-string/jumbo v2, "isIncoming()..."

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->getActiveCallIndex()I

    move-result v1

    .line 2052
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2053
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 2054
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isIncoming get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2055
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getDirection()Z

    move-result v2

    return v2

    .line 2057
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isVoIPActivated()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1477
    const-string/jumbo v0, "isVoIPActivated"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1478
    const-string/jumbo v0, "isVoIPActivated()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1479
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1481
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1482
    return v2

    .line 1484
    :cond_0
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1485
    const/4 v0, 0x1

    return v0

    .line 1488
    :cond_1
    const-string/jumbo v0, "    Can not find the session with ACTIVE state"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1489
    return v2
.end method

.method public isVoIPAlerting()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1385
    const-string/jumbo v0, "isVoIPAlerting"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1386
    const-string/jumbo v0, "isVoIPDisconnecting()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1387
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1389
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1390
    return v2

    .line 1393
    :cond_0
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1394
    const/4 v0, 0x1

    return v0

    .line 1397
    :cond_1
    const-string/jumbo v0, "    Can not find the session with ALERTING state"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1398
    return v2
.end method

.method public isVoIPDialing()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1339
    const-string/jumbo v0, "isVoIPDialing"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1340
    const-string/jumbo v0, "isVoIPDialing()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1341
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1343
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1344
    return v2

    .line 1346
    :cond_0
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1347
    const/4 v0, 0x1

    return v0

    .line 1350
    :cond_1
    const-string/jumbo v0, "    Can not find the session with DIALING state"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1351
    return v2
.end method

.method public isVoIPDisconnecting()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1454
    const-string/jumbo v0, "isVoIPDisconnecting"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1455
    const-string/jumbo v0, "isVoIPDisconnecting()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1456
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1458
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1459
    return v2

    .line 1462
    :cond_0
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1463
    const/4 v0, 0x1

    return v0

    .line 1466
    :cond_1
    const-string/jumbo v0, "    Can not find the session with DISCONNECTING state"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1467
    return v2
.end method

.method public isVoIPHolding()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1361
    const-string/jumbo v0, "isVoIPHolding"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1362
    const-string/jumbo v0, "isVoIPHolding()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1363
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1365
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1366
    return v2

    .line 1369
    :cond_0
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1370
    const/4 v0, 0x1

    return v0

    .line 1373
    :cond_1
    const-string/jumbo v0, "    Can not find the session with HOLDING state"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1374
    return v2
.end method

.method public isVoIPIdle()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1252
    const-string/jumbo v0, "isVoIPIdle"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1253
    const-string/jumbo v0, "isVoIPIdle()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1254
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1256
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1257
    const-string/jumbo v0, "    isVoIPIdle() : No session in db "

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1258
    return v3

    .line 1261
    :cond_0
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1262
    return v2

    .line 1264
    :cond_1
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 1265
    return v2

    .line 1267
    :cond_2
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 1268
    return v2

    .line 1270
    :cond_3
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 1271
    return v2

    .line 1274
    :cond_4
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 1275
    return v2

    .line 1277
    :cond_5
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 1278
    return v2

    .line 1280
    :cond_6
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 1281
    return v2

    .line 1284
    :cond_7
    return v3
.end method

.method public isVoIPIncoming()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1408
    const-string/jumbo v0, "isVoIPIncoming"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1409
    const-string/jumbo v0, "isVoIPDisconnecting()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1410
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1412
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1413
    return v2

    .line 1416
    :cond_0
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1417
    const/4 v0, 0x1

    return v0

    .line 1420
    :cond_1
    const-string/jumbo v0, "    Can not find the session with INCOMING state"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1421
    return v2
.end method

.method public isVoIPRingOrDialing()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1293
    const-string/jumbo v0, "isVoIPRingOrDialing"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1294
    const-string/jumbo v0, "isVoIPRingOrDialing()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1296
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1298
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1299
    return v2

    .line 1301
    :cond_0
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1302
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 1303
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1305
    :cond_2
    const-string/jumbo v0, "    Can not find the session with RINGING or DIALING state"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1306
    return v2
.end method

.method public isVoIPRinging()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1316
    const-string/jumbo v0, "isVoIPRinging"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1317
    const-string/jumbo v0, "isVoIPRinging()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1318
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1320
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    return v2

    .line 1324
    :cond_0
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1325
    const/4 v0, 0x1

    return v0

    .line 1328
    :cond_1
    const-string/jumbo v0, "    Can not find the session with RINGING state"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1329
    return v2
.end method

.method public isVoIPWaiting()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1431
    const-string/jumbo v0, "isVoIPWaiting"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1432
    const-string/jumbo v0, "isVoIPDisconnecting()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1433
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1435
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1436
    return v2

    .line 1439
    :cond_0
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1440
    const/4 v0, 0x1

    return v0

    .line 1443
    :cond_1
    const-string/jumbo v0, "    Can not find the session with WAITING state"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1444
    return v2
.end method

.method public moveVoIPToTop()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 494
    const-string/jumbo v3, "moveVoIPToTop"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 495
    const-string/jumbo v3, "moveVoIPToTop()..."

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 500
    return v5

    .line 502
    :cond_0
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    if-ne v2, v4, :cond_1

    .line 503
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 509
    :cond_1
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 512
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVoIPCallbackInterface;->moveVoIPToTop()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 513
    const-string/jumbo v3, "    moveVoIPToTop() : moveVoIPToTop() is true in callback"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    const/4 v3, 0x1

    return v3

    .line 505
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_2
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 507
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 525
    const-string/jumbo v3, "    Can not find DIALING/RINGING/ACTIVE  session"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 528
    const-string/jumbo v3, ""

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 529
    return v5

    .line 517
    .restart local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_3
    :try_start_1
    const-string/jumbo v3, "    moveVoIPToTop() : moveVoIPToTop() is false in callback"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 518
    return v5

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    return v5
.end method

.method public muteVoIPCall()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 707
    const-string/jumbo v3, "muteVoIPCall"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 708
    const-string/jumbo v3, "muteVoIPCall()..."

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 711
    return v4

    .line 713
    :cond_0
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 714
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 716
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVoIPCallbackInterface;->muteVoIPCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 717
    const-string/jumbo v3, "    muteVoIPCall() : muteVoIPCall() is true in callback"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 718
    const/4 v3, 0x1

    return v3

    .line 721
    :cond_1
    const-string/jumbo v3, "    muteVoIPCall() : muteVoIPCall() is false in callback"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    return v4

    .line 724
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    return v4

    .line 729
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v3, "    Can not find holding session"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 732
    return v4
.end method

.method public notifyCallStateforVoIP(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1167
    const-string/jumbo v4, "notifyCallStateforVoIP"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1168
    const-string/jumbo v4, "notifyCallStateforVoIP()... :  = "

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1169
    const-string/jumbo v4, "telephony.registry"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    .line 1171
    .local v1, "mRegistry":Lcom/android/internal/telephony/ITelephonyRegistry;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1173
    .local v2, "ident":J
    if-eqz v1, :cond_0

    .line 1174
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1166
    :goto_0
    return-void

    .line 1175
    :catch_0
    move-exception v0

    .line 1177
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1176
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1177
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1176
    throw v4
.end method

.method public notifyMissedCallforVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "date"    # J

    .prologue
    .line 1152
    const-string/jumbo v1, "notifyMissedCallforVoIP"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1153
    const-string/jumbo v1, "notifyMissedCallforVoIP()... :  = "

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1154
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1156
    .local v0, "mTel":Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "ident":J
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1158
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1151
    :goto_0
    return-void

    .line 1159
    :catch_0
    move-exception v6

    .line 1161
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1160
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 1161
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1160
    throw v1
.end method

.method public reenableStatusBarforVoIP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1525
    const-string/jumbo v0, "reenableStatusBarforVoIP"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1527
    const-string/jumbo v0, "reenableStatusBarforVoIP()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1528
    invoke-direct {p0, v1, v1}, Lcom/android/server/VoIPInterfaceManager;->updateStatusBar(ZZ)V

    .line 1524
    return-void
.end method

.method public resetVoIPCheckBC()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2099
    const-string/jumbo v0, "resetVoIPCheckBC"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 2100
    const-string/jumbo v0, "resetVoIPCheckBC()"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2101
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->pIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->alarms:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->pIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2103
    iput-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->pIntent:Landroid/app/PendingIntent;

    .line 2098
    :cond_0
    return-void
.end method

.method public resumeVoIPCall()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 672
    const-string/jumbo v3, "resumeVoIPCall"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 673
    const-string/jumbo v3, "resumeVoIPCall()..."

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 676
    return v4

    .line 678
    :cond_0
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 679
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 681
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVoIPCallbackInterface;->resumeVoIPCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 682
    const-string/jumbo v3, "    resumeVoIPCall() : resumeVoIPCall() is true in callback"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 683
    const/4 v3, 0x1

    return v3

    .line 686
    :cond_1
    const-string/jumbo v3, "    resumeVoIPCall() : resumeVoIPCall() is false in callback"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    return v4

    .line 689
    :catch_0
    move-exception v1

    .line 690
    .local v1, "e":Ljava/lang/Exception;
    return v4

    .line 694
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v3, "    Can not find holding session"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 697
    return v4
.end method

.method public setBTUserWantsAudioOn(Z)Z
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 1092
    const-string/jumbo v2, "setBTUserWantsAudioOn"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBTUserWantsAudioOn()... : audion on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1095
    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1096
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1097
    const-string/jumbo v2, "    setBTUserWantsAudioOn(): ITelephony != null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1098
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setBTUserWantsAudioOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 1100
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public setBTUserWantsSwitchAudio()Z
    .locals 3

    .prologue
    .line 1136
    const-string/jumbo v2, "setBTUserWantsSwitchAudio"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1137
    const-string/jumbo v2, "setBTUserWantsSwitchAudio()... :  = "

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1139
    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1140
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1141
    const-string/jumbo v2, "    idDualBTConnection(): ITelephony != null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1142
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->setBTUserWantsSwitchAudio()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 1144
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public setEngMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "hiddenkey"    # Ljava/lang/String;
    .param p2, "debugLevel"    # I

    .prologue
    const/4 v1, 0x0

    .line 1661
    const-string/jumbo v0, "setEngMode"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1662
    const-string/jumbo v0, "setEngMode()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1664
    if-nez p1, :cond_0

    .line 1665
    iput p2, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_level:I

    .line 1666
    iput-boolean v1, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_exception:Z

    .line 1660
    :goto_0
    return-void

    .line 1668
    :cond_0
    const-string/jumbo v0, "147268321478969"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1669
    const-string/jumbo v0, "    you can use debug mode"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1670
    iput p2, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_level:I

    .line 1671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_exception:Z

    goto :goto_0

    .line 1674
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_exception:Z

    goto :goto_0
.end method

.method public setUseBTInVoIP(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "btEnable"    # Z

    .prologue
    .line 1046
    const-string/jumbo v2, "setUseBTInVoIP"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUseBTInVoIP()... : pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", btEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1051
    .end local v0    # "index":I
    :cond_0
    const-string/jumbo v2, "    setUseBTInVoIP() : Can not access session db with this apk"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1052
    const/4 v2, 0x0

    return v2

    .line 1055
    .restart local v0    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1056
    .local v1, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->-set0(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1058
    const-string/jumbo v2, "    setUseBTInVoIP() : set BT flag in the session"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1059
    const/4 v2, 0x1

    return v2
.end method

.method public setUseHoldInVoIP(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "holdEnable"    # Z

    .prologue
    .line 1208
    const-string/jumbo v2, "setUseHoldInVoIP"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUseHoldInVoIP()... : pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", holdEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1213
    .end local v0    # "index":I
    :cond_0
    const-string/jumbo v2, "    setUseHoldInVoIP() : Can not access session db with this apk"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1214
    const/4 v2, 0x0

    return v2

    .line 1217
    .restart local v0    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1218
    .local v1, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->-set1(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1220
    const-string/jumbo v2, "    setUseHoldInVoIP() : set hold flag in the session"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1221
    const/4 v2, 0x1

    return v2
.end method

.method public setVoIPActive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "activatedNumber"    # Ljava/lang/String;

    .prologue
    .line 853
    const-string/jumbo v1, "setVoIPActive"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPActive()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 855
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 857
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 858
    const-string/jumbo v1, "    setVoIPActive() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 859
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 860
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 864
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 867
    :cond_1
    const-string/jumbo v1, "    setVoIPActive() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 868
    const/4 v1, 0x0

    return v1
.end method

.method public setVoIPAlerting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "alertingNumber"    # Ljava/lang/String;

    .prologue
    .line 908
    const-string/jumbo v1, "setVoIPAlerting"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPAlerting()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 910
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 912
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 913
    const-string/jumbo v1, "    setVoIPAlerting() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 914
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 915
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 919
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 922
    :cond_1
    const-string/jumbo v1, "    setVoIPAlerting() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 923
    const/4 v1, 0x0

    return v1
.end method

.method public setVoIPCallCount(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 743
    const-string/jumbo v1, "setVoIPCallCount"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 744
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 746
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_0

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    setVoIPCallCount() : temp != null, count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallCountInThisSession(I)V

    .line 749
    const/4 v1, 0x1

    return v1

    .line 752
    :cond_0
    const-string/jumbo v1, "    setVoIPCallCount() : temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 753
    const/4 v1, 0x0

    return v1
.end method

.method public setVoIPDialing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "calleeNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 825
    const-string/jumbo v1, "setVoIPDialing"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPDialing()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 827
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 829
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 830
    const-string/jumbo v1, "    setVoIPDialing() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 831
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 832
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v0, v3}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setDirection(Z)V

    .line 834
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 837
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 840
    :cond_1
    const-string/jumbo v1, "    setVoIPDialing() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 841
    return v3
.end method

.method public setVoIPDisconnected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "disconnectedNumber"    # Ljava/lang/String;

    .prologue
    .line 1019
    const-string/jumbo v1, "setVoIPDisconnected"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPDisconnected()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1021
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 1023
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 1024
    const-string/jumbo v1, "    setVoIPDisconnected() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1025
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTED:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 1026
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1028
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 1030
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1033
    :cond_1
    const-string/jumbo v1, "    setVoIPDisconnected() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1034
    const/4 v1, 0x0

    return v1
.end method

.method public setVoIPDisconnecting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "disconnectingNumber"    # Ljava/lang/String;

    .prologue
    .line 992
    const-string/jumbo v1, "setVoIPDisconnecting"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPDisconnecting()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 994
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 996
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 997
    const-string/jumbo v1, "    setVoIPDisconnecting() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 998
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 999
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 1003
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1006
    :cond_1
    const-string/jumbo v1, "    setVoIPDisconnecting() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1007
    const/4 v1, 0x0

    return v1
.end method

.method public setVoIPHolding(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "holdNumber"    # Ljava/lang/String;

    .prologue
    .line 880
    const-string/jumbo v1, "setVoIPHolding"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPHolding()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 882
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 884
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 885
    const-string/jumbo v1, "    setVoIPHolding() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 886
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 887
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 891
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 894
    :cond_1
    const-string/jumbo v1, "    setVoIPHolding() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 895
    const/4 v1, 0x0

    return v1
.end method

.method public setVoIPIdle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 784
    const-string/jumbo v0, "setVoIPIdle"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 785
    const-string/jumbo v0, "setVoIPIdle()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 786
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 787
    const/4 v0, 0x1

    return v0
.end method

.method public setVoIPInCallAlert(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 533
    const-string/jumbo v2, "setVoIPInCallAlert"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 534
    const-string/jumbo v2, "setVoIPInCallAlert()..."

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 535
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 536
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 538
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "pref_voip_alert_on_call"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 539
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 532
    return-void
.end method

.method public setVoIPIncoming(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 935
    const-string/jumbo v1, "setVoIPIncoming"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPIncoming()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 937
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 939
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 940
    const-string/jumbo v1, "    setVoIPIncoming() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 941
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 942
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v0, v3}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setDirection(Z)V

    .line 944
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 945
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 947
    :cond_0
    return v3

    .line 950
    :cond_1
    const-string/jumbo v1, "    setVoIPIncoming() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 951
    const/4 v1, 0x0

    return v1
.end method

.method public setVoIPRinging(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callerNumber"    # Ljava/lang/String;

    .prologue
    .line 798
    const-string/jumbo v1, "setVoIPRinging"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPRinging()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 800
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 802
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 803
    const-string/jumbo v1, "    setVoIPRinging() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 804
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 805
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 809
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 812
    :cond_1
    const-string/jumbo v1, "    setVoIPRinging() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 813
    const/4 v1, 0x0

    return v1
.end method

.method public setVoIPWaiting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "waitingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 963
    const-string/jumbo v1, "setVoIPWaiting"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPWaiting()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 965
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 967
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 968
    const-string/jumbo v1, "    setVoIPWaiting() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 969
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 970
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 971
    invoke-virtual {v0, v3}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setDirection(Z)V

    .line 972
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 973
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 975
    :cond_0
    return v3

    .line 978
    :cond_1
    const-string/jumbo v1, "    setVoIPWaiting() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 979
    const/4 v1, 0x0

    return v1
.end method

.method public startVoIPCheckBC(JLjava/lang/String;)V
    .locals 15
    .param p1, "setTimeInt"    # J
    .param p3, "actionName"    # Ljava/lang/String;

    .prologue
    .line 2067
    const-string/jumbo v2, "startVoIPCheckBC"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 2069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startVoIPCheckBC()...  setTimeInt["

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, "] actionName["

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 2070
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2073
    .local v10, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->alarms:Landroid/app/AlarmManager;

    if-nez v2, :cond_0

    .line 2074
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "alarm"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->alarms:Landroid/app/AlarmManager;

    .line 2078
    :cond_0
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->pIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 2079
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->alarms:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->pIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2082
    :cond_1
    const/4 v3, 0x1

    .line 2083
    .local v3, "alarmType":I
    move-wide/from16 v6, p1

    .line 2084
    .local v6, "timeInt":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2085
    .local v4, "firstTime":J
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2087
    .local v9, "inent":Landroid/content/Intent;
    const-wide/16 v12, 0x3e8

    cmp-long v2, p1, v12

    if-gez v2, :cond_2

    .line 2088
    const-wide/16 v6, 0x3e8

    .line 2091
    :cond_2
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-static {v2, v8, v9, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->pIntent:Landroid/app/PendingIntent;

    .line 2092
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->alarms:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->pIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2094
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2065
    return-void

    .line 2093
    .end local v3    # "alarmType":I
    .end local v4    # "firstTime":J
    .end local v6    # "timeInt":J
    .end local v9    # "inent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    .line 2094
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2093
    throw v2
.end method
