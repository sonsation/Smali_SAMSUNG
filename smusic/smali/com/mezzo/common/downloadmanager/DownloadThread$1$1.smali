.class Lcom/mezzo/common/downloadmanager/DownloadThread$1$1;
.super Ljava/lang/Object;
.source "DownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mezzo/common/downloadmanager/DownloadThread$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mezzo/common/downloadmanager/DownloadThread$1;

.field private final synthetic val$onReadyCompleteListener:Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;


# direct methods
.method constructor <init>(Lcom/mezzo/common/downloadmanager/DownloadThread$1;Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$1$1;->this$1:Lcom/mezzo/common/downloadmanager/DownloadThread$1;

    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$1$1;->val$onReadyCompleteListener:Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadThread$1$1;->val$onReadyCompleteListener:Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;

    invoke-interface {v0}, Lcom/mezzo/common/downloadmanager/DownloadThread$OnReadyCompleteListener;->OnReady()V

    .line 84
    return-void
.end method
