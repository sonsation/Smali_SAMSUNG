.class abstract Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
.super Ljava/lang/Object;
.source "CoverServiceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CoverServiceInfo"
.end annotation


# static fields
.field private static final RETRY_CONNECT_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CoverServiceInfo"


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private final component:Landroid/content/ComponentName;

.field private final connection:Landroid/content/ServiceConnection;

.field private disconnectionCount:I

.field protected final service:Landroid/os/IInterface;

.field final synthetic this$0:Lcom/android/server/cover/CoverServiceManager;

.field private final type:I


# direct methods
.method static synthetic -get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->type:I

    return v0
.end method

.method constructor <init>(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/cover/CoverServiceManager;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "connection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 685
    const-string v0, "CoverServiceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoverServiceInfo : component = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    iput-object p2, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 688
    iput p3, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->type:I

    .line 689
    iput-object p4, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->binder:Landroid/os/IBinder;

    .line 690
    invoke-virtual {p0, p4}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    .line 691
    iput-object p5, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 692
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    .line 683
    return-void
.end method


# virtual methods
.method abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public binderDied()V
    .locals 3

    .prologue
    .line 704
    const-string v0, "CoverServiceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager;->-get6(Lcom/android/server/cover/CoverServiceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 706
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v0, p0}, Lcom/android/server/cover/CoverServiceManager;->-wrap7(Lcom/android/server/cover/CoverServiceManager;Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 703
    return-void

    .line 705
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method disconnect()Z
    .locals 2

    .prologue
    .line 716
    iget v0, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    .line 717
    iget v0, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract onCoverAppStateChanged(Z)I
.end method

.method abstract systemReady()V
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 712
    const-string v0, "CoverServiceInfo[component=%s, type=%s, service=%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 3

    .prologue
    .line 721
    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 722
    const-string v0, "CoverServiceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbind : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    return-void
.end method

.method abstract updateCoverState(Lcom/samsung/android/cover/CoverState;)V
.end method
