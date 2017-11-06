.class Lcom/mapps/android/view/AdView$1;
.super Landroid/os/Handler;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$1;->this$0:Lcom/mapps/android/view/AdView;

    .line 196
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/mapps/android/view/AdView$1;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/listner/AdListner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 201
    .local v0, "errorCode":I
    iget-object v1, p0, Lcom/mapps/android/view/AdView$1;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/listner/AdListner;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$1;->this$0:Lcom/mapps/android/view/AdView;

    invoke-interface {v1, v2, v0}, Lcom/mapps/android/listner/AdListner;->onFailedToReceive(Landroid/view/View;I)V

    .line 205
    .end local v0    # "errorCode":I
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 206
    return-void

    .line 203
    :cond_0
    const-string v1, "mAdListner is null"

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
