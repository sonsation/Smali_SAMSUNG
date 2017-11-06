.class public final Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;
.super Ljava/lang/Object;
.source "SeslAsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;,
        Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$BasicInflater;,
        Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;,
        Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$OnInflateFinishedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslAsyncLayoutInflater"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field mInflateThread:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$1;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 76
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$BasicInflater;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$BasicInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;->mHandler:Landroid/os/Handler;

    .line 78
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;->getInstance()Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;->mInflateThread:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;

    .line 79
    return-void
.end method


# virtual methods
.method public inflate(ILandroid/view/ViewGroup;Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$OnInflateFinishedListener;)V
    .locals 3
    .param p1, "resid"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "callback"    # Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$OnInflateFinishedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 84
    if-nez p3, :cond_0

    .line 85
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "callback argument may not be null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;->mInflateThread:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;->obtainRequest()Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;

    move-result-object v0

    .line 88
    .local v0, "request":Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;
    iput-object p0, v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->inflater:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;

    .line 89
    iput p1, v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->resid:I

    .line 90
    iput-object p2, v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    .line 91
    iput-object p3, v0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;->callback:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$OnInflateFinishedListener;

    .line 92
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;->mInflateThread:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateThread;->enqueue(Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;)V

    .line 93
    return-void
.end method
