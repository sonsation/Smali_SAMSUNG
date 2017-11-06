.class Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$1;
.super Ljava/lang/Object;
.source "SeslAsyncLayoutInflater.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$1;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;

    .line 99
    .local v0, "request":Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$1;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    .line 103
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->callback:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$OnInflateFinishedListener;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    iget v3, v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$OnInflateFinishedListener;->onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V

    .line 105
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$1;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;->mInflateThread:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;->releaseRequest(Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;)V

    .line 106
    const/4 v1, 0x1

    return v1
.end method
