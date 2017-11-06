.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;
.super Ljava/lang/Object;
.source "LyricsView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "rv"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 74
    return-void
.end method

.method public onTouchEvent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "rv"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    return-void
.end method
