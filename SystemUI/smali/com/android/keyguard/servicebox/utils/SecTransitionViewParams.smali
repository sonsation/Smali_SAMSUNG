.class public Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;
.super Ljava/lang/Object;
.source "SecTransitionViewParams.java"


# instance fields
.field public h:F

.field public locationOnScreenX:F

.field public locationOnScreenY:F

.field public w:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->x:F

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->y:F

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->w:F

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->h:F

    .line 36
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 37
    .local v0, "viewLoc":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 38
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->locationOnScreenX:F

    .line 39
    const/4 v1, 0x1

    aget v1, v0, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionViewParams;->locationOnScreenY:F

    .line 28
    return-void
.end method
