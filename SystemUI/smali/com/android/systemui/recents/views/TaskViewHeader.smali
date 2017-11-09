.class public Lcom/android/systemui/recents/views/TaskViewHeader;
.super Landroid/widget/FrameLayout;
.source "TaskViewHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;
    }
.end annotation


# instance fields
.field mAppIconView:Landroid/widget/ImageView;

.field mAppInfoView:Landroid/widget/ImageView;

.field mAppOverlayView:Landroid/widget/FrameLayout;

.field mAppTitleView:Landroid/widget/TextView;

.field private mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

.field mCornerRadius:I

.field mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

.field mDarkFreeformIcon:Landroid/graphics/drawable/Drawable;

.field mDarkFullscreenIcon:Landroid/graphics/drawable/Drawable;

.field mDarkInfoIcon:Landroid/graphics/drawable/Drawable;

.field mDarkLockTaskDrawable:Landroid/graphics/drawable/Drawable;

.field mDarkSplitDrawable:Landroid/graphics/drawable/Drawable;

.field mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimLayerPaint:Landroid/graphics/Paint;

.field mDisabledTaskBarBackgroundColor:I

.field mDismissButton:Landroid/widget/ImageView;

.field private mFocusTimerCountDown:Landroid/os/CountDownTimer;

.field mFocusTimerIndicator:Landroid/widget/ProgressBar;

.field mHandler:Landroid/os/Handler;

.field mHeaderBarHeight:I

.field mHeaderButtonPadding:I

.field mHeaderButtonSize:I

.field mHeaderTextSize:I

.field mHighlightHeight:I

.field mIconView:Landroid/widget/ImageView;

.field mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

.field mLightFreeformIcon:Landroid/graphics/drawable/Drawable;

.field mLightFullscreenIcon:Landroid/graphics/drawable/Drawable;

.field mLightInfoIcon:Landroid/graphics/drawable/Drawable;

.field mLightLockTaskDrawable:Landroid/graphics/drawable/Drawable;

.field mLightSplitDrawable:Landroid/graphics/drawable/Drawable;

.field mLockTaskButton:Landroid/widget/ImageView;

.field mMoveTaskButton:Landroid/widget/ImageView;

.field mMoveTaskTargetStackId:I

.field private mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

.field mSecondaryButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mSplitTaskButton:Landroid/widget/ImageView;

.field mTask:Lcom/android/systemui/recents/model/Task;

.field mTaskBarViewDarkTextColor:I

.field mTaskBarViewLightTextColor:I

.field mTaskViewRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mTitleView:Landroid/widget/TextView;

