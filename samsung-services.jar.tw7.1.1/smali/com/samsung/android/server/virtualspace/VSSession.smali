.class public Lcom/samsung/android/server/virtualspace/VSSession;
.super Lcom/samsung/android/virtualspace/IVSSession$Stub;
.source "VSSession.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/virtualspace/VSSession$-void__init__com_samsung_android_server_virtualspace_VSManager_manager_android_os_IBinder_client_android_os_IBinder_parentActivity_LambdaImpl0;
    }
.end annotation


# instance fields
.field private mActive:Z

.field private mClient:Landroid/os/IBinder;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mDm:Landroid/hardware/display/DisplayManager;

.field private mMainDisplayRedirect:Lcom/samsung/android/server/virtualspace/VSScreen;

.field private mMainDisplayRedirectId:I

.field private mMainMetrics:Landroid/util/DisplayMetrics;

.field private final mManager:Lcom/samsung/android/server/virtualspace/VSManager;

.field private final mParentActivity:Landroid/os/IBinder;

.field private final mScreens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/server/virtualspace/VSScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/server/virtualspace/VSManager;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "manager"    # Lcom/samsung/android/server/virtualspace/VSManager;
    .param p2, "client"    # Landroid/os/IBinder;
    .param p3, "parentActivity"    # Landroid/os/IBinder;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/virtualspace/IVSSession$Stub;-><init>()V

    .line 31
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    .line 38
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirectId:I

    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClient:Landroid/os/IBinder;

    .line 43
    iput-object p3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mParentActivity:Landroid/os/IBinder;

    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget-object v1, v1, Lcom/samsung/android/server/virtualspace/VSManager;->mDm:Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDm:Landroid/hardware/display/DisplayManager;

    .line 45
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mActive:Z

    .line 46
    new-instance v1, Lcom/samsung/android/server/virtualspace/VSSession$-void__init__com_samsung_android_server_virtualspace_VSManager_manager_android_os_IBinder_client_android_os_IBinder_parentActivity_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/virtualspace/VSSession$-void__init__com_samsung_android_server_virtualspace_VSManager_manager_android_os_IBinder_client_android_os_IBinder_parentActivity_LambdaImpl0;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;)V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 52
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDm:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSManager;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private declared-synchronized createScreenInternal(IIII)Lcom/samsung/android/server/virtualspace/VSScreen;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "density"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClient:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    .line 67
    return-object v7

    .line 69
    :cond_0
    if-le p1, p2, :cond_1

    .line 70
    move v6, p1

    .line 71
    .local v6, "tmp":I
    move p1, p2

    .line 72
    move p2, v6

    .line 75
    .end local v6    # "tmp":I
    :cond_1
    :try_start_1
    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/virtualspace/VSScreen;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;IIII)V

    .line 77
    .local v0, "screen":Lcom/samsung/android/server/virtualspace/VSScreen;
    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->isValid()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    monitor-exit p0

    .line 78
    return-object v7

    :cond_2
    monitor-exit p0

    .line 80
    return-object v0

    .end local v0    # "screen":Lcom/samsung/android/server/virtualspace/VSScreen;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getMainMetrics()Landroid/util/DisplayMetrics;
    .locals 3

    .prologue
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainMetrics:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainMetrics:Landroid/util/DisplayMetrics;

    .line 86
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDm:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 87
    .local v0, "disp":Landroid/view/Display;
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    .end local v0    # "disp":Landroid/view/Display;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainMetrics:Landroid/util/DisplayMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method synthetic -com_samsung_android_server_virtualspace_VSSession_lambda$1()V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->close()V

    .line 0
    return-void
.end method

