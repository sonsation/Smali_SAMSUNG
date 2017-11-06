.class Lcom/mezzo/common/downloadmanager/DownloadThread$1;
.super Ljava/lang/Object;
.source "DownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadThread;->makeFodeler(Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

.field private final synthetic val$onReadyCompleteListener:Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadThread;Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$1;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$1;->val$onReadyCompleteListener:Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$1;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$1;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-virtual {v2}, Lcom/mezzo/common/downloadmanager/DownloadThread;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$1;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadThread;->access$0(Lcom/mezzo/common/downloadmanager/DownloadThread;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mezzo/common/downloadmanager/DownloadThread;->access$1(Lcom/mezzo/common/downloadmanager/DownloadThread;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$1;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$1;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-static {v2}, Lcom/mezzo/common/downloadmanager/DownloadThread;->access$2(Lcom/mezzo/common/downloadmanager/DownloadThread;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mezzo/common/downloadmanager/DownloadThread;->access$3(Lcom/mezzo/common/downloadmanager/DownloadThread;Ljava/io/File;)V

    .line 76
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$1;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-static {v0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->access$4(Lcom/mezzo/common/downloadmanager/DownloadThread;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$1;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-static {v0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->access$4(Lcom/mezzo/common/downloadmanager/DownloadThread;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$1;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-virtual {v0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mezzo/common/downloadmanager/DownloadThread$1$1;

    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$1;->val$onReadyCompleteListener:Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;

    invoke-direct {v1, p0, v2}, Lcom/mezzo/common/downloadmanager/DownloadThread$1$1;-><init>(Lcom/mezzo/common/downloadmanager/DownloadThread$1;Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method
