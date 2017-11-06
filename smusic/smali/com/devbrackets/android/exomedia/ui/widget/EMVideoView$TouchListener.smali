.class public Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$TouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EMVideoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchListener"
.end annotation


# instance fields
.field protected gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;


# direct methods
.method public constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 790
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$TouchListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 791
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$TouchListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 792
    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 802
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$TouchListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$TouchListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->show()V

    .line 805
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$TouchListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$TouchListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelayed(J)V

    .line 810
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 796
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$TouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 797
    const/4 v0, 0x1

    return v0
.end method
