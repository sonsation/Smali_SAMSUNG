.class Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$InflateRequest;
.super Ljava/lang/Object;
.source "SeslAsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateRequest"
.end annotation


# instance fields
.field callback:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater$OnInflateFinishedListener;

.field inflater:Lcom/samsung/android/support/sesl/core/view/SeslAsyncLayoutInflater;

.field parent:Landroid/view/ViewGroup;

.field resid:I

.field view:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method
