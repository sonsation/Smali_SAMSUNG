.class public Lcom/google/android/gms/tagmanager/Container;
.super Ljava/lang/Object;


# instance fields
.field private final auF:Ljava/lang/String;

.field private auH:Lcom/google/android/gms/tagmanager/zzcw;


# direct methods
.method private declared-synchronized zzcam()Lcom/google/android/gms/tagmanager/zzcw;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->auH:Lcom/google/android/gms/tagmanager/zzcw;
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
.method public getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->auF:Ljava/lang/String;

    return-object v0
.end method

.method release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->auH:Lcom/google/android/gms/tagmanager/zzcw;

    return-void
.end method

.method public zzog(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzcam()Lcom/google/android/gms/tagmanager/zzcw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzcw;->zzog(Ljava/lang/String;)V

    return-void
.end method
