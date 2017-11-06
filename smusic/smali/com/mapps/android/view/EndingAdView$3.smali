.class Lcom/mapps/android/view/EndingAdView$3;
.super Landroid/os/Handler;
.source "EndingAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/EndingAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$3;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 329
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 332
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$3;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$4(Lcom/mapps/android/view/EndingAdView;)Lcom/mapps/android/listner/AdListner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 333
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 334
    .local v0, "errorCode":I
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$3;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$4(Lcom/mapps/android/view/EndingAdView;)Lcom/mapps/android/listner/AdListner;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$3;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-interface {v1, v2, v0}, Lcom/mapps/android/listner/AdListner;->onFailedToReceive(Landroid/view/View;I)V

    .line 338
    .end local v0    # "errorCode":I
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 339
    return-void

    .line 336
    :cond_0
    const-string v1, "mAdListner is null"

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
