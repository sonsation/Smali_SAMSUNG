.class public Lcom/samsung/android/edge/SemEdgeManager;
.super Ljava/lang/Object;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;,
        Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;,
        Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;
    }
.end annotation


# static fields
.field public static final EDGE_LIGHTING_ENABLED:Z

.field public static final EDGE_LIGHTING_STATE_NONE:I = 0x0

.field public static final EDGE_LIGHTING_STATE_RUNNING:I = 0x1

.field public static final SUPPORT_EDGE_LIGHTING:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mEdgeLightingDelegatesLock:Ljava/lang/Object;

.field private final mPackageName:Ljava/lang/String;

.field private mService:Lcom/samsung/android/edge/IEdgeManager;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/edge/SemEdgeManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 48
    const-class v1, Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "feature":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "edgelighting_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    sput-boolean v1, Lcom/samsung/android/edge/SemEdgeManager;->EDGE_LIGHTING_ENABLED:Z

    .line 82
    sput-boolean v2, Lcom/samsung/android/edge/SemEdgeManager;->SUPPORT_EDGE_LIGHTING:Z

    .line 46
    return-void

    :cond_0
    move v1, v2

    .line 81
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/edge/IEdgeManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/edge/IEdgeManager;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mToken:Landroid/os/Binder;

    .line 103
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    .line 102
    return-void
.end method

.method private getService()Lcom/samsung/android/edge/IEdgeManager;
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    if-nez v1, :cond_0

    .line 110
    const-string/jumbo v1, "edge"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 111
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/edge/IEdgeManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    .line 113
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    return-object v1
.end method


# virtual methods
.method public bindEdgeLightingService(Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;)V
    .locals 9
    .param p1, "callback"    # Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v6

    if-nez v6, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    if-nez p1, :cond_1

    .line 136
    sget-object v6, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "bindEdgeLightingService : callback is null"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 139
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 142
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    .line 143
    .local v5, "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    invoke-virtual {v5}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getCallback()Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getCallback()Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 144
    move-object v1, v5

    .local v1, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    move-object v2, v1

    .line 148
    .end local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .end local v5    # "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .local v2, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :goto_0
    if-nez v2, :cond_4

    .line 149
    :try_start_1
    new-instance v1, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;-><init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    .end local v2    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :goto_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 155
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    invoke-interface {v6, v1, v0}, Lcom/samsung/android/edge/IEdgeManager;->bindEdgeLightingService(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    monitor-exit v7

    .line 131
    return-void

    .line 156
    :catch_0
    move-exception v3

    .line 157
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v6, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "bindEdgeLightingService : RemoteException : "

    invoke-static {v6, v8, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 139
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7

    throw v6

    .restart local v2    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    goto :goto_3

    .end local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v2    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :cond_4
    move-object v1, v2

    .end local v2    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    goto :goto_1

    .local v1, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :cond_5
    move-object v2, v1

    .restart local v2    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    goto :goto_0
.end method

.method public getEdgeLightingState()I
    .locals 3

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 342
    const/4 v1, 0x0

    return v1

    .line 345
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    invoke-interface {v1}, Lcom/samsung/android/edge/IEdgeManager;->getEdgeLightingState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerEdgeLightingListener(Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v6

    if-nez v6, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    if-nez p1, :cond_1

    .line 204
    sget-object v6, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "registerEdgeLightingListener : listener is null"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 207
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 210
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    .line 211
    .local v5, "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    invoke-virtual {v5}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getListener()Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getListener()Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 212
    move-object v1, v5

    .local v1, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    move-object v2, v1

    .line 216
    .end local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .end local v5    # "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .local v2, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :goto_0
    if-nez v2, :cond_4

    .line 217
    :try_start_1
    new-instance v1, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;-><init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    .end local v2    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :goto_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 223
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    invoke-interface {v6, v1, v0}, Lcom/samsung/android/edge/IEdgeManager;->registerEdgeLightingListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    monitor-exit v7

    .line 199
    return-void

    .line 224
    :catch_0
    move-exception v3

    .line 225
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v6, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "registerEdgeLightingListener : RemoteException : "

    invoke-static {v6, v8, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 207
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7

    throw v6

    .restart local v2    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    goto :goto_3

    .end local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v2    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :cond_4
    move-object v1, v2

    .end local v2    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    goto :goto_1

    .local v1, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :cond_5
    move-object v2, v1

    .restart local v2    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    goto :goto_0
.end method

.method public startEdgeLighting(Lcom/samsung/android/edge/SemEdgeLightingInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 289
    return-void

    .line 291
    :cond_0
    if-nez p1, :cond_1

    .line 292
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "info is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/edge/IEdgeManager;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startEdgeLighting(Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 311
    return-void

    .line 313
    :cond_0
    if-nez p1, :cond_1

    .line 314
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "info is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/edge/IEdgeManager;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopEdgeLighting()V
    .locals 4

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 328
    return-void

    .line 331
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/edge/IEdgeManager;->stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unbindEdgeLightingService(Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v4

    if-nez v4, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    if-nez p1, :cond_1

    .line 171
    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unbindEdgeLightingService : callback is null"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 174
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 177
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    .line 178
    .local v3, "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getCallback()Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getCallback()Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    move-object v0, v3

    .line 183
    .end local v0    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .end local v3    # "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :cond_3
    if-nez v0, :cond_4

    .line 184
    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unbindEdgeLightingService : cannot find the callback"

    invoke-static {v4, v6}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 185
    return-void

    .line 188
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v0, v6}, Lcom/samsung/android/edge/IEdgeManager;->unbindEdgeLightingService(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 189
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v5

    .line 166
    return-void

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unbindEdgeLightingService : RemoteException : "

    invoke-static {v4, v6, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 174
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public unregisterEdgeLightingListener(Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v4

    if-nez v4, :cond_0

    .line 236
    return-void

    .line 238
    :cond_0
    if-nez p1, :cond_1

    .line 239
    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unregisterEdgeLightingListener : listener is null"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 242
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    .line 246
    .local v3, "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getListener()Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getListener()Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 247
    move-object v0, v3

    .line 251
    .end local v0    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .end local v3    # "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :cond_3
    if-nez v0, :cond_4

    .line 252
    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unregisterEdgeLightingListener : cannot find the listener"

    invoke-static {v4, v6}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 253
    return-void

    .line 256
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v0, v6}, Lcom/samsung/android/edge/IEdgeManager;->unregisterEdgeLightingListener(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 257
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v5

    .line 234
    return-void

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unbindEdgeLightingService : RemoteException : "

    invoke-static {v4, v6, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 242
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public updateEdgeLightingList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 269
    return-void

    .line 271
    :cond_0
    if-nez p1, :cond_1

    .line 272
    sget-object v1, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateEdgeLightingList : list is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 276
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/edge/IEdgeManager;->updateEdgeLightingList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updatePolicy(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/edge/IEdgeManager;->updatePolicy(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "bindEdgeLightingService : RemoteException : "

    invoke-static {v1, v2, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
