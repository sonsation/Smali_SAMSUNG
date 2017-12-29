.class public Lcom/samsung/android/server/virtualspace/VSManager;
.super Ljava/lang/Object;
.source "VSManager.java"


# static fields
.field static final DEBUG_VS:Z = false

.field private static final EXCEPTION_PACKAGES:[Ljava/lang/String;

.field private static final RELEASE:Z

.field private static final SAMSUNG_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"

.field static final TAG:Ljava/lang/String; = "VSManager"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAppOps:Landroid/app/AppOpsManager;

.field mClientDisplayId:I

.field private mClosing:Z

.field private final mContext:Landroid/content/Context;

.field mDisplayRedirected:Z

.field final mDm:Landroid/hardware/display/DisplayManager;

.field final mDmInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mGearVr:Lcom/samsung/android/vr/GearVrManager;

.field private final mHandler:Landroid/os/Handler;

.field final mIm:Lcom/android/server/input/InputManagerService;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMainWindowsHidden:Z

.field mSAM:Lcom/android/server/am/SamsungActivityManagerService;

.field private mSB:Lcom/android/server/statusbar/StatusBarManagerService;

.field final mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

.field private mSavedAppOpsVisibility:Z

.field private mSavedSelectedInputMethod:Ljava/lang/String;

.field private mSavedSelectedInputMethodSubtype:Ljava/lang/String;

.field private mSession:Lcom/samsung/android/server/virtualspace/VSSession;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/virtualspace/VSManager;->RELEASE:Z

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.android.hmt.vrsvc"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/virtualspace/VSManager;->EXCEPTION_PACKAGES:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    .line 73
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mDm:Landroid/hardware/display/DisplayManager;

    .line 74
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mDmInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 75
    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 76
    const-string v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService;

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mIm:Lcom/android/server/input/InputManagerService;

    .line 77
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    .line 78
    .local v0, "wm":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SamsungWindowManagerService;

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    .line 79
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/SamsungWindowManagerService;->setVSManager(Lcom/samsung/android/server/virtualspace/VSManager;)V

    .line 82
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 83
    const-string v1, "vr"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/GearVrManager;

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    .line 87
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mMainHandler:Landroid/os/Handler;

    .line 88
    const-string v1, "VSMHandlerThread"

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;->makeHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mHandler:Landroid/os/Handler;

    .line 90
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;->setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    .line 91
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;->setClientDisplayId(I)V

    .line 69
    return-void
.end method

.method private enableStatusBar(Z)V
    .locals 5
    .param p1, "en"    # Z

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    if-nez v0, :cond_1

    .line 111
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 114
    :cond_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mToken:Landroid/os/IBinder;

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 118
    if-eqz p1, :cond_3

    :goto_1
    invoke-static {v1}, Lcom/android/server/policy/PolicyControl;->setForceFullScreen(Z)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->performLayout()V

    .line 109
    return-void

    .line 116
    :cond_2
    const/high16 v0, 0x3ff0000

    goto :goto_0

    .line 118
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private endDisplayRedirect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mDisplayRedirected:Z

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/virtualspace/VSManager;->hideAllMainWindows(Z)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/SamsungActivityManagerService;->clearStacks(IZ)V

    .line 159
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClientDisplayId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSManager;->swapMainDisplayWith(I)V

    .line 160
    iput-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mDisplayRedirected:Z

    .line 161
    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSManager;->setClientDisplayId(I)V

    .line 154
    return-void
.end method

.method private makeHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v1, Lcom/samsung/android/server/virtualspace/VSManager$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/virtualspace/VSManager$1;-><init>(Lcom/samsung/android/server/virtualspace/VSManager;Landroid/os/Looper;)V

    return-object v1
.end method

.method private setClientDisplayId(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 132
    const-string v1, "sys.vs.display"

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClientDisplayId:I

    .line 131
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .locals 2
    .param p1, "session"    # Lcom/samsung/android/server/virtualspace/VSSession;

    .prologue
    .line 127
    const-string v1, "sys.vs.mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSWM:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->setVSSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    .line 126
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startDisplayRedirect(I)V
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 139
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/am/SamsungActivityManagerService;->findActivityContainer(I)Landroid/app/IActivityContainer;

    move-result-object v0

    .line 140
    .local v0, "container":Landroid/app/IActivityContainer;
    const/4 v1, 0x0

    .line 142
    .local v1, "displayId":I
    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityContainer;->getDisplayId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 147
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;->setClientDisplayId(I)V

    .line 148
    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/virtualspace/VSManager;->swapMainDisplayWith(I)V

    .line 150
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mDisplayRedirected:Z

    .line 138
    :cond_1
    return-void

    .line 145
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized connect(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSSession;
    .locals 13
    .param p1, "client"    # Landroid/os/IBinder;

    .prologue
    const/4 v12, 0x0

    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    const-string v10, "com.samsung.android.virtualspace.permission.SEM_USE_VIRTUAL_SPACE"

    invoke-virtual {v5, v10}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    sget-boolean v5, Lcom/samsung/android/server/virtualspace/VSManager;->RELEASE:Z

    if-eqz v5, :cond_0

    .line 270
    new-instance v5, Ljava/lang/SecurityException;

    const-string v10, "Caller doesn\'t have the permission to connect to the VSManager"

    invoke-direct {v5, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 272
    :cond_0
    :try_start_1
    const-string v5, "VSManager"

    const-string v10, "Failed permission check, ignored on eng build"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    if-nez p1, :cond_2

    .line 278
    const-string v5, "VSManager"

    const-string v10, "Error: null client"

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 279
    return-object v12

    .line 281
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v5, :cond_6

    .line 282
    iget-boolean v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClosing:Z

    if-nez v5, :cond_3

    .line 283
    const-string v5, "VSManager"

    const-string v10, "Error: still connected"

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 284
    return-object v12

    .line 286
    :cond_3
    :try_start_3
    const-string v5, "VSManager"

    const-string v10, "The previous session is still closing, waiting..."

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-wide/16 v8, 0x0

    .line 288
    .local v8, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 289
    .local v6, "start":J
    :goto_0
    iget-boolean v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClosing:Z

    if-eqz v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    sub-long v8, v10, v6

    const-wide/16 v10, 0x2710

    cmp-long v5, v8, v10

    if-gtz v5, :cond_4

    .line 291
    const-wide/16 v10, 0x32

    :try_start_4
    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/server/virtualspace/VSManager;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v3

    .line 296
    :cond_4
    :try_start_5
    iget-boolean v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClosing:Z

    if-eqz v5, :cond_5

    .line 297
    const-string v5, "VSManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Timed out after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms of waiting for the previous session to close"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 298
    return-object v12

    .line 300
    :cond_5
    :try_start_6
    const-string v5, "VSManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Done waiting for the previous session to close, took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v6    # "start":J
    .end local v8    # "time":J
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 304
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v0

    .line 306
    .local v0, "callingIdentity":J
    :try_start_7
    iget-object v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/am/SamsungActivityManagerService;->getCallingActivityToken(I)Landroid/os/IBinder;

    move-result-object v4

    .line 307
    .local v4, "parentActivity":Landroid/os/IBinder;
    if-nez v4, :cond_7

    .line 308
    const-string v5, "VSManager"

    const-string v10, "No parent activity"

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 321
    :try_start_8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    .line 309
    return-object v12

    .line 312
    :cond_7
    :try_start_9
    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSManager;->startDisplayRedirect(I)V

    .line 314
    new-instance v5, Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-direct {v5, p0, p1, v4}, Lcom/samsung/android/server/virtualspace/VSSession;-><init>(Lcom/samsung/android/server/virtualspace/VSManager;Landroid/os/IBinder;Landroid/os/IBinder;)V

    iput-object v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    .line 315
    iget-object v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v5, :cond_8

    .line 316
    iget-object v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/server/virtualspace/VSManager;->sessionStarting(Lcom/samsung/android/server/virtualspace/VSSession;I)V

    .line 319
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 321
    :try_start_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    .line 319
    return-object v5

    .line 320
    .end local v4    # "parentActivity":Landroid/os/IBinder;
    :catchall_1
    move-exception v5

    .line 321
    :try_start_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 320
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method hideAllMainWindows(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mMainWindowsHidden:Z

    if-eq v0, p1, :cond_0

    .line 246
    iput-boolean p1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mMainWindowsHidden:Z

    .line 247
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->setHideNonVSStacks(Z)V

    .line 244
    :cond_0
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method runTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/virtualspace/VSManager;->runTask(ZLjava/lang/Runnable;)V

    .line 240
    return-void
.end method

.method runTask(ZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "now"    # Z
    .param p2, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/server/virtualspace/VSManager;->runTask(ZLjava/lang/Runnable;Landroid/os/Handler;)V

    .line 236
    return-void
.end method

.method runTask(ZLjava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0
    .param p1, "now"    # Z
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 228
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p3, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method declared-synchronized sessionClosed(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .locals 4
    .param p1, "session"    # Lcom/samsung/android/server/virtualspace/VSSession;

    .prologue
    monitor-enter p0

    .line 193
    :try_start_0
    const-string v0, "VSManager"

    const-string v1, "VS session closed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSManager;->enableStatusBar(Z)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 199
    const-string v1, "default_input_method"

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSavedSelectedInputMethod:Ljava/lang/String;

    .line 198
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 201
    const-string v1, "selected_input_method_subtype"

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSavedSelectedInputMethodSubtype:Ljava/lang/String;

    .line 200
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManager;->isDock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSavedAppOpsVisibility:Z

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSManager;->endDisplayRedirect()V

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSManager;->setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/SamsungActivityManagerService;->updateOomAdj()V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClosing:Z

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSManager;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 192
    return-void

    .line 204
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    sget-object v1, Lcom/samsung/android/server/virtualspace/VSManager;->EXCEPTION_PACKAGES:[Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/vr/GearVrManager;->setOverlayRestriction(Z[Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized sessionClosing(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .locals 2
    .param p1, "session"    # Lcom/samsung/android/server/virtualspace/VSSession;

    .prologue
    monitor-enter p0

    .line 188
    :try_start_0
    const-string v0, "VSManager"

    const-string v1, "VS session closing"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mClosing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 187
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized sessionStarting(Lcom/samsung/android/server/virtualspace/VSSession;I)V
    .locals 7
    .param p1, "session"    # Lcom/samsung/android/server/virtualspace/VSSession;
    .param p2, "pid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    .line 165
    :try_start_0
    const-string v3, "VSManager"

    const-string v4, "VS session starting"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSManager;->setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    .line 168
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSManager;->enableStatusBar(Z)V

    .line 171
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 172
    const-string v4, "selected_input_method_subtype"

    .line 171
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSavedSelectedInputMethodSubtype:Ljava/lang/String;

    .line 173
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 174
    const-string v4, "default_input_method"

    .line 173
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSavedSelectedInputMethod:Ljava/lang/String;

    .line 175
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 176
    const-string v4, "default_input_method"

    const-string v5, "com.sec.android.inputmethod/.SamsungKeypad"

    .line 175
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    invoke-virtual {v3}, Lcom/samsung/android/vr/GearVrManager;->isDock()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 180
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSavedAppOpsVisibility:Z

    .line 181
    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSavedAppOpsVisibility:Z

    if-nez v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    sget-object v2, Lcom/samsung/android/server/virtualspace/VSManager;->EXCEPTION_PACKAGES:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/samsung/android/vr/GearVrManager;->setOverlayRestriction(Z[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "mode":I
    :cond_1
    monitor-exit p0

    .line 164
    return-void

    .restart local v0    # "mode":I
    :cond_2
    move v1, v2

    .line 180
    goto :goto_0

    .end local v0    # "mode":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSamsungActivityManager(Lcom/android/server/am/SamsungActivityManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/SamsungActivityManagerService;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mSAM:Lcom/android/server/am/SamsungActivityManagerService;

    .line 258
    return-void
.end method

.method swapMainDisplayWith(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManager;->mDmInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerInternal;->swapLogicalDisplays(II)V

    .line 251
    return-void
.end method
