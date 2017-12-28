.class public Lcom/android/launcher3/home/SwipeAffordance;
.super Landroid/widget/FrameLayout;
.source "SwipeAffordance.java"


# static fields
.field public static final KEY_APPS_VISIT_COUNT:Ljava/lang/String; = "KEY_APPS_VISIT_COUNT_BY_SWIPE"

.field public static final KEY_EXIT_TIME_STAMP:Ljava/lang/String; = "KEY_AFFORDANCE_EXIT_TIME_STAMP"

.field public static final MAX_APPS_VISIT_COUNT:I = 0x19

.field public static final TAG:Ljava/lang/String; = "SwipeAffordance"


# instance fields
.field private final ANIM_START_DELAY:I

.field private final CANCEL_ANIM_DURATION:I

.field private final GAP_OF_ARROW_START_ANIM:I

.field private final SHOW_ANIM_ALPHA:F

.field private final TEXT_HIDE_ANIM_DURATION:I

.field private final TEXT_HIDE_ANIM_START_DELAY:I

.field private final TEXT_SHOW_ANIM_DURATION:I

.field private mAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mArrowFrameView:Landroid/view/View;

.field private mArrowView1:Landroid/widget/ImageView;

.field private mArrowView2:Landroid/widget/ImageView;

.field private mCancelAnim:Landroid/animation/AnimatorSet;

.field private mCancelAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

.field private mExitTime:J

.field private mIsStartedAnim:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOneTimeAnim:Landroid/animation/AnimatorSet;

.field private mTextReduceSize:F

.field private mTextSize:F

.field private mTextTranslateY:F

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewMaxWidth:I

.field private mThreeTimesAnim:Landroid/animation/AnimatorSet;

.field private mVisitCountToApps:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/SwipeAffordance;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/SwipeAffordance;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x12c

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->ANIM_START_DELAY:I

    .line 56
    const/16 v1, 0x29b

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->TEXT_SHOW_ANIM_DURATION:I

    .line 57
    iput v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->TEXT_HIDE_ANIM_DURATION:I

    .line 58
    iput v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->CANCEL_ANIM_DURATION:I

    .line 59
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->TEXT_HIDE_ANIM_START_DELAY:I

    .line 60
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->GAP_OF_ARROW_START_ANIM:I

    .line 62
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->SHOW_ANIM_ALPHA:F

    .line 66
    iput v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    .line 82
    iput-boolean v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mIsStartedAnim:Z

    .line 356
    new-instance v1, Lcom/android/launcher3/home/SwipeAffordance$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/SwipeAffordance$1;-><init>(Lcom/android/launcher3/home/SwipeAffordance;)V

    iput-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 373
    new-instance v1, Lcom/android/launcher3/home/SwipeAffordance$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/SwipeAffordance$2;-><init>(Lcom/android/launcher3/home/SwipeAffordance;)V

    iput-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    .line 99
    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextTranslateY:F

    .line 100
    const v1, 0x7f0a0159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextReduceSize:F

    .line 101
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    const v2, 0x7f0a0026

    .line 102
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x7f0a0000

    .line 103
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextViewMaxWidth:I

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/SwipeAffordance;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/SwipeAffordance;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/SwipeAffordance;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher3/home/SwipeAffordance;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/SwipeAffordance;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mIsStartedAnim:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/SwipeAffordance;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/SwipeAffordance;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->endAnimators()V

    return-void
.end method

.method private endAnimators()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 217
    :cond_1
    return-void
.end method

.method private getArrowAnimSet()Landroid/animation/AnimatorSet;
    .locals 6

    .prologue
    .line 238
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 240
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060013

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 241
    .local v1, "arrowAnim":Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060011

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 242
    .local v2, "arrowAnim1":Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060012

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    .line 244
    .local v3, "arrowAnim2":Landroid/animation/Animator;
    iget-object v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowFrameView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 245
    const/16 v4, 0x22

    invoke-static {v4}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    iget-object v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 248
    iget-object v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 249
    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 251
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 253
    return-object v0
.end method

.method private getCancelAnimator()Landroid/animation/ObjectAnimator;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 271
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 272
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    .line 271
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 273
    .local v0, "pvhHideAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v4

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 274
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method private getHideObjectAnimator()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 265
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 266
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 265
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 267
    .local v0, "pvhHideAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1

    .line 266
    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x0
    .end array-data
.end method

