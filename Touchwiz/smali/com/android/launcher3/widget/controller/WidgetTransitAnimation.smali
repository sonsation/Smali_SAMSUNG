.class public Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;
.super Ljava/lang/Object;
.source "WidgetTransitAnimation.java"


# instance fields
.field private mResources:Landroid/content/res/Resources;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut90:Landroid/view/animation/Interpolator;

.field private mStageAnimator:Landroid/animation/AnimatorSet;

.field private final mWidgetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x23

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut90:Landroid/view/animation/Interpolator;

    .line 35
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 41
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mResources:Landroid/content/res/Resources;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private cleanupAnimation()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 183
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 184
    return-void
.end method

.method private getAnimDuration(II)J
    .locals 2
    .param p1, "toStage"    # I
    .param p2, "fromStage"    # I

    .prologue
    const/4 v0, 0x4

    .line 287
    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 290
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method private getEnterWidgetAnimFromFolder(Landroid/animation/AnimatorSet;Landroid/view/View;J)V
    .locals 11
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "duration"    # J

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 94
    if-nez p2, :cond_0

    .line 133
    :goto_0
    return-void

    .line 97
    :cond_0
    new-array v1, v6, [I

    .line 98
    .local v1, "iconLoc":[I
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 99
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    aget v4, v1, v7

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 100
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    aget v4, v1, v8

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 101
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 102
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleX(F)V

    .line 103
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    .line 105
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 106
    .local v0, "alphaAnim":Landroid/animation/Animator;
    invoke-virtual {v0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 107
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 110
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 111
    .local v2, "scaleAnimSet":Landroid/animation/AnimatorSet;
    new-array v3, v6, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const-string v5, "scaleX"

    new-array v6, v8, [F

    aput v9, v6, v7

    .line 112
    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const-string v5, "scaleY"

    new-array v6, v8, [F

    aput v9, v6, v7

    .line 113
    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    .line 111
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 114
    invoke-virtual {v2, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 115
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 116
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 118
    new-instance v3, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$1;-><init>(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)V

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getEnterWidgetAnimFromHome(Landroid/animation/AnimatorSet;J)V
    .locals 4
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "duration"    # J

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 189
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060009

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 190
    .local v0, "enterAnimator":Landroid/animation/Animator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 191
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 192
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$3;-><init>(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 216
    return-void
.end method

.method private getEnterWidgetDefaultAnim(Landroid/animation/AnimatorSet;J)V
    .locals 4
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "duration"    # J

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 249
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060008

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 250
    .local v0, "enterAnimator":Landroid/animation/Animator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 251
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 253
    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$5;-><init>(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    return-void
.end method

.method private getExitWidgetAnimToFolder(Landroid/animation/AnimatorSet;JLandroid/view/View;)V
    .locals 14
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "duration"    # J
    .param p4, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x2

    const/high16 v11, 0x3fc00000    # 1.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 136
    if-nez p4, :cond_0

    .line 176
    :goto_0
    return-void

    .line 140
    :cond_0
    new-array v3, v12, [I

    .line 141
    .local v3, "iconLoc":[I
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 142
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    aget v6, v3, v9

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotX(F)V

    .line 143
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    aget v6, v3, v10

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotY(F)V

    .line 144
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleX(F)V

    .line 145
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleY(F)V

    .line 147
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v10, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 148
    .local v2, "alphaAnim":Landroid/animation/Animator;
    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 149
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 150
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 152
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 153
    .local v4, "scaleAnimSet":Landroid/animation/AnimatorSet;
    new-array v5, v12, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const-string v7, "scaleX"

    new-array v8, v10, [F

    aput v11, v8, v9

    .line 154
    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const-string v7, "scaleY"

    new-array v8, v10, [F

    aput v11, v8, v9

    .line 155
    invoke-static {v6, v7, v8}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    .line 153
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 156
    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 157
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 158
    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 160
    new-instance v5, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$2;

    invoke-direct {v5, p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$2;-><init>(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)V

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getExitWidgetAnimToHome(Landroid/animation/AnimatorSet;J)V
    .locals 4
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "duration"    # J

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06000e

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 220
    .local v0, "exitAnimator":Landroid/animation/Animator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 221
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 223
    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$4;-><init>(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 243
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 244
    return-void
.end method

.method private getExitWidgetDefaultAnim(Landroid/animation/AnimatorSet;J)V
    .locals 4
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "duration"    # J

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06000d

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 270
    .local v0, "exitAnimator":Landroid/animation/Animator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 271
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 272
    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation$6;-><init>(Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 283
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 284
    return-void
.end method


# virtual methods
.method public getEnterWidgetAnimation(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 9
    .param p1, "animated"    # Z
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->cleanupAnimation()V

    .line 48
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget v4, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 50
    .local v4, "fromStage":I
    const-string v5, "KEY_WIDGET_FROM_SETTING"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 51
    .local v1, "fromSetting":Z
    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p2}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 54
    iget v5, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    iget v6, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getAnimDuration(II)J

    move-result-wide v2

    .line 55
    .local v2, "duration":J
    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 56
    const-string v5, "KEY_WIDGET_FOLDER_ICON"

    invoke-virtual {p2, v5}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 57
    .local v0, "anchorView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v5, v0, v2, v3}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getEnterWidgetAnimFromFolder(Landroid/animation/AnimatorSet;Landroid/view/View;J)V

    .line 64
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v2    # "duration":J
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v5

    .line 58
    .restart local v2    # "duration":J
    :cond_1
    if-ne v4, v8, :cond_2

    if-nez v1, :cond_2

    .line 59
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getEnterWidgetAnimFromHome(Landroid/animation/AnimatorSet;J)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getEnterWidgetDefaultAnim(Landroid/animation/AnimatorSet;J)V

    goto :goto_0
.end method

.method public getExitWidgetAnimation(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
    .locals 10
    .param p1, "animated"    # Z
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x4

    .line 68
    invoke-direct {p0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->cleanupAnimation()V

    .line 69
    iget v4, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 70
    .local v4, "toStage":I
    const-string v5, "KEY_WIDGET_FROM_SETTING"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 71
    .local v1, "toSetting":Z
    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p2}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 74
    iget v5, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    iget v6, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getAnimDuration(II)J

    move-result-wide v2

    .line 75
    .local v2, "duration":J
    if-ne v4, v8, :cond_0

    .line 76
    const-string v5, "KEY_WIDGET_FOLDER_ICON"

    invoke-virtual {p2, v5}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 77
    .local v0, "anchorView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v5, v2, v3, v0}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getExitWidgetAnimToFolder(Landroid/animation/AnimatorSet;JLandroid/view/View;)V

    .line 90
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v2    # "duration":J
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v5

    .line 78
    .restart local v2    # "duration":J
    :cond_0
    if-ne v4, v9, :cond_1

    if-nez v1, :cond_1

    .line 79
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getExitWidgetAnimToHome(Landroid/animation/AnimatorSet;J)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getExitWidgetDefaultAnim(Landroid/animation/AnimatorSet;J)V

    goto :goto_0

    .line 84
    .end local v2    # "duration":J
    :cond_2
    if-ne v4, v8, :cond_3

    .line 85
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->mWidgetView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
