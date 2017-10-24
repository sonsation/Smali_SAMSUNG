.class public final Lcom/samsung/android/desktopmode/SemDesktopModeManager;
.super Ljava/lang/Object;
.source "SemDesktopModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;
    }
.end annotation


# static fields
.field public static final LAUNCHER_APPNAME:Ljava/lang/String; = "DesktopLauncher"

.field public static final LAUNCHER_CLSNAME:Ljava/lang/String; = "com.android.launcher3.Launcher"

.field public static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final TAG:Ljava/lang/String;

.field private static mEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;

.field private static mService:Lcom/samsung/android/desktopmode/IDesktopMode;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    .line 33
    sput-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    .line 34
    sput-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopmode/IDesktopMode;)V
    .locals 0
    .param p1, "service"    # Lcom/samsung/android/desktopmode/IDesktopMode;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sput-object p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    .line 98
    return-void
.end method

.method public static isDesktopDockConnected()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v1, :cond_0

    .line 186
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isDesktopDockConnected: Desktop Mode feature not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v3

    .line 190
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopMode;->isDesktopDockConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isDesktopDockConnected: Failure communicating with DesktopModeService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    return v3
.end method

.method public static isDesktopMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v1, :cond_0

    .line 204
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isDesktopMode: Desktop Mode feature not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return v3

    .line 208
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopMode;->isDesktopMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isDesktopMode: Failure communicating with DesktopModeService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    return v3
.end method

.method public static registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    .locals 6
    .param p0, "listener"    # Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .prologue
    .line 115
    sget-object v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 116
    if-nez p0, :cond_0

    .line 117
    :try_start_0
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerListener: Listener is null"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 118
    return-void

    .line 120
    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v2, :cond_1

    .line 121
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerListener: Desktop Mode feature not available"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 122
    return-void

    .line 124
    :cond_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 125
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    .line 127
    :cond_2
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already registered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 129
    return-void

    .line 131
    :cond_3
    :try_start_3
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;-><init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    .local v0, "delegate":Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;
    :try_start_4
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerStateCallback(Lcom/samsung/android/desktopmode/IDesktopModeCallback;)Z

    .line 134
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit v3

    .line 114
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerListener: Failure communicating with DesktopModeService"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 115
    .end local v0    # "delegate":Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    .locals 6
    .param p0, "listener"    # Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .prologue
    .line 149
    sget-object v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 150
    if-nez p0, :cond_0

    .line 151
    :try_start_0
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterListener: Listener is null"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 152
    return-void

    .line 154
    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v2, :cond_1

    .line 155
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterListener: Desktop Mode feature not available"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 156
    return-void

    .line 158
    :cond_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v3

    .line 159
    return-void

    .line 161
    :cond_2
    :try_start_3
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;

    .line 162
    .local v0, "delegate":Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;
    if-nez v0, :cond_3

    .line 163
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already unregistered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 164
    return-void

    .line 166
    :cond_3
    :try_start_4
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 167
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    .line 169
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    :try_start_5
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->unregisterStateCallback(Lcom/samsung/android/desktopmode/IDesktopModeCallback;)Z

    .line 172
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    monitor-exit v3

    .line 148
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterListener: Failure removing event listener"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 149
    .end local v0    # "delegate":Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public getLaunchPolicy(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v1, 0x0

    .line 262
    .local v1, "ret":I
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v2, :cond_0

    .line 263
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isDesktopMode: Desktop Mode feature not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v2, -0x1

    return v2

    .line 267
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, p1}, Lcom/samsung/android/desktopmode/IDesktopMode;->getLaunchPolicy(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 271
    :goto_0
    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLaunchPolicy: Failure communicating with DesktopModeService"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getModeChangePolicy(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 278
    .local v1, "ret":I
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v2, :cond_0

    .line 279
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isDesktopMode: Desktop Mode feature not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v2, -0x1

    return v2

    .line 283
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, p1}, Lcom/samsung/android/desktopmode/IDesktopMode;->getModeChangePolicy(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 287
    :goto_0
    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getModeChangePolicy: Failure communicating with DesktopModeService"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDefaultDisplayOn(ZLjava/lang/String;)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "callerPkgName"    # Ljava/lang/String;

    .prologue
    .line 238
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v1, :cond_0

    .line 239
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setDefaultDisplayOn: Desktop Mode feature not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 242
    :cond_0
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setDefaultDisplayOn: Desktop Mode is not enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 246
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    :cond_2
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setDefaultDisplayOn: callerPkgName must not be null or empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 251
    :cond_3
    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopMode;->setDefaultDisplayOn(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setDefaultDisplayOn: Failure communicating with DesktopModeService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTouchScreenOn(ZLjava/lang/String;)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "callerPkgName"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v1, :cond_0

    .line 218
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setTouchScreenOn: Desktop Mode feature not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 221
    :cond_0
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setTouchScreenOn: Desktop Mode is not enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 225
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    :cond_2
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setTouchScreenOn: callerPkgName must not be null or empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void

    .line 230
    :cond_3
    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopMode;->setTouchScreenOn(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setTouchScreenOn: Failure communicating with DesktopModeService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
