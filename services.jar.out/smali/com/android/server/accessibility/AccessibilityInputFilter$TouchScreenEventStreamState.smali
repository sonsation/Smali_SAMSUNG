.class Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchScreenEventStreamState"
.end annotation


# instance fields
.field private mHoverSequenceStarted:Z

.field private mTouchSequenceStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 898
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    .line 899
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->reset()V

    .line 898
    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 904
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 905
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    .line 906
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    .line 903
    return-void
.end method

.method public final shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 912
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 913
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    if-eqz v2, :cond_0

    .line 914
    return v0

    .line 916
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    .line 917
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    return v0

    :cond_1
    move v0, v1

    .line 916
    goto :goto_0

    .line 921
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    if-eqz v2, :cond_3

    .line 922
    return v0

    .line 924
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    .line 925
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    return v0

    :cond_4
    move v0, v1

    .line 924
    goto :goto_1
.end method
