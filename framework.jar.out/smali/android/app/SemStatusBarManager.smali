.class public Landroid/app/SemStatusBarManager;
.super Ljava/lang/Object;
.source "SemStatusBarManager.java"


# static fields
.field public static final DISABLE_BACK:I = 0x400000

.field public static final DISABLE_CLOCK:I = 0x800000

.field public static final DISABLE_EXPAND:I = 0x10000

.field public static final DISABLE_EXPAND_ON_KEYGUARD:I = 0x10000000

.field public static final DISABLE_HOME:I = 0x200000

.field public static final DISABLE_NONE:I = 0x0

.field public static final DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final DISABLE_RECENT:I = 0x1000000

.field public static final DISABLE_SEARCH:I = 0x2000000

.field public static final DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final NAVIGATION_BAR_POSITION_LEFT:I = 0x0

.field public static final NAVIGATION_BAR_POSITION_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemStatusBarManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/SemStatusBarManager;->mToken:Landroid/os/IBinder;

    .line 135
    iput-object p1, p0, Landroid/app/SemStatusBarManager;->mContext:Landroid/content/Context;

    .line 134
    return-void
.end method

.method private enforceStatusBarService()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Landroid/app/SemStatusBarManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    .line 151
    const-string/jumbo v2, "StatusBarManagerService"

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private declared-synchronized getService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    .prologue
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/app/SemStatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 141
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SemStatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 142
    iget-object v0, p0, Landroid/app/SemStatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 146
    :cond_0
    iget-object v0, p0, Landroid/app/SemStatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public collapsePanels()V
    .locals 3

    .prologue
    .line 203
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 204
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 205
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    return-void

    .line 207
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public disable(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 171
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 172
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 173
    iget-object v2, p0, Landroid/app/SemStatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/SemStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    return-void

    .line 175
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public expandNotificationsPanel()V
    .locals 3

    .prologue
    .line 187
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 188
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 189
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    return-void

    .line 191
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public expandQuickSettingsPanel()V
    .locals 3

    .prologue
    .line 219
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 220
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 221
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    return-void

    .line 223
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 225
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getDisableFlags()I
    .locals 3

    .prologue
    .line 323
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 324
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 325
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->getDisableFlags()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 327
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 329
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 331
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isPanelExpanded()Z
    .locals 3

    .prologue
    .line 269
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 270
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 271
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->getPanelExpandState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 273
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 277
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isQuickSettingPanelExpanded()Z
    .locals 3

    .prologue
    .line 305
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 306
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 307
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->getQuickSettingPanelExpandState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 309
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 311
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 313
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setIndicatorBgColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 287
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 288
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 289
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setIndicatorBgColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    return-void

    .line 291
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 293
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 3
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "position"    # I

    .prologue
    .line 341
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->enforceStatusBarService()V

    .line 342
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 343
    .local v1, "mBar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_1

    .line 345
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 346
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_1
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 350
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setPanelExpandState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 252
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 253
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 254
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setPanelExpandState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    return-void

    .line 256
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toggleRecentApps()V
    .locals 3

    .prologue
    .line 235
    :try_start_0
    invoke-direct {p0}, Landroid/app/SemStatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 236
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 237
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    return-void

    .line 239
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
