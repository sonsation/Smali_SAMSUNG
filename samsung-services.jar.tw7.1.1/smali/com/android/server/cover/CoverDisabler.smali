.class final Lcom/android/server/cover/CoverDisabler;
.super Ljava/lang/Object;
.source "CoverDisabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;,
        Lcom/android/server/cover/CoverDisabler$DisableRecord;
    }
.end annotation


# static fields
.field private static final MSG_DISABLE_COVER_MANAGER:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoverManagerDisabled:Z

.field private mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/CoverDisabler$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRealCoverSwitchState:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cover/CoverDisabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/CoverDisabler;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/CoverDisabler;ZLandroid/os/IBinder;Ljava/lang/String;)Z
    .locals 1
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/CoverDisabler;Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverDisabler;->handleDisableCoverManagerLocked(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/CoverDisabler;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    .line 50
    iput-boolean v2, p0, Lcom/android/server/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 51
    iput-boolean v3, p0, Lcom/android/server/cover/CoverDisabler;->mRealCoverSwitchState:Z

    .line 54
    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mPowerManager:Landroid/os/PowerManager;

    .line 56
    new-instance v0, Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;-><init>(Lcom/android/server/cover/CoverDisabler;Landroid/os/Looper;Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mHandler:Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;

    .line 58
    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "disable covermanager"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 59
    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 53
    return-void
.end method

.method private disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)Z
    .locals 9
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    sget-object v6, Lcom/android/server/cover/CoverDisabler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disableCoverManagerLocked : disable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 117
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->manageDisableListLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/android/server/cover/CoverDisabler;->gatherDisableLocked()Z

    move-result v3

    .line 120
    .local v3, "net":Z
    iget-boolean v6, p0, Lcom/android/server/cover/CoverDisabler;->mCoverManagerDisabled:Z

    if-eq v3, v6, :cond_2

    .line 121
    iput-boolean v3, p0, Lcom/android/server/cover/CoverDisabler;->mCoverManagerDisabled:Z

    .line 122
    iget-object v6, p0, Lcom/android/server/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-nez v6, :cond_0

    .line 123
    iget-object v6, p0, Lcom/android/server/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 125
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 126
    .local v2, "msg":Landroid/os/Message;
    const/4 v6, 0x0

    iput v6, v2, Landroid/os/Message;->what:I

    .line 127
    if-eqz p1, :cond_1

    move v4, v5

    :cond_1
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 128
    iget-object v4, p0, Lcom/android/server/cover/CoverDisabler;->mHandler:Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    return v5

    .line 132
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    return v4

    .line 131
    .end local v3    # "net":Z
    :catchall_0
    move-exception v4

    .line 132
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    throw v4
.end method

.method private gatherDisableLocked()Z
    .locals 5

    .prologue
    .line 184
    iget-object v4, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 186
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 187
    iget-object v4, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cover/CoverDisabler$DisableRecord;

    .line 188
    .local v3, "rec":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    iget-boolean v2, v3, Lcom/android/server/cover/CoverDisabler$DisableRecord;->disable:Z

    .line 189
    .local v2, "net":Z
    if-eqz v2, :cond_0

    const/4 v4, 0x1

    return v4

    .line 186
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v2    # "net":Z
    .end local v3    # "rec":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private handleDisableCoverManagerLocked(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 137
    :cond_0
    return-void
.end method

.method private manageDisableListLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 152
    iget-object v5, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 153
    .local v0, "N":I
    const/4 v4, 0x0

    .line 155
    .local v4, "tok":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 156
    iget-object v5, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cover/CoverDisabler$DisableRecord;

    .line 157
    .local v3, "t":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    iget-object v5, v3, Lcom/android/server/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v5, p2, :cond_3

    .line 158
    move-object v4, v3

    .line 162
    .end local v3    # "t":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    .end local v4    # "tok":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    :cond_0
    if-eqz p1, :cond_4

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 168
    if-nez v4, :cond_1

    .line 169
    new-instance v4, Lcom/android/server/cover/CoverDisabler$DisableRecord;

    invoke-direct {v4, p0, v6}, Lcom/android/server/cover/CoverDisabler$DisableRecord;-><init>(Lcom/android/server/cover/CoverDisabler;Lcom/android/server/cover/CoverDisabler$DisableRecord;)V

    .line 171
    .local v4, "tok":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p2, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    iget-object v5, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v4    # "tok":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/cover/CoverDisabler$DisableRecord;->disable:Z

    .line 178
    iput-object p2, v4, Lcom/android/server/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    .line 179
    iput-object p3, v4, Lcom/android/server/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    .line 147
    :cond_2
    :goto_1
    return-void

    .line 155
    .restart local v3    # "t":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    .local v4, "tok":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "t":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    .end local v4    # "tok":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    :cond_4
    if-eqz v4, :cond_2

    .line 164
    iget-object v5, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 165
    iget-object v5, v4, Lcom/android/server/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v4, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_1

    .line 172
    .local v4, "tok":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "ex":Landroid/os/RemoteException;
    return-void
.end method


# virtual methods
.method disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)Z
    .locals 2
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 195
    const-string v3, " Current CoverDisabler state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    iget-object v4, p0, Lcom/android/server/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 198
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCoverManagerDisabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/cover/CoverDisabler;->mCoverManagerDisabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    iget-boolean v3, p0, Lcom/android/server/cover/CoverDisabler;->mCoverManagerDisabled:Z

    if-eqz v3, :cond_0

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Real Cover Switch State="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/cover/CoverDisabler;->mRealCoverSwitchState:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 203
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisableRecords.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 205
    iget-object v3, p0, Lcom/android/server/cover/CoverDisabler;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/CoverDisabler$DisableRecord;

    .line 206
    .local v2, "tok":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] disable="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, v2, Lcom/android/server/cover/CoverDisabler$DisableRecord;->disable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 207
    const-string v5, " pkg="

    .line 206
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 207
    iget-object v5, v2, Lcom/android/server/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    .line 206
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 208
    const-string v5, " token="

    .line 206
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 208
    iget-object v5, v2, Lcom/android/server/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    .line 206
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "tok":Lcom/android/server/cover/CoverDisabler$DisableRecord;
    :cond_1
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 194
    return-void

    .line 197
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method getRealCoverSwitchState()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/server/cover/CoverDisabler;->mRealCoverSwitchState:Z

    return v0
.end method

.method isCoverManagerDisabled()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/server/cover/CoverDisabler;->mCoverManagerDisabled:Z

    return v0
.end method

.method setRealCoverSwitchState(Z)V
    .locals 0
    .param p1, "switchState"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/server/cover/CoverDisabler;->mRealCoverSwitchState:Z

    .line 94
    return-void
.end method