.field private mTmpHSL:[F


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskViewHeader;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/16 v1, 0xff

    const/4 v2, 0x0

    .line 244
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 174
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/ArrayList;

    .line 193
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    .line 219
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskTargetStackId:I

    .line 224
    const/4 v3, 0x3

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    .line 227
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    .line 245
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->setWillNotDraw(Z)V

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 250
    .local v0, "res":Landroid/content/res/Resources;
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v3, :cond_3

    .line 251
    const v3, 0x7f020430

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    .line 252
    const v3, 0x7f02042f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020448

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightSplitDrawable:Landroid/graphics/drawable/Drawable;

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020447

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkSplitDrawable:Landroid/graphics/drawable/Drawable;

    .line 261
    :goto_0
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    if-eqz v3, :cond_4

    .line 262
    const v3, 0x7f0d0354

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    .line 267
    :goto_1
    const v3, 0x7f0d0356

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHighlightHeight:I

    .line 269
    const v3, 0x7f0b00c5

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewLightTextColor:I

    .line 272
    const v3, 0x7f0b00c4

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    .line 274
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-nez v3, :cond_0

    .line 275
    const v3, 0x7f020444

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightFreeformIcon:Landroid/graphics/drawable/Drawable;

    .line 276
    const v3, 0x7f020443

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkFreeformIcon:Landroid/graphics/drawable/Drawable;

    .line 277
    const v3, 0x7f020446

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightFullscreenIcon:Landroid/graphics/drawable/Drawable;

    .line 278
    const v3, 0x7f020445

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkFullscreenIcon:Landroid/graphics/drawable/Drawable;

    .line 282
    :cond_0
    const v3, 0x7f02043f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightInfoIcon:Landroid/graphics/drawable/Drawable;

    .line 283
    const v3, 0x7f02043e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkInfoIcon:Landroid/graphics/drawable/Drawable;

    .line 285
    const v3, 0x7f0b00c0

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 284
    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDisabledTaskBarBackgroundColor:I

    .line 288
    new-instance v3, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    .line 289
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    .line 290
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 291
    new-instance v3, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    .line 292
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 297
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v1, :cond_2

    .line 298
    const v1, 0x7f0202f9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightLockTaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 299
    const v1, 0x7f0202f8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkLockTaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 243
    :cond_2
    return-void

    .line 257
    :cond_3
    const v3, 0x7f020432

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    .line 258
    const v3, 0x7f020431

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 265
    :cond_4
    const v3, 0x7f0d0352

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    goto/16 :goto_1
.end method

.method private hideAppOverlay(Z)V
    .locals 6
    .param p1, "immediate"    # Z

    .prologue
    .line 1140
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    if-nez v3, :cond_0

    .line 1141
    return-void

    .line 1144
    :cond_0
    if-eqz p1, :cond_1

    .line 1145
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1138
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 1148
    .local v1, "x":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 1149
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    .line 1150
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    .line 1149
    invoke-static {v3, v1, v2, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 1151
    .local v0, "revealAnim":Landroid/animation/Animator;
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1152
    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1153
    new-instance v3, Lcom/android/systemui/recents/views/TaskViewHeader$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$3;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1159
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private showAppOverlay()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1093
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 1094
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1095
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    .line 1096
    .local v4, "userId":I
    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1097
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 1098
    return-void

    .line 1102
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    if-nez v7, :cond_1

    .line 1104
    const v7, 0x7f13036c

    .line 1103
    invoke-static {p0, v7}, Lcom/android/systemui/recents/misc/Utilities;->findViewStubById(Landroid/view/View;I)Landroid/view/ViewStub;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    .line 1105
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1106
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const v8, 0x7f1300c0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    .line 1107
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1109
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const v8, 0x7f13036f

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    .line 1110
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1111
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const v8, 0x7f13036e

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    .line 1112
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    invoke-direct {p0, v7, v8, v10, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1116
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v8, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedApplicationLabel(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v7, v7, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v7, :cond_2

    .line 1118
    iget v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewLightTextColor:I

    .line 1117
    :goto_0
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1119
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v8, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedApplicationIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1121
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v7, v7, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v7, :cond_3

    .line 1122
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightInfoIcon:Landroid/graphics/drawable/Drawable;

    .line 1121
    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1124
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1126
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v5, v7, v8

    .line 1127
    .local v5, "x":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v6, v7, v8

    .line 1128
    .local v6, "y":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    .line 1129
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getWidth()I

    move-result v9

    int-to-float v9, v9

    .line 1128
    invoke-static {v7, v5, v6, v8, v9}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    .line 1130
    .local v2, "revealAnim":Landroid/animation/Animator;
    const-wide/16 v8, 0xfa

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1131
    sget-object v7, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1132
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 1091
    return-void

    .line 1118
    .end local v2    # "revealAnim":Landroid/animation/Animator;
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    iget v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    goto :goto_0

    .line 1123
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkInfoIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private showToast(Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1075
    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    .line 1076
    .local v0, "loc":[I
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, v3}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1078
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1079
    aget v2, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    aget v3, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/16 v4, 0x35

    invoke-virtual {v1, v4, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1084
    :goto_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1074
    return-void

    .line 1081
    :cond_0
    aget v2, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    aget v3, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/16 v4, 0x33

    invoke-virtual {v1, v4, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method private updateBackgroundColor(IF)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "dimAlpha"    # F

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 670
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    .line 673
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    invoke-static {p1, v0}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 674
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    aget v1, v1, v5

    sub-float v2, v4, p2

    const/high16 v3, -0x42800000    # -0.0625f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v5

    .line 675
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    invoke-static {v1}, Landroid/support/v4/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    .line 676
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 677
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->invalidate()V

    .line 669
    :cond_0
    return-void
.end method

.method private updateLayoutParams(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 14
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "title"    # Landroid/view/View;
    .param p4, "button"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 368
    .local p3, "secondaryButtons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 369
    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    const/4 v11, -0x1

    const/16 v12, 0x30

    .line 368
    invoke-direct {v5, v11, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 370
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    .line 374
    .local v4, "iconSize":I
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    .line 375
    .local v3, "iconPadding":I
    const/4 v1, 0x0

    .line 376
    .local v1, "dismissMarginEnd":I
    sget-boolean v10, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableLowerAppbarHeight:Z

    if-eqz v10, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 378
    const v11, 0x7f0d034d

    .line 377
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 380
    const v11, 0x7f0d034e

    .line 379
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 381
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 382
    const v11, 0x7f0d0350

    .line 381
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 387
    :cond_0
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 388
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const v10, 0x800013

    .line 387
    invoke-direct {v5, v4, v4, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 390
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget-boolean v10, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableLowerAppbarHeight:Z

    if-eqz v10, :cond_2

    .line 391
    const v10, 0x7f0d034f

    .line 390
    :goto_0
    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 393
    .local v2, "iconMarginStart":I
    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v11, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v12, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v5, v2, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 394
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 396
    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, -0x1

    .line 400
    const/4 v11, -0x2

    const v12, 0x800013

    .line 399
    invoke-direct {v5, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 402
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    add-int v10, v4, v2

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 403
    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    .line 404
    .local v9, "textMarginEnd":I
    if-eqz p3, :cond_1

    .line 405
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    .line 406
    :cond_1
    add-int/2addr v9, v1

    .line 407
    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 408
    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setMinimumHeight(I)V

    .line 410
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    if-eqz p3, :cond_3

    .line 415
    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    add-int v6, v10, v1

    .line 416
    .local v6, "marginEnd":I
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "secondaryButton$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 417
    .local v7, "secondaryButton":Landroid/view/View;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    iget v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    .line 418
    const v12, 0x800015

    .line 417
    invoke-direct {v5, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 419
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 420
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    .line 422
    iget v12, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v13, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    .line 421
    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 423
    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    add-int/2addr v6, v10

    goto :goto_1

    .line 392
    .end local v2    # "iconMarginStart":I
    .end local v6    # "marginEnd":I
    .end local v7    # "secondaryButton":Landroid/view/View;
    .end local v8    # "secondaryButton$iterator":Ljava/util/Iterator;
    .end local v9    # "textMarginEnd":I
    :cond_2
    const v10, 0x7f0d0349

    goto :goto_0

    .line 428
    .restart local v2    # "iconMarginStart":I
    .restart local v9    # "textMarginEnd":I
    :cond_3
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    iget v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    .line 429
    const v12, 0x800015

    .line 428
    invoke-direct {v5, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 430
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 432
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v12, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    .line 434
    iget v13, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    .line 433
    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 367
    return-void
.end method


# virtual methods
.method public bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V
    .locals 5
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "touchExplorationEnabled"    # Z
    .param p3, "disabledInSafeMode"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 685
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 687
    if-eqz p3, :cond_8

    .line 688
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDisabledTaskBarBackgroundColor:I

    .line 690
    .local v0, "primaryColor":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 691
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateBackgroundColor(IF)V

    .line 693
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 694
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_9

    .line 698
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewLightTextColor:I

    .line 697
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 699
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_a

    .line 700
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    .line 699
    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 701
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 706
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 707
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 710
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-eqz v1, :cond_2

    .line 711
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_b

    .line 712
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightSplitDrawable:Landroid/graphics/drawable/Drawable;

    .line 711
    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 713
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->splitDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 720
    :cond_2
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 721
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_c

    .line 722
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightLockTaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 721
    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 723
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 725
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 726
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 735
    :cond_3
    :goto_5
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 736
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 737
    iput v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskTargetStackId:I

    .line 738
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_e

    .line 739
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightFullscreenIcon:Landroid/graphics/drawable/Drawable;

    .line 738
    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 747
    :goto_7
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 749
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 752
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 753
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    if-nez v1, :cond_5

    .line 755
    const v1, 0x7f13036a

    .line 754
    invoke-static {p0, v1}, Lcom/android/systemui/recents/misc/Utilities;->findViewStubById(Landroid/view/View;I)Landroid/view/ViewStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    .line 757
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 759
    iget v2, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iget-boolean v3, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result v2

    .line 760
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 757
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 764
    :cond_6
    if-eqz p2, :cond_7

    .line 765
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 766
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 684
    :cond_7
    return-void

    .line 689
    .end local v0    # "primaryColor":I
    :cond_8
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .restart local v0    # "primaryColor":I
    goto/16 :goto_0

    .line 698
    :cond_9
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    goto/16 :goto_1

    .line 700
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 712
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkSplitDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 722
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkLockTaskDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    .line 728
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_5

    .line 740
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkFullscreenIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 742
    :cond_f
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskTargetStackId:I

    .line 743
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_10

    .line 744
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightFreeformIcon:Landroid/graphics/drawable/Drawable;

    .line 743
    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 745
    :cond_10
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkFreeformIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_8
.end method

.method public cancelFocusTimerIndicator()V
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 628
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 633
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 634
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 626
    :cond_1
    return-void
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method getSecondaryColor(IZ)I
    .locals 2
    .param p1, "primaryColor"    # I
    .param p2, "useLightOverlayColor"    # Z

    .prologue
    .line 645
    if-eqz p2, :cond_0

    const/4 v0, -0x1

    .line 646
    .local v0, "overlayColor":I
    :goto_0
    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v1

    return v1

    .line 645
    .end local v0    # "overlayColor":I
    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 991
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    if-eqz v0, :cond_1

    .line 992
    :cond_0
    return-void

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 997
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v2, v4}, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 989
    :cond_2
    :goto_0
    return-void

    .line 998
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 999
    const-class v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v0}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 1000
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 1003
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "overview_task_dismissed_source"

    invoke-static {v0, v2, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1006
    .end local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    .line 1007
    const-class v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v0}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 1008
    .restart local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-eqz v0, :cond_2

    .line 1009
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-boolean v4, v0, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    .line 1010
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v2, v5}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1011
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v2, v4, v1}, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/views/TaskViewHeader$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$2;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    .line 1017
    const-wide/16 v4, 0x12c

    .line 1012
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1020
    .end local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_5
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    .line 1021
    const-class v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v0}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 1022
    .restart local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskTargetStackId:I

    if-ne v0, v6, :cond_6

    .line 1023
    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1025
    .local v3, "bounds":Landroid/graphics/Rect;
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v8

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 1026
    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskTargetStackId:I

    move v6, v5

    .line 1025
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_0

    .line 1024
    .end local v3    # "bounds":Landroid/graphics/Rect;
    :cond_6
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .restart local v3    # "bounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 1027
    .end local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "bounds":Landroid/graphics/Rect;
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8

    .line 1028
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v2, v4}, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_0

    .line 1029
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_9

    .line 1030
    invoke-direct {p0, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    goto/16 :goto_0

    .line 1032
    :cond_9
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 1033
    const-class v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v0}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 1034
    .restart local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 1035
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    .line 1036
    .local v7, "lockComponentName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1037
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLockTaskBtn(Z)V

    .line 1038
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/recents/model/LockTaskPreference;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/LockTaskPreference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lcom/android/systemui/recents/model/LockTaskPreference;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1040
    :cond_a
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLockTaskBtn(Z)V

    .line 1041
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/recents/model/LockTaskPreference;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/LockTaskPreference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lcom/android/systemui/recents/model/LockTaskPreference;->savePreference(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const v13, 0x7f0d0348

    const v4, 0x7f0d0345

    const v12, 0x7f0d0347

    const v1, 0x7f0d0344

    .line 443
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 447
    .local v11, "res":Landroid/content/res/Resources;
    const v0, 0x7f0d0351

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 448
    .local v10, "headerTextSize":I
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableLowerAppbarHeight:Z

    if-eqz v0, :cond_3

    .line 449
    const v0, 0x7f0d034a

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 450
    .local v7, "headerBarHeight":I
    const v0, 0x7f0d034c

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 451
    .local v8, "headerButtonPadding":I
    const v0, 0x7f0d034b

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 471
    .local v9, "headerButtonSize":I
    :goto_0
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    if-ne v7, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    if-eq v8, v0, :cond_4

    .line 474
    :cond_0
    :goto_1
    iput v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    .line 476
    iput v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    .line 477
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderTextSize:I

    if-eq v0, v10, :cond_1

    .line 478
    iput v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderTextSize:I

    .line 479
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    int-to-float v1, v10

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 480
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 483
    :cond_1
    iput v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    .line 484
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;Landroid/view/View;)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v14, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;Landroid/view/View;)V

    .line 440
    :cond_2
    return-void

    .line 453
    .end local v7    # "headerBarHeight":I
    .end local v8    # "headerButtonPadding":I
    .end local v9    # "headerButtonSize":I
    :cond_3
    const v0, 0x7f0d0346

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 455
    .restart local v9    # "headerButtonSize":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v7

    .line 462
    .restart local v7    # "headerBarHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    move v1, v12

    move v2, v12

    move v3, v12

    move v4, v13

    move v5, v12

    move v6, v13

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v8

    .restart local v8    # "headerButtonPadding":I
    goto :goto_0

    .line 472
    :cond_4
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    if-ne v0, v9, :cond_0

    .line 473
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderTextSize:I

    if-eq v0, v10, :cond_2

    goto :goto_1
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1
    .param p1, "extraSpace"    # I

    .prologue
    .line 985
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 594
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 597
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    add-int/2addr v0, v2

    int-to-float v4, v0

    .line 598
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    .line 597
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 593
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 313
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 316
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const v1, 0x7f130093

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    .line 317
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 318
    const v1, 0x7f130094

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    .line 319
    const v1, 0x7f130369

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    .line 321
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 324
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v1, :cond_0

    .line 325
    const v1, 0x7f130368

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    .line 326
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 327
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_0
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_1

    .line 334
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    .line 333
    if-eqz v1, :cond_1

    .line 335
    const v1, 0x7f130366

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    .line 336
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 337
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_1
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    const v1, 0x7f130367

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    .line 345
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableLowerAppbarHeight:Z

    if-eqz v1, :cond_3

    .line 353
    const v1, 0x7f0d034b

    .line 352
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0351

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderTextSize:I

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    .line 312
    return-void

    .line 354
    :cond_3
    const v1, 0x7f0d0346

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 493
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 497
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    .line 492
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1050
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 1051
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->showAppOverlay()V

    .line 1052
    return v3

    .line 1053
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 1054
    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    .line 1055
    return v3

    .line 1056
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 1057
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0307

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1058
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->showToast(Landroid/view/View;Ljava/lang/String;)V

    .line 1059
    return v3

    .line 1060
    .end local v0    # "str":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_3

    .line 1061
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v2, 0x7f0f05df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1062
    .restart local v0    # "str":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->showToast(Landroid/view/View;Ljava/lang/String;)V

    .line 1063
    return v3

    .line 1064
    .end local v0    # "str":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_4

    .line 1065
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v2, 0x7f0f05e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .restart local v0    # "str":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->showToast(Landroid/view/View;Ljava/lang/String;)V

    .line 1067
    return v3

    .line 1070
    .end local v0    # "str":Ljava/lang/String;
    :cond_4
    return v2
.end method

.method public onTaskDataLoaded()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 775
    :cond_0
    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 20
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 507
    const/4 v14, 0x1

    .line 508
    .local v14, "showTitle":Z
    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v17, :cond_5

    const/4 v12, 0x0

    .line 510
    .local v12, "showMoveIcon":Z
    :goto_0
    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v13, v0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    .line 512
    :goto_1
    const/4 v10, 0x1

    .line 514
    .local v10, "showDismissIcon":Z
    const/4 v11, 0x1

    .line 516
    .local v11, "showLockIcon":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v17

    sub-int v9, p1, v17

    .line 519
    .local v9, "rightInset":I
    sget-boolean v17, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v17, :cond_0

    .line 520
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isMultiWindowSettingEnabled()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 526
    :cond_0
    :goto_2
    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v17, :cond_1

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v17

    .line 526
    if-eqz v17, :cond_1

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    .line 531
    .local v5, "appIconWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 532
    .local v16, "titleWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    .line 534
    .local v6, "dismissWidth":I
    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v15

    .line 537
    .local v15, "splitWidth":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    .line 539
    .local v7, "lockTaskWidth":I
    :goto_4
    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    .line 542
    .local v8, "moveTaskWidth":I
    :goto_5
    add-int v17, v5, v6

    add-int v17, v17, v7

    add-int v17, v17, v15

    add-int v17, v17, v8

    add-int v17, v17, v16

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_c

    const/4 v14, 0x1

    .line 544
    :goto_6
    add-int v17, v5, v6

    add-int v17, v17, v7

    add-int v17, v17, v15

    add-int v17, v17, v8

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_d

    const/4 v12, 0x1

    .line 547
    :goto_7
    add-int v17, v5, v6

    add-int v17, v17, v7

    add-int v17, v17, v15

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_e

    const/4 v13, 0x1

    .line 550
    .local v13, "showSplitIcon":Z
    :goto_8
    add-int v17, v5, v6

    add-int v17, v17, v7

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_f

    const/4 v11, 0x1

    .line 552
    :goto_9
    add-int v17, v5, v6

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_10

    const/4 v10, 0x1

    .line 555
    .end local v5    # "appIconWidth":I
    .end local v6    # "dismissWidth":I
    .end local v7    # "lockTaskWidth":I
    .end local v8    # "moveTaskWidth":I
    .end local v13    # "showSplitIcon":Z
    .end local v15    # "splitWidth":I
    .end local v16    # "titleWidth":I
    :cond_1
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v14, :cond_11

    const/16 v17, 0x0

    :goto_b
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    if-eqz v12, :cond_12

    const/16 v17, 0x0

    :goto_c
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 561
    :cond_2
    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    if-eqz v13, :cond_13

    const/16 v17, 0x0

    :goto_d
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 564
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 574
    :cond_3
    :goto_e
    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    if-eqz v11, :cond_15

    const/16 v17, 0x0

    :goto_f
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 577
    if-eqz v11, :cond_4

    .line 578
    if-nez v13, :cond_16

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const v18, 0x3f333333    # 0.7f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 586
    :cond_4
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    if-eqz v10, :cond_17

    const/16 v17, 0x0

    :goto_11
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLeftTopRightBottom(IIII)V

    .line 504
    return-void

    .line 508
    .end local v9    # "rightInset":I
    .end local v10    # "showDismissIcon":Z
    .end local v11    # "showLockIcon":Z
    .end local v12    # "showMoveIcon":Z
    :cond_5
    const/4 v12, 0x1

    .restart local v12    # "showMoveIcon":Z
    goto/16 :goto_0

    .line 510
    :cond_6
    const/4 v13, 0x1

    .restart local v13    # "showSplitIcon":Z
    goto/16 :goto_1

    .end local v13    # "showSplitIcon":Z
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "showSplitIcon":Z
    goto/16 :goto_1

    .line 521
    .end local v13    # "showSplitIcon":Z
    .restart local v9    # "rightInset":I
    .restart local v10    # "showDismissIcon":Z
    .restart local v11    # "showLockIcon":Z
    :cond_8
    const/4 v12, 0x0

    .line 522
    const/4 v13, 0x0

    .restart local v13    # "showSplitIcon":Z
    goto/16 :goto_2

    .line 534
    .end local v13    # "showSplitIcon":Z
    .restart local v5    # "appIconWidth":I
    .restart local v6    # "dismissWidth":I
    .restart local v16    # "titleWidth":I
    :cond_9
    const/4 v15, 0x0

    .restart local v15    # "splitWidth":I
    goto/16 :goto_3

    .line 537
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "lockTaskWidth":I
    goto/16 :goto_4

    .line 541
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 542
    .restart local v8    # "moveTaskWidth":I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 544
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 547
    :cond_e
    const/4 v13, 0x0

    .restart local v13    # "showSplitIcon":Z
    goto/16 :goto_8

    .line 550
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 552
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_a

    .line 555
    .end local v5    # "appIconWidth":I
    .end local v6    # "dismissWidth":I
    .end local v7    # "lockTaskWidth":I
    .end local v8    # "moveTaskWidth":I
    .end local v13    # "showSplitIcon":Z
    .end local v15    # "splitWidth":I
    .end local v16    # "titleWidth":I
    :cond_11
    const/16 v17, 0x4

    goto/16 :goto_b

    .line 557
    :cond_12
    const/16 v17, 0x4

    goto/16 :goto_c

    .line 562
    :cond_13
    const/16 v17, 0x4

    goto/16 :goto_d

    .line 568
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_e

    .line 575
    :cond_15
    const/16 v17, 0x4

    goto/16 :goto_f

    .line 581
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_10

    .line 586
    :cond_17
    const/16 v17, 0x4

    goto/16 :goto_11
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    .line 307
    return-void
.end method

.method resetNoUserInteractionState()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 943
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDozeTrigger:Z

    if-nez v0, :cond_2

    .line 945
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionStateForLockTask(Z)V

    .line 949
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 941
    :cond_1
    :goto_0
    return-void

    .line 952
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 954
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 956
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v0, :cond_4

    .line 957
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 958
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 960
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 961
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 971
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 972
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 973
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 974
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    .line 965
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 966
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 968
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_1
.end method

.method public setDimAlpha(F)V
    .locals 2
    .param p1, "dimAlpha"    # F

    .prologue
    .line 655
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v0, :cond_0

    .line 656
    return-void

    .line 659
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    .line 661
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 662
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->getColor()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateBackgroundColor(IF)V

    .line 653
    :cond_1
    return-void
.end method

.method setLockTaskBtn(Z)V
    .locals 3
    .param p1, "lock"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 878
    if-eqz p1, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 883
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 884
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 886
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 877
    return-void

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0
.end method

.method public setNoUserInteractionState()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 895
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 897
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 898
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 901
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 902
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isMultiWindowSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    :cond_0
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v0, :cond_6

    .line 915
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 918
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 919
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    if-eqz v0, :cond_5

    .line 920
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 921
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 894
    :cond_1
    :goto_0
    return-void

    .line 903
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 904
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 906
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 907
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 909
    :cond_4
    return-void

    .line 923
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 924
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 929
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 932
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 933
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0
.end method

.method setNoUserInteractionStateForLockTask(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLockTaskBtn(Z)V

    .line 871
    :cond_0
    return-void
.end method

.method public setRadius(I)V
    .locals 2
    .param p1, "radius"    # I

    .prologue
    .line 1165
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1166
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0354

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    .line 1164
    :goto_0
    return-void

    .line 1170
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0352

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    goto :goto_0

    .line 1173
    :cond_1
    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    goto :goto_0
.end method

.method public startFocusTimerIndicator(I)V
    .locals 6
    .param p1, "duration"    # I

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 604
    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 609
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 610
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 613
    :cond_1
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewHeader$1;

    int-to-long v2, p1

    .line 614
    const-wide/16 v4, 0x1e

    move-object v1, p0

    .line 613
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskViewHeader$1;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;JJ)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    .line 602
    return-void
.end method

.method startNoUserInteractionAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 799
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 800
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 801
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 802
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDozeTrigger:Z

    if-eqz v1, :cond_3

    .line 803
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 804
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 806
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 804
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 807
    int-to-long v2, v0

    .line 804
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 813
    :goto_0
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_0

    .line 814
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isMultiWindowSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 826
    :cond_0
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v1, :cond_9

    .line 827
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-eqz v1, :cond_2

    .line 828
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 829
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDozeTrigger:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 830
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 832
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 830
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 833
    int-to-long v2, v0

    .line 830
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 838
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    if-eqz v1, :cond_8

    .line 839
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 840
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 798
    :cond_2
    :goto_2
    return-void

    .line 810
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 815
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 816
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 819
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 821
    :cond_6
    return-void

    .line 836
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 842
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 843
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_2

    .line 848
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 849
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDozeTrigger:Z

    if-eqz v1, :cond_a

    .line 850
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    .line 851
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 852
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 853
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 855
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 853
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 856
    int-to-long v2, v0

    .line 853
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 859
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2
.end method

.method startNoUserInteractionAnimationForLockTask(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 867
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLockTaskBtn(Z)V

    .line 866
    return-void
.end method

.method unbindFromTask(Z)V
    .locals 3
    .param p1, "touchExplorationEnabled"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 783
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 784
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    if-eqz p1, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 790
    :cond_0
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 782
    :cond_1
    return-void
.end method
