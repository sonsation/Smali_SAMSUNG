.class Lcom/mapps/android/view/AdVideoPlayer$3;
.super Landroid/os/Handler;
.source "AdVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 241
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$5(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mapps/android/listner/AdVideoPlayerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 245
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 246
    .local v0, "errorCode":I
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$5(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mapps/android/listner/AdVideoPlayerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-interface {v1, v2, v0}, Lcom/mapps/android/listner/AdVideoPlayerListener;->onAdPlayerReceive(Landroid/view/View;I)V

    .line 250
    .end local v0    # "errorCode":I
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 251
    return-void

    .line 248
    :cond_0
    const-string v1, "mAdPlayerListner is null"

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
