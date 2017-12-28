.class public Lcom/android/launcher3/widget/view/WidgetFolder;
.super Landroid/widget/LinearLayout;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;,
        Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetFolder"


# instance fields
.field private mAnimDuration:J

.field private mIconAnim:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

.field private mIndicatorWrapper:Landroid/widget/FrameLayout;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPageIndicatorHeight:I

.field private mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

.field private mStageAnimator:Landroid/animation/AnimatorSet;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleHight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/view/WidgetFolder;)Lcom/android/launcher3/widget/view/WidgetFolderPagedView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/view/WidgetFolder;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/view/WidgetFolder;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/view/WidgetFolder;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/widget/view/WidgetFolder;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/launcher3/widget/view/WidgetFolder;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mAnimDuration:J

    return-wide v0
.end method

.method private animateClose(Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V
    .locals 9
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .param p2, "info"    # Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 157
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v2, "alpha"

    new-array v3, v7, [F

    const/4 v4, 0x0

    aput v4, v3, v8

    invoke-static {p0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 159
    .local v0, "alphaAnim":Landroid/animation/Animator;
    iget-wide v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mAnimDuration:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 160
    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 163
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 164
    .local v1, "scaleAnimSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    iget-object v5, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v5, v5, v8

    aput v5, v4, v8

    .line 165
    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "scaleY"

    new-array v4, v7, [F

    iget-object v5, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v5, v5, v7

    aput v5, v4, v8

    .line 166
    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    const-string v4, "translationX"

    new-array v5, v7, [F

    iget-object v6, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v6, v6, v8

    int-to-float v6, v6

    aput v6, v5, v8

    .line 167
    invoke-static {p0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "translationY"

    new-array v5, v7, [F

    iget-object v6, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v6, v6, v7

    int-to-float v6, v6

    aput v6, v5, v8

    .line 168
    invoke-static {p0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    .line 164
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 169
    iget-wide v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mAnimDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 170
    const/16 v2, 0x23

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 171
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 173
    new-instance v2, Lcom/android/launcher3/widget/view/WidgetFolder$3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/view/WidgetFolder$3;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    return-void
.end method

.method private animateOpen(Landroid/animation/AnimatorSet;Ljava/util/HashMap;)V
    .locals 9
    .param p1, "animSet"    # Landroid/animation/AnimatorSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 187
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v5, v3, v7

    invoke-static {p0, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 189
    .local v0, "alphaAnim":Landroid/animation/Animator;
    iget-wide v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mAnimDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 190
    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 191
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 193
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 194
    .local v1, "scaleAnimSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    new-array v4, v6, [F

    aput v5, v4, v7

    .line 195
    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "scaleY"

    new-array v4, v6, [F

    aput v5, v4, v7

    .line 196
    invoke-static {p0, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "translationX"

    new-array v5, v6, [F

    aput v8, v5, v7

    .line 197
    invoke-static {p0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "translationY"

    new-array v5, v6, [F

    aput v8, v5, v7

    .line 198
    invoke-static {p0, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    .line 194
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 199
    iget-wide v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mAnimDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 200
    const/16 v2, 0x23

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 201
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 203
    new-instance v2, Lcom/android/launcher3/widget/view/WidgetFolder$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/view/WidgetFolder$4;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 208
    return-void
.end method

.method private cleanupAnimation()V
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 154
    return-void
.end method

.method private getAnimationInfo(Landroid/view/View;)Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;
    .locals 13
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 233
    new-instance v0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;

    invoke-direct {v0}, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;-><init>()V

    .line 234
    .local v0, "folderAnimInfo":Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;
    if-nez p1, :cond_0

    .line 257
    :goto_0
    return-object v0

    .line 238
    :cond_0
    new-array v2, v6, [I

    .line 239
    .local v2, "iconLocation":[I
    new-array v1, v6, [I

    .line 240
    .local v1, "folderLocation":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 242
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    .line 243
    .local v3, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 244
    aget v6, v1, v9

    iget v7, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    add-int/2addr v6, v7

    aput v6, v1, v9

    .line 245
    aget v6, v1, v10

    iget v7, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    add-int/2addr v6, v7

    aput v6, v1, v10

    .line 247
    aget v6, v2, v9

    aget v7, v1, v9

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v12

    sub-float/2addr v6, v7

    float-to-int v4, v6

    .line 249
    .local v4, "startX":I
    aget v6, v2, v10

    aget v7, v1, v10

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v12

    sub-float/2addr v6, v7

    float-to-int v5, v6

    .line 252
    .local v5, "startY":I
    iget-object v6, v0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aput v4, v6, v9

    .line 253
    iget-object v6, v0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aput v5, v6, v10

    .line 255
    iget-object v6, v0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v11

    iget v8, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    aput v7, v6, v9

    .line 256
    iget-object v6, v0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v11

    iget v8, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    aput v7, v6, v10

    goto :goto_0
.end method

.method private getContentAreaHeight()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getDesiredHeight()I

    move-result v0

    return v0
.end method

.method private getFolderHeight()I
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getContentAreaHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getFolderHeight(I)I

    move-result v0

    return v0
.end method

.method private getFolderHeight(I)I
    .locals 2
    .param p1, "contentAreaHeight"    # I

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitleHight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPageIndicatorHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getPageIndicatorHeight()I
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIndicatorWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIndicatorWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTitleBarHeight()I
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 376
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private prepareOpenAnimation(Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 225
    iget-object v0, p1, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->setTranslationX(F)V

    .line 226
    iget-object v0, p1, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->setTranslationY(F)V

    .line 227
    iget-object v0, p1, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->setScaleX(F)V

    .line 228
    iget-object v0, p1, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->setScaleY(F)V

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->setAlpha(F)V

    .line 230
    return-void
.end method

.method private setItemsAndBind(Landroid/view/View;)Z
    .locals 9
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 261
    instance-of v5, p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-nez v5, :cond_0

    .line 262
    const-string v5, "WidgetFolder"

    const-string v7, "no anchorView for bind"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 279
    :goto_0
    return v5

    :cond_0
    move-object v1, p1

    .line 265
    check-cast v1, Lcom/android/launcher3/widget/view/WidgetItemView;

    .line 266
    .local v1, "itemView":Lcom/android/launcher3/widget/view/WidgetItemView;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetItemView;->getWidgets()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 267
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v4, "widgetItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 270
    .local v0, "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v3, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .end local v3    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher3/widget/view/WidgetFolder;->setTitle(Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->setWidgetItems(Ljava/util/List;)V

    .line 276
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->setDataReady()V

    .line 277
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    invoke-virtual {v5, v7, v7}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->prepareInOut(IZ)V

    .line 278
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIndicatorWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v5, v7

    .line 279
    goto :goto_0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    return-void
.end method


# virtual methods
.method public centerAboutIcon()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 292
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 293
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/android/launcher3/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 295
    new-instance v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v3, v9, v9}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    .line 296
    .local v3, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    iget v7, v0, Landroid/graphics/Point;->x:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 297
    .local v6, "widthMeasureSpec":I
    invoke-virtual {p0, v6, v9}, Lcom/android/launcher3/widget/view/WidgetFolder;->measure(II)V

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getMeasuredWidth()I

    move-result v5

    .line 299
    .local v5, "width":I
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getFolderHeight()I

    move-result v1

    .line 301
    .local v1, "height":I
    iget v7, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v1

    div-int/lit8 v4, v7, 0x2

    .line 302
    .local v4, "top":I
    iget v7, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v5

    div-int/lit8 v2, v7, 0x2

    .line 304
    .local v2, "left":I
    iput v5, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    .line 305
    iput v1, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    .line 306
    iput v2, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    .line 307
    iput v4, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    .line 308
    iput v4, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->topMargin:I

    .line 309
    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->setMarginStart(I)V

    .line 310
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->customPosition:Z

    .line 311
    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/view/WidgetFolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    return-void
.end method

.method public changeColorForBg(Z)V
    .locals 2
    .param p1, "whiteBg"    # Z

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 289
    return-void
.end method

.method public close(Landroid/view/View;ZLjava/util/HashMap;)Landroid/animation/AnimatorSet;
    .locals 5
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .local p3, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->cleanupAnimation()V

    .line 133
    const-string v3, "WidgetFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close anchorview : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 135
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 136
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder;->getAnimationInfo(Landroid/view/View;)Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;

    move-result-object v0

    .line 137
    .local v0, "info":Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v1, v0, p3}, Lcom/android/launcher3/widget/view/WidgetFolder;->animateClose(Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V

    .line 138
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIconAnim:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->prepareAimation(Landroid/view/View;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Z)V

    .line 139
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIconAnim:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p1, v2, v0, p3}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->animateClose(Landroid/view/View;Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V

    .line 145
    .end local v0    # "info":Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v1

    :cond_0
    move v1, v2

    .line 133
    goto :goto_0

    .line 141
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetFolder;->setVisibility(I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 143
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIconAnim:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->removeView()V

    goto :goto_1
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 334
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 335
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    iget v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {p0, v6, v6, v3, v6}, Lcom/android/launcher3/widget/view/WidgetFolder;->setPadding(IIII)V

    .line 342
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->onConfigurationChangedIfNeeded()V

    .line 343
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 344
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 345
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 346
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getTitleBarHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitleHight:I

    .line 348
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIndicatorWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 349
    .local v2, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 351
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getPageIndicatorHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPageIndicatorHeight:I

    .line 353
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->centerAboutIcon()V

    .line 354
    return-void

    .line 339
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "lp1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {p0, v6, v6, v6, v3}, Lcom/android/launcher3/widget/view/WidgetFolder;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 82
    const v0, 0x7f110104

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f110105

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    .line 84
    const v0, 0x7f110107

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIndicatorWrapper:Landroid/widget/FrameLayout;

    .line 85
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getPageIndicatorHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPageIndicatorHeight:I

    .line 86
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getTitleBarHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitleHight:I

    .line 87
    new-instance v0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder;Lcom/android/launcher3/widget/view/WidgetFolder$1;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIconAnim:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mAnimDuration:J

    .line 89
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 316
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v6, p1}, Lcom/android/launcher3/widget/view/WidgetFolder;->getDefaultSize(II)I

    move-result v3

    .line 317
    .local v3, "contentWidth":I
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->getContentAreaHeight()I

    move-result v2

    .line 319
    .local v2, "contentHeight":I
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 320
    .local v1, "contentAreaWidthSpec":I
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 322
    .local v0, "contentAreaHeightSpec":I
    iget-object v6, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitle:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mTitleHight:I

    .line 323
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 322
    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->measure(II)V

    .line 324
    iget-object v6, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPagedView:Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    invoke-virtual {v6, v1, v0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->measure(II)V

    .line 325
    iget-object v6, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIndicatorWrapper:Landroid/widget/FrameLayout;

    iget v7, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mPageIndicatorHeight:I

    .line 326
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 325
    invoke-virtual {v6, v1, v7}, Landroid/widget/FrameLayout;->measure(II)V

    .line 328
    move v5, v3

    .line 329
    .local v5, "folderWidth":I
    invoke-direct {p0, v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->getFolderHeight(I)I

    move-result v4

    .line 330
    .local v4, "folderHeight":I
    invoke-virtual {p0, v5, v4}, Lcom/android/launcher3/widget/view/WidgetFolder;->setMeasuredDimension(II)V

    .line 331
    return-void
.end method

.method public open(Landroid/view/View;ZLjava/util/HashMap;)Landroid/animation/AnimatorSet;
    .locals 7
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .local p3, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->cleanupAnimation()V

    .line 93
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    .line 94
    .local v1, "parent":Lcom/android/launcher3/common/view/DragLayer;
    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder;->setItemsAndBind(Landroid/view/View;)Z

    .line 97
    const-string v5, "WidgetFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open anchorview : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolder;->centerAboutIcon()V

    .line 99
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 100
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder;->getAnimationInfo(Landroid/view/View;)Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;

    move-result-object v0

    .line 102
    .local v0, "info":Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolder;->prepareOpenAnimation(Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;)V

    .line 103
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v2, p3}, Lcom/android/launcher3/widget/view/WidgetFolder;->animateOpen(Landroid/animation/AnimatorSet;Ljava/util/HashMap;)V

    .line 104
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIconAnim:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    invoke-virtual {v2, p1, v0, v3}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->prepareAimation(Landroid/view/View;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Z)V

    .line 105
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mIconAnim:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p1, v3, v0, p3}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->animateOpen(Landroid/view/View;Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V

    .line 107
    .end local v0    # "info":Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetFolder;->setVisibility(I)V

    .line 108
    new-instance v2, Lcom/android/launcher3/widget/view/WidgetFolder$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/view/WidgetFolder$1;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->post(Ljava/lang/Runnable;)Z

    .line 119
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/launcher3/widget/view/WidgetFolder$2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/widget/view/WidgetFolder$2;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder;->mStageAnimator:Landroid/animation/AnimatorSet;

    return-object v2

    :cond_2
    move v2, v4

    .line 97
    goto :goto_0
.end method