.method addScreen(ILcom/samsung/android/server/virtualspace/VSScreen;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "screen"    # Lcom/samsung/android/server/virtualspace/VSScreen;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 116
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method changeScreenId(Lcom/samsung/android/server/virtualspace/VSScreen;II)V
    .locals 2
    .param p1, "screen"    # Lcom/samsung/android/server/virtualspace/VSScreen;
    .param p2, "oldId"    # I
    .param p3, "newId"    # I

    .prologue
    .line 135
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 134
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClient:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    monitor-exit p0

    .line 191
    return-void

    .line 192
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 194
    .local v0, "callingIdentity":J
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->closeTask()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 188
    return-void

    .line 195
    :catchall_0
    move-exception v2

    .line 196
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0    # "callingIdentity":J
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method closeTask()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 97
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    invoke-virtual {v3, p0}, Lcom/samsung/android/server/virtualspace/VSManager;->sessionClosing(Lcom/samsung/android/server/virtualspace/VSSession;)V

    .line 99
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClient:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 100
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClient:Landroid/os/IBinder;

    .line 103
    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    monitor-enter v4

    .line 104
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "screens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/server/virtualspace/VSScreen;>;"
    monitor-exit v4

    .line 106
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 107
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 108
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->close()V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "screens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/server/virtualspace/VSScreen;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 111
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v2    # "screens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/server/virtualspace/VSScreen;>;"
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDm:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 112
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    invoke-virtual {v3, p0}, Lcom/samsung/android/server/virtualspace/VSManager;->sessionClosed(Lcom/samsung/android/server/virtualspace/VSSession;)V

    .line 113
    iput-boolean v5, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mActive:Z

    .line 96
    return-void
.end method

.method public createScreen(I)Lcom/samsung/android/virtualspace/IVSScreen;
    .locals 6
    .param p1, "flags"    # I

    .prologue
    .line 203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 205
    .local v0, "callingIdentity":J
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->getMainMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 206
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-direct {p0, v3, v4, v5, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->createScreenInternal(IIII)Lcom/samsung/android/server/virtualspace/VSScreen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    return-object v3

    .line 207
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    :catchall_0
    move-exception v3

    .line 208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    throw v3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClient:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 215
    return v3

    .line 216
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 218
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget-object v2, v2, Lcom/samsung/android/server/virtualspace/VSManager;->mIm:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/input/InputManagerService;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 220
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 218
    return v2

    .line 219
    :catchall_0
    move-exception v2

    .line 220
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    throw v2
.end method

.method public getClient()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClient:Landroid/os/IBinder;

    return-object v0
.end method

.method public getClientDisplayId()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget v0, v0, Lcom/samsung/android/server/virtualspace/VSManager;->mClientDisplayId:I

    return v0
.end method

.method getManager()Lcom/samsung/android/server/virtualspace/VSManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    return-object v0
.end method

.method getParentActivity()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mParentActivity:Landroid/os/IBinder;

    return-object v0
.end method

.method public getPriority(I)I
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    .line 255
    .local v0, "screen":Lcom/samsung/android/server/virtualspace/VSScreen;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->getPriority()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/virtualspace/VSScreen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public declared-synchronized isValid()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 226
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    monitor-enter p0

    monitor-exit p0

    .line 265
    return-void
.end method

.method public onDisplayBoundsUpdated(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    .line 234
    .local v0, "screen":Lcom/samsung/android/server/virtualspace/VSScreen;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/virtualspace/VSScreen;->updateBounds(Landroid/graphics/Rect;)V

    .line 232
    :cond_0
    return-void
.end method

.method public declared-synchronized onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    monitor-enter p0

    .line 272
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    .line 273
    .local v0, "screen":Lcom/samsung/android/server/virtualspace/VSScreen;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 270
    return-void

    .end local v0    # "screen":Lcom/samsung/android/server/virtualspace/VSScreen;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    monitor-enter p0

    .line 281
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    .line 282
    .local v0, "screen":Lcom/samsung/android/server/virtualspace/VSScreen;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayRemoved()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 279
    return-void

    .end local v0    # "screen":Lcom/samsung/android/server/virtualspace/VSScreen;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onTopTaskUpdated(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "taskId"    # I

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    .line 241
    .local v0, "screen":Lcom/samsung/android/server/virtualspace/VSScreen;
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/virtualspace/VSScreen;->onTopTaskUpdated(I)V

    .line 239
    :cond_0
    return-void
.end method

.method public onUpdatedAppOrientation(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    .line 248
    .local v0, "screen":Lcom/samsung/android/server/virtualspace/VSScreen;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/virtualspace/VSScreen;->onUpdatedAppOrientation(I)V

    .line 246
    :cond_0
    return-void
.end method

.method declared-synchronized redirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;Z)V
    .locals 3
    .param p1, "screen"    # Lcom/samsung/android/server/virtualspace/VSScreen;
    .param p2, "clear"    # Z

    .prologue
    const/4 v2, -0x1

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirect:Lcom/samsung/android/server/virtualspace/VSScreen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    monitor-exit p0

    .line 149
    return-void

    .line 152
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirect:Lcom/samsung/android/server/virtualspace/VSScreen;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirectId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;->swapMainDisplayWith(I)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirect:Lcom/samsung/android/server/virtualspace/VSScreen;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirectId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->setDisplayId(I)V

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirectId:I

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirect:Lcom/samsung/android/server/virtualspace/VSScreen;

    .line 159
    :cond_1
    if-eqz p1, :cond_5

    .line 160
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget-boolean v0, v0, Lcom/samsung/android/server/virtualspace/VSManager;->mDisplayRedirected:Z

    if-nez v0, :cond_2

    .line 161
    const-string v0, "VSManager"

    const-string v1, "The main display can\'t be redirected if the client is not started in a VS container"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 162
    return-void

    .line 165
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->isValid()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    monitor-exit p0

    .line 166
    return-void

    .line 167
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirectId:I

    .line 168
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirectId:I

    if-ne v0, v2, :cond_4

    .line 170
    const-string v0, "VSManager"

    const-string v1, "screen is not ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 171
    return-void

    .line 173
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/virtualspace/VSManager;->hideAllMainWindows(Z)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManager;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirectId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;->swapMainDisplayWith(I)V

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->setDisplayId(I)V

    .line 176
    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirect:Lcom/samsung/android/server/virtualspace/VSScreen;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    monitor-exit p0

    .line 145
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeScreen(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 129
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 128
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method removeScreen(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .locals 1
    .param p1, "screen"    # Lcom/samsung/android/server/virtualspace/VSScreen;

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->removeScreen(I)V

    .line 141
    return-void
.end method

.method declared-synchronized unredirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .locals 2
    .param p1, "screen"    # Lcom/samsung/android/server/virtualspace/VSScreen;

    .prologue
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayRedirect:Lcom/samsung/android/server/virtualspace/VSScreen;

    if-ne p1, v0, :cond_0

    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/virtualspace/VSSession;->redirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 180
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
