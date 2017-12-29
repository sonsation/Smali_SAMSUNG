.class public Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyRepository.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "EdgeLightingPolicyRepository"


# instance fields
.field private mRepository:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/edge/EdgeLightingPolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->DEBUG:Z

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    .line 16
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 34
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-EdgeLightingPolicyInfo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v3

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 61
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicyInfo;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicyInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    invoke-virtual {v2}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 59
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicyInfo;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicyInfo;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 65
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicyInfo;>;>;"
    :cond_0
    :try_start_1
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 57
    return-void
.end method

.method public getPolicyInfoWithComponentName(Landroid/content/ComponentName;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "EdgeLightingPolicyRepository"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePolicy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 24
    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
