.class public Lcom/android/systemui/statusbar/policy/DeadZone;
.super Landroid/view/View;
.source "DeadZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DeadZone$1;
    }
.end annotation


# instance fields
.field private final mDebugFlash:Ljava/lang/Runnable;

.field private mDecay:I

.field private mFlashFrac:F

.field private mHold:I

.field private mLastPokeTime:J

.field private mShouldFlash:Z

.field private mSizeMax:I

.field private mSizeMin:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/DeadZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    .line 59
    new-instance v4, Lcom/android/systemui/statusbar/policy/DeadZone$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/DeadZone$1;-><init>(Lcom/android/systemui/statusbar/policy/DeadZone;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDebugFlash:Ljava/lang/Runnable;

    .line 73
    sget-object v4, Lcom/android/systemui/R$styleable;->DeadZone:[I

    invoke-virtual {p1, p2, v4, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mHold:I

    .line 77
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDecay:I

    .line 79
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMin:I

    .line 80
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMax:I

    .line 82
    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 83
    .local v1, "index":I
    if-ne v1, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mVertical:Z

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/DeadZone;->setFlashOnTouchCapture(Z)V

    .line 70
    return-void

    :cond_0
    move v2, v3

    .line 83
    goto :goto_0
.end method

.method private getSize(J)F
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 97
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMax:I

    if-nez v2, :cond_0

    .line 98
    const/4 v2, 0x0

    return v2

    .line 99
    :cond_0
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mLastPokeTime:J

    sub-long v0, p1, v2

    .line 100
    .local v0, "dt":J
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mHold:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDecay:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 101
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMin:I

    int-to-float v2, v2

    return v2

    .line 102
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mHold:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 103
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMax:I

    int-to-float v2, v2

    return v2

    .line 104
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMax:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMin:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mHold:I

    int-to-long v4, v4

    sub-long v4, v0, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDecay:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DeadZone;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    return v2
.end method

.method static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "f"    # F

    .prologue
    .line 93
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "can"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 175
    :cond_0
    return-void

    .line 178
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/DeadZone;->getSize(J)F

    move-result v2

    float-to-int v1, v2

    .line 179
    .local v1, "size":I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mVertical:Z

    if-eqz v2, :cond_3

    move v2, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mVertical:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .end local v1    # "size":I
    :cond_2
    invoke-virtual {p1, v4, v4, v2, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 180
    iget v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    .line 181
    .local v0, "frac":F
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/16 v3, 0xdd

    const/16 v4, 0xee

    const/16 v5, 0xaa

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 173
    return-void

    .line 179
    .end local v0    # "frac":F
    .restart local v1    # "size":I
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 123
    return v4

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 127
    .local v0, "action":I
    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->poke(Landroid/view/MotionEvent;)V

    .line 153
    :cond_1
    return v4

    .line 129
    :cond_2
    if-nez v0, :cond_1

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/statusbar/policy/DeadZone;->getSize(J)F

    move-result v5

    float-to-int v2, v5

    .line 136
    .local v2, "size":I
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mVertical:Z

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    :goto_0
    move v1, v3

    .line 137
    .local v1, "consumeEvent":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 139
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 140
    return v4

    .end local v1    # "consumeEvent":Z
    :cond_3
    move v1, v4

    .line 136
    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    goto :goto_0

    .line 144
    .restart local v1    # "consumeEvent":Z
    :cond_5
    const-string/jumbo v4, "DeadZone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "consuming errant click: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    if-eqz v4, :cond_6

    .line 147
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDebugFlash:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/DeadZone;->post(Ljava/lang/Runnable;)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeadZone;->postInvalidate()V

    .line 150
    :cond_6
    return v3
.end method

.method public poke(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mLastPokeTime:J

    .line 160
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeadZone;->postInvalidate()V

    .line 156
    :cond_0
    return-void
.end method

.method public setFlashOnTouchCapture(Z)V
    .locals 1
    .param p1, "dbg"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeadZone;->postInvalidate()V

    .line 107
    return-void
.end method
