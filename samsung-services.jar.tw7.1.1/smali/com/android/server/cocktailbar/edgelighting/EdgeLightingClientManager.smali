.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;
.super Ljava/lang/Object;
.source "EdgeLightingClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EDGE_LIGHTING_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final EDGE_LIGHTING_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.app.edgelighting.EdgeLightingService"

.field private static final SETTING_EDGE_LIGHTING:Ljava/lang/String; = "edge_lighting"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdgeLightingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

.field private final mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    .line 34
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 31
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mLooper:Landroid/os/Looper;

    .line 52
    return-void
.end method


# virtual methods
.method bind(Landroid/os/IBinder;ILandroid/content/ComponentName;)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "condition"    # I
    .param p3, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 81
    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v8

    .line 82
    :try_start_0
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind : pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", condition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mHosts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "host$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 86
    .local v0, "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    if-eqz v0, :cond_2

    .line 87
    iget-object v1, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string v2, "bind : already registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->updateCondition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 90
    return-void

    .line 94
    .end local v0    # "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    :cond_3
    :try_start_1
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 95
    .restart local v0    # "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bind."

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 80
    return-void

    .line 81
    .end local v0    # "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    .end local v7    # "host$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 267
    const-string v5, "-ClientManager start"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    iget-object v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v6

    .line 269
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "host$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 270
    .local v2, "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 268
    .end local v2    # "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    .end local v3    # "host$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v3    # "host$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v6

    .line 273
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    sget-boolean v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 275
    :cond_1
    iget-object v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    monitor-enter v6

    .line 276
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v5, "-EdgeLightingList : ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 279
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 280
    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    add-int/lit8 v5, v0, -0x1

    if-eq v4, v5, :cond_2

    .line 282
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 285
    :cond_3
    const/16 v5, 0x5d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 287
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v6

    .line 290
    .end local v0    # "N":I
    .end local v1    # "b":Ljava/lang/StringBuilder;
    .end local v4    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 266
    return-void

    .line 275
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method existsHosts()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getEdgeLightingCondition()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 150
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v3

    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    monitor-exit v3

    .line 152
    return v5

    .line 154
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "host$iterator":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 155
    .local v0, "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    iget v2, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v2

    .end local v0    # "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    :cond_1
    monitor-exit v3

    .line 158
    return v5

    .line 150
    .end local v1    # "host$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method getEdgeLightingState()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 162
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-le v0, v2, :cond_0

    monitor-exit v1

    .line 164
    return v2

    .line 166
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isAvailableEdgeLighting(I)Z
    .locals 7
    .param p1, "condition"    # I

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v3

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ge v2, v5, :cond_0

    monitor-exit v3

    .line 128
    return v4

    .line 130
    :cond_0
    if-ne p1, v6, :cond_1

    monitor-exit v3

    .line 131
    return v5

    .line 133
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "host$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 134
    .local v0, "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    iget v2, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    if-eq v2, v6, :cond_3

    .line 135
    iget v2, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    :cond_3
    monitor-exit v3

    .line 136
    return v5

    .end local v0    # "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    :cond_4
    monitor-exit v3

    .line 139
    return v4

    .line 126
    .end local v1    # "host$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method isEdgeLightingSettingEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x1

    .line 236
    const-string v1, "edge_lighting"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRunning()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->isRunning()Z

    move-result v0

    return v0
.end method

.method onBootCompleted()V
    .locals 4

    .prologue
    .line 59
    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string v3, "onBootCompleted"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const-string v3, "com.samsung.android.app.edgelighting.EdgeLightingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onScreenChanged(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 257
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v3

    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "host$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 259
    .local v0, "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->onScreenChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 257
    .end local v0    # "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    .end local v1    # "host$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "host$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3

    .line 256
    return-void
.end method

.method onSwitchUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 70
    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSwitchUser : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const-string v3, "com.samsung.android.app.edgelighting.EdgeLightingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->register(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 189
    return-void
.end method

.method startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .prologue
    .line 198
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string v1, "startEdgeLighting : edge lighting is disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    .line 197
    return-void
.end method

.method startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p3, "reason"    # I

    .prologue
    .line 206
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v3

    .line 207
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "host$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 208
    .local v0, "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 206
    .end local v0    # "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    .end local v1    # "host$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 212
    .restart local v1    # "host$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 205
    return-void
.end method

.method startTurnOverLighting(Ljava/lang/String;ILcom/samsung/android/edge/SemEdgeLightingInfo;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .prologue
    .line 240
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const-string v3, "com.samsung.android.app.edgelighting.EdgeLightingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    if-eqz p1, :cond_0

    .line 243
    const-string v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    :cond_0
    const-string v2, "reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    if-eqz p3, :cond_1

    .line 247
    const-string v2, "info"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 250
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method stopEdgeLighting(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string v1, "stopEdgeLighting : edge lighting is disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(Ljava/lang/String;I)V

    .line 216
    return-void
.end method

.method stopEdgeLightingInternal(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 225
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v3

    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "host$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 227
    .local v0, "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->onStopEdgeLighting(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 225
    .end local v0    # "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    .end local v1    # "host$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 231
    .restart local v1    # "host$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 224
    return-void
.end method

.method unbind(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v4

    .line 102
    :try_start_0
    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 103
    :cond_0
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unbind : pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mHosts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    const/4 v0, 0x0

    .line 106
    .local v0, "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0    # "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    .local v2, "temp$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 107
    .local v1, "temp":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    if-eqz v1, :cond_2

    .line 108
    iget-object v3, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    move-object v0, v1

    .local v0, "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    goto :goto_0

    .line 113
    .end local v0    # "host":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    .end local v1    # "temp":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    :cond_3
    if-nez v0, :cond_4

    .line 114
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string v5, "unbind : cannot find the matched host"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 115
    return-void

    .line 117
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 118
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    const-string v5, "unbind."

    invoke-virtual {v3, p2, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_5
    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 100
    return-void

    .line 101
    .end local v2    # "temp$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->unregister(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    monitor-enter v2

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 174
    .local v0, "N":I
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 175
    if-eqz p2, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    :cond_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->startEdgeLighting()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    .line 171
    return-void

    .line 180
    :cond_2
    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->stopEdgeLighting()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
