.class Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.super Ljava/lang/Object;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventStreamState"
.end annotation


# instance fields
.field private mDeviceId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    .line 798
    return-void
.end method


# virtual methods
.method public deviceIdValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 823
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 830
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    .line 829
    return-void
.end method

.method public shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 853
    const/4 v0, 0x0

    return v0
.end method

.method public shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method public shouldProcessScroll()Z
    .locals 1

    .prologue
    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method public updateDeviceId(I)Z
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 810
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    if-ne v0, p1, :cond_0

    .line 811
    const/4 v0, 0x0

    return v0

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 815
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    .line 816
    const/4 v0, 0x1

    return v0
.end method
