.class Lcom/mezzo/common/downloadmanager/DownloadListManger$1;
.super Landroid/os/Handler;
.source "DownloadListManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mezzo/common/downloadmanager/DownloadListManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadListManger;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadListManger$1;->this$0:Lcom/mezzo/common/downloadmanager/DownloadListManger;

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 84
    return-void
.end method
