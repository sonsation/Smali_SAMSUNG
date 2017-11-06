.class public Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SimpleOnItemTouchListener;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnItemTouchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "rv"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 11052
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 11061
    return-void
.end method

.method public onTouchEvent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "rv"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 11057
    return-void
.end method