.method private getShowObjectAnimator()Landroid/animation/ObjectAnimator;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 257
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 258
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    .line 257
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 259
    .local v0, "pvhShowAlpha":Landroid/animation/PropertyValuesHolder;
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 260
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [F

    iget v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextTranslateY:F

    aput v4, v3, v6

    const/4 v4, 0x0

    aput v4, v3, v7

    .line 259
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 261
    .local v1, "pvhShowTransY":Landroid/animation/PropertyValuesHolder;
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    return-object v2

    .line 258
    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method private getTextShowHideAnimSet()Landroid/animation/AnimatorSet;
    .locals 6

    .prologue
    .line 220
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 222
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getShowObjectAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 223
    .local v2, "showAnim":Landroid/animation/ObjectAnimator;
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getHideObjectAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 225
    .local v1, "hideAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x29b

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 226
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 228
    const/16 v3, 0x22

    invoke-static {v3}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    const/16 v3, 0x1e

    invoke-static {v3}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 232
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 234
    return-object v0
.end method

.method private isAffordanceTime()Z
    .locals 4

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnderVisitCount()Z
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needToCreateAffordance(Lcom/android/launcher3/Launcher;)Z
    .locals 5
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 351
    .local v0, "currentTimeMillis":J
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "KEY_APPS_VISIT_COUNT_BY_SWIPE"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x19

    if-ge v2, v3, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "KEY_AFFORDANCE_EXIT_TIME_STAMP"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setAnimatingString()V
    .locals 3

    .prologue
    .line 304
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 305
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getNotificationPanelExpansionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    const v2, 0x7f0900bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "animatingString":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 327
    :goto_1
    return-void

    .line 309
    .end local v0    # "animatingString":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isATTModel()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0900be

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "animatingString":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "animatingString":Ljava/lang/String;
    :cond_1
    const v2, 0x7f0900bd

    goto :goto_2

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 314
    const v2, 0x7f0900c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "animatingString":Ljava/lang/String;
    goto :goto_0

    .line 316
    .end local v0    # "animatingString":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isATTModel()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0900c1

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "animatingString":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "animatingString":Ljava/lang/String;
    :cond_4
    const v2, 0x7f0900c0

    goto :goto_3

    .line 324
    .restart local v0    # "animatingString":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 326
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setSuitableTextSize()V

    goto :goto_1
.end method

.method private setCountForSwipe()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_APPS_VISIT_COUNT_BY_SWIPE"

    const/4 v2, -0x1

    .line 331
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    .line 332
    const-string v0, "SwipeAffordance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create and show swipe affordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method

.method private setExitTime()V
    .locals 8

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "KEY_AFFORDANCE_EXIT_TIME_STAMP"

    const-wide/16 v6, -0x1

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 337
    .local v2, "exitTime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xa4cb800

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    .line 340
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "KEY_AFFORDANCE_EXIT_TIME_STAMP"

    iget-wide v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 346
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    const-string v1, "SwipeAffordance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set SwipeAffordance exit time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 344
    :cond_0
    iput-wide v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    goto :goto_0
.end method

.method private setSuitableTextSize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 121
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 122
    .local v1, "paint":Landroid/graphics/Paint;
    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 123
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 124
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 126
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextViewMaxWidth:I

    if-gt v2, v3, :cond_0

    .line 139
    :goto_0
    return-void

    .line 130
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextViewMaxWidth:I

    if-le v2, v3, :cond_1

    .line 131
    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    iget v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextReduceSize:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    .line 132
    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    .line 134
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 133
    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_1

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 138
    const-string v2, "SwipeAffordance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reduced TextSize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method appsVisitCountUp()V
    .locals 3

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->isUnderVisitCount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    .line 296
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 297
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "KEY_APPS_VISIT_COUNT_BY_SWIPE"

    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 300
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method changeColorForBg(Z)V
    .locals 3
    .param p1, "whiteBg"    # Z

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextViewColorForBg(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 279
    return-void
.end method

.method isStartedAnim()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mIsStartedAnim:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 109
    const v0, 0x7f1100f4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f1100f1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowFrameView:Landroid/view/View;

    .line 112
    const v0, 0x7f1100f3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f1100f2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    .line 115
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->changeColorForBg(Z)V

    .line 116
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setSuitableTextSize()V

    .line 117
    return-void
.end method

.method setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/view/PageIndicator;)V
    .locals 9
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "pageIndicator"    # Lcom/android/launcher3/common/view/PageIndicator;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 142
    iput-object p1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 144
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    const/16 v1, 0x8

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-virtual {p2, v5}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v5

    .line 146
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getArrowAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getTextShowHideAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v6

    .line 147
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getArrowAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getTextShowHideAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 148
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getArrowAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getTextShowHideAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 149
    invoke-virtual {p2, v4}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v1, v2

    .line 145
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 153
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    new-array v1, v8, [Landroid/animation/Animator;

    invoke-virtual {p2, v5}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v5

    .line 155
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getArrowAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getTextShowHideAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v6

    .line 156
    invoke-virtual {p2, v4}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v7

    .line 154
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 160
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getCancelAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 162
    invoke-virtual {p2, v4}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v4

    .line 161
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 165
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnim:Landroid/animation/AnimatorSet;

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnim:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getCancelAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 169
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setCountForSwipe()V

    .line 170
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setExitTime()V

    .line 171
    return-void
.end method

.method startAnim()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 174
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->isUnderVisitCount()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->isAffordanceTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 177
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "animator_duration_scale"

    .line 176
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 178
    .local v0, "animDurationScale":F
    cmpl-float v1, v0, v3

    if-nez v1, :cond_1

    .line 179
    const-string v1, "SwipeAffordance"

    const-string v2, "SwipeAffordance will not show due to value of ANIMATOR_DURATION_SCALE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v0    # "animDurationScale":F
    :cond_0
    :goto_0
    return-void

    .line 182
    .restart local v0    # "animDurationScale":F
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->endAnimators()V

    .line 183
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setAnimatingString()V

    .line 184
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/SwipeAffordance;->setAlpha(F)V

    .line 188
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 189
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 190
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mIsStartedAnim:Z

    .line 193
    iget v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    if-gez v1, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->appsVisitCountUp()V

    .line 195
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method startCancelAnim(Z)V
    .locals 1
    .param p1, "needToShowIndicator"    # Z

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
