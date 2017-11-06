.class Lcom/mezzo/common/downloadmanager/DownloadThread$2;
.super Ljava/lang/Object;
.source "DownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadThread;->exists(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadThread;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$2;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$2;->val$handler:Landroid/os/Handler;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 105
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$2;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-virtual {v2}, Lcom/mezzo/common/downloadmanager/DownloadThread;->requestUrlForFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 106
    .local v0, "is":Z
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 107
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    return-void
.end method
