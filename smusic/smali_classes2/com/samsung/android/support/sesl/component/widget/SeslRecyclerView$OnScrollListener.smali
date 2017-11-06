.class public abstract Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnScrollListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 11081
    return-void
.end method

.method public onScrolled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 11094
    return-void
.end method
