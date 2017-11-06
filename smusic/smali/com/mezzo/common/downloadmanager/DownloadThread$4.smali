.class Lcom/mezzo/common/downloadmanager/DownloadThread$4;
.super Ljava/lang/Object;
.source "DownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadThread;->resultListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadThread;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$4;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    iput p2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$4;->val$result:I

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$4;->this$0:Lcom/mezzo/common/downloadmanager/DownloadThread;

    invoke-virtual {v0}, Lcom/mezzo/common/downloadmanager/DownloadThread;->getListener()Lcom/mezzo/common/downloadmanager/DownloadResultListener;

    move-result-object v0

    iget v1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$4;->val$result:I

    invoke-interface {v0, v1}, Lcom/mezzo/common/downloadmanager/DownloadResultListener;->downloadResult(I)V

    .line 259
    return-void
.end method
