.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$1;,
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final AUTO_BRIGHTNESS_RATE_FOR_AUTO_BRIGHTNESS_V3:I = 0x4

.field private static final FORCE_1STEP_DELTA_TIME:F = 0.016f

.field private static final MANUAL_BRIGHTNESS_STEP_FOR_AUTO_BRIGHTNESS_V3:I = 0xa

.field private static final TAG:Ljava/lang/String; = "RampAnimator"


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mDecreasing:Z

.field private mDynamicAmountForManualBrightness:F

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTarget:I

.field private mTargetValue:I


# direct methods
.method static synthetic -get0(Lcom/android/server/display/RampAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/RampAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mDecreasing:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/RampAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDynamicAmountForManualBrightness:F

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/RampAnimator;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic -get6(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/display/RampAnimator;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/RampAnimator;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 171
    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 61
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 62
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 59
    return-void
.end method

.method private cancelAnimationCallback()V
    .locals 4

    .prologue
    .line 168
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method private postAnimationCallback()V
    .locals 4

    .prologue
    .line 164
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 163
    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .locals 5
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 77
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTarget:I

    .line 78
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-eqz v1, :cond_1

    .line 79
    if-lez p1, :cond_0

    .line 80
    mul-int/lit8 p1, p1, 0x64

    .line 82
    :cond_0
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-ge p1, v1, :cond_6

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mDecreasing:Z

    .line 83
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mDynamicAmountForManualBrightness:F

    .line 89
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v1, :cond_2

    if-gtz p2, :cond_8

    .line 90
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v1, :cond_7

    .line 91
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 92
    iput v3, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 93
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 94
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 95
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v4, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v1, v4, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 96
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v1, :cond_4

    .line 97
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 98
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v1, :cond_5

    .line 101
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-interface {v1}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    .line 103
    :cond_5
    return v2

    :cond_6
    move v1, v3

    .line 82
    goto :goto_0

    .line 105
    :cond_7
    return v3

    .line 115
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v1, :cond_9

    .line 116
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    if-le p2, v1, :cond_c

    .line 119
    :cond_9
    :goto_1
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 122
    :cond_a
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-eq v1, p1, :cond_e

    const/4 v0, 0x1

    .line 123
    .local v0, "changed":Z
    :goto_2
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 126
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v1, :cond_b

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v1, :cond_b

    .line 127
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 128
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 129
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 130
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    .line 133
    :cond_b
    return v0

    .line 117
    .end local v0    # "changed":Z
    :cond_c
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt p1, v1, :cond_d

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-le v1, v3, :cond_9

    .line 118
    :cond_d
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v1, v3, :cond_a

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v1, p1, :cond_a

    goto :goto_1

    .line 122
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_2
.end method

.method public getTarget()I
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTarget:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 151
    return-void
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/display/RampAnimator$Listener;

    .prologue
    .line 160
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 159
    return-void
.end method
