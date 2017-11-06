.class Lcom/samsung/android/app/music/service/milk/SyncManager$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/SyncManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/SyncManager;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager$1;->this$0:Lcom/samsung/android/app/music/service/milk/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager$1;->this$0:Lcom/samsung/android/app/music/service/milk/SyncManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/milk/SyncManager;->access$000(Lcom/samsung/android/app/music/service/milk/SyncManager;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
