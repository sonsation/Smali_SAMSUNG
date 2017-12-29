.class public Lcom/android/settings/PreviewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PreviewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;
    }
.end annotation


# static fields
.field private static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationCounter:I

.field private mAnimationEndAction:Ljava/lang/Runnable;

.field private mIsLayoutRtl:Z

.field private mPreviewFrames:[Landroid/widget/FrameLayout;

.field private mViewStubInflated:[[Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/PreviewPagerAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationCounter:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/PreviewPagerAdapter;)[[Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mViewStubInflated:[[Z

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/PreviewPagerAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationCounter:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/PreviewPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/PreviewPagerAdapter;->runAnimationEndAction()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/settings/PreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 58
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/settings/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLayoutRtl"    # Z
    .param p3, "previewSampleResIds"    # [I
    .param p4, "configurations"    # [Landroid/content/res/Configuration;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 72
    iput-boolean p2, p0, Lcom/android/settings/PreviewPagerAdapter;->mIsLayoutRtl:Z

    .line 73
    move-object/from16 v0, p3

    array-length v9, v0

    new-array v9, v9, [Landroid/widget/FrameLayout;

    iput-object v9, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    .line 74
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    new-array v10, v10, [I

    move-object/from16 v0, p3

    array-length v11, v0

    const/4 v12, 0x0

    aput v11, v10, v12

    move-object/from16 v0, p4

    array-length v11, v0

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Z

    iput-object v9, p0, Lcom/android/settings/PreviewPagerAdapter;->mViewStubInflated:[[Z

    .line 75
    const-string/jumbo v9, "PreviewPagerAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "PreviewPagerAdapter: configurations"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v9, v0

    if-ge v5, v9, :cond_2

    .line 78
    iget-boolean v9, p0, Lcom/android/settings/PreviewPagerAdapter;->mIsLayoutRtl:Z

    if-eqz v9, :cond_0

    move-object/from16 v0, p3

    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    sub-int v7, v9, v5

    .line 79
    .local v7, "p":I
    :goto_1
    iget-object v9, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v10, v9, v7

    .line 80
    iget-object v9, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v7

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 81
    const/4 v11, -0x1

    .line 82
    const/4 v12, -0x1

    .line 80
    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const-string/jumbo v9, "PreviewPagerAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "previewSampleResIds:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    move-object/from16 v0, p4

    array-length v9, v0

    if-ge v6, v9, :cond_1

    .line 86
    const-string/jumbo v9, "PreviewPagerAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "configurations:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    aget-object v9, p4, v6

    invoke-virtual {p1, v9}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    .line 90
    .local v1, "configContext":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/content/Context;->setTheme(I)V

    .line 92
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 93
    .local v2, "configInflater":Landroid/view/LayoutInflater;
    new-instance v8, Landroid/view/ViewStub;

    invoke-direct {v8, v1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 94
    .local v8, "sampleViewStub":Landroid/view/ViewStub;
    aget v9, p3, v5

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 95
    move v3, v5

    .local v3, "fi":I
    move v4, v6

    .line 96
    .local v4, "fj":I
    new-instance v9, Lcom/android/settings/PreviewPagerAdapter$1;

    invoke-direct {v9, p0, v3, v4}, Lcom/android/settings/PreviewPagerAdapter$1;-><init>(Lcom/android/settings/PreviewPagerAdapter;II)V

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 104
    iget-object v9, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v7

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 85
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 78
    .end local v1    # "configContext":Landroid/content/Context;
    .end local v2    # "configInflater":Landroid/view/LayoutInflater;
    .end local v3    # "fi":I
    .end local v4    # "fj":I
    .end local v6    # "j":I
    .end local v7    # "p":I
    .end local v8    # "sampleViewStub":Landroid/view/ViewStub;
    :cond_0
    move v7, v5

    .restart local v7    # "p":I
    goto/16 :goto_1

    .line 77
    .restart local v6    # "j":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 71
    .end local v6    # "j":I
    .end local v7    # "p":I
    :cond_2
    return-void
.end method

.method private ApplyTextScaleToAllChildViews(Landroid/view/View;IF)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "font_size"    # I
    .param p3, "font_scale"    # F

    .prologue
    .line 296
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 297
    check-cast v2, Landroid/widget/TextView;

    int-to-float v3, p2

    mul-float/2addr v3, p3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 300
    :cond_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 302
    instance-of v2, p1, Lcom/android/settings/display/ConversationMessageView;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 303
    check-cast v2, Lcom/android/settings/display/ConversationMessageView;

    invoke-virtual {v2, p2, p3}, Lcom/android/settings/display/ConversationMessageView;->setTextScale(IF)V

    .line 304
    :cond_1
    instance-of v2, p1, Lcom/android/settings/display/AppGridView;

    if-eqz v2, :cond_3

    .line 295
    .end local p1    # "view":Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    move-object v0, p1

    .line 306
    check-cast v0, Landroid/view/ViewGroup;

    .line 307
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/android/settings/PreviewPagerAdapter;->ApplyTextScaleToAllChildViews(Landroid/view/View;IF)V

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 311
    :cond_4
    instance-of v2, p1, Lcom/samsung/android/settings/display/AppListView;

    if-eqz v2, :cond_5

    .line 312
    check-cast p1, Lcom/samsung/android/settings/display/AppListView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/settings/display/AppListView;->setTextScale(IF)V

    goto :goto_0

    .line 313
    .restart local p1    # "view":Landroid/view/View;
    :cond_5
    instance-of v2, p1, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;

    if-eqz v2, :cond_2

    .line 314
    check-cast p1, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->setTextScale(IF)V

    goto :goto_0
.end method

.method private ApplyTextStyleToAllChildViews(Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "font_style"    # Landroid/graphics/Typeface;

    .prologue
    .line 277
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 278
    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 281
    :cond_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 282
    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/settings/PreviewPagerAdapter;->ApplyTextStyleToAllChildViews(Landroid/view/View;Landroid/graphics/Typeface;)V

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_1
    instance-of v2, p1, Lcom/samsung/android/settings/display/AppListView;

    if-eqz v2, :cond_3

    .line 288
    check-cast p1, Lcom/samsung/android/settings/display/AppListView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/display/AppListView;->setTextStyle(Landroid/graphics/Typeface;)V

    .line 276
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "idx":I
    :cond_2
    :goto_1
    return-void

    .line 289
    .restart local v0    # "group":Landroid/view/ViewGroup;
    .restart local v1    # "idx":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    instance-of v2, p1, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;

    if-eqz v2, :cond_2

    .line 290
    check-cast p1, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->setTextStyle(Landroid/graphics/Typeface;)V

    goto :goto_1
.end method

.method private runAnimationEndAction()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/PreviewPagerAdapter;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 229
    iput-object v1, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private setVisibility(Landroid/view/View;IZ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "animate"    # Z

    .prologue
    const-wide/16 v6, 0x190

    const/4 v4, 0x0

    .line 170
    if-nez p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 171
    .local v0, "alpha":F
    :goto_0
    if-nez p3, :cond_1

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :goto_1
    return-void

    .line 170
    .end local v0    # "alpha":F
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 175
    :cond_1
    if-nez p2, :cond_2

    sget-object v1, Lcom/android/settings/PreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 177
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    :goto_2
    if-nez p2, :cond_3

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 181
    sget-object v3, Lcom/android/settings/PreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 179
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 183
    new-instance v3, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/settings/PreviewPagerAdapter;Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;)V

    .line 179
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 184
    new-instance v3, Lcom/android/settings/PreviewPagerAdapter$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/settings/PreviewPagerAdapter$2;-><init>(Lcom/android/settings/PreviewPagerAdapter;Landroid/view/View;I)V

    .line 179
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 176
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_2
    sget-object v1, Lcom/android/settings/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_2

    .line 192
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 194
    sget-object v3, Lcom/android/settings/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 192
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 196
    new-instance v3, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/settings/PreviewPagerAdapter;Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;)V

    .line 192
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 197
    new-instance v3, Lcom/android/settings/PreviewPagerAdapter$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/settings/PreviewPagerAdapter$3;-><init>(Lcom/android/settings/PreviewPagerAdapter;Landroid/view/View;I)V

    .line 192
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method


# virtual methods
.method public SetFontScale(IF)V
    .locals 8
    .param p1, "font_size"    # I
    .param p2, "font_scale"    # F

    .prologue
    .line 268
    iget-object v3, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 269
    .local v1, "previewFrame":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 271
    .local v0, "childCount":I
    const-string/jumbo v5, "PreviewPagerAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SetFontScale: childCount"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0, v1, p1, p2}, Lcom/android/settings/PreviewPagerAdapter;->ApplyTextScaleToAllChildViews(Landroid/view/View;IF)V

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "childCount":I
    .end local v1    # "previewFrame":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method public SetFontStyle(Landroid/graphics/Typeface;)V
    .locals 8
    .param p1, "font_style"    # Landroid/graphics/Typeface;

    .prologue
    .line 258
    iget-object v3, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 259
    .local v1, "previewFrame":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 261
    .local v0, "childCount":I
    const-string/jumbo v5, "PreviewPagerAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPreviewLayer: childCount"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0, v1, p1}, Lcom/android/settings/PreviewPagerAdapter;->ApplyTextStyleToAllChildViews(Landroid/view/View;Landroid/graphics/Typeface;)V

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "childCount":I
    .end local v1    # "previewFrame":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 111
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p2

    return-object v0
.end method

.method isAnimating()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 131
    iget v1, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationCounter:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 127
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAnimationEndAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    .line 134
    return-void
.end method

.method public setPreviewLayer(I)V
    .locals 10
    .param p1, "newIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 209
    const-string/jumbo v3, "PreviewPagerAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreviewLayer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v5, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v2, v5, v3

    .line 211
    .local v2, "previewFrame":Landroid/widget/FrameLayout;
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 212
    .local v0, "childCount":I
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 213
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 214
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 215
    if-eq v1, p1, :cond_0

    .line 216
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 217
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 219
    const-string/jumbo v7, "PreviewPagerAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPreviewLayer: INVISIBLE  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 210
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "previewFrame":Landroid/widget/FrameLayout;
    :cond_2
    return-void
.end method

.method setPreviewLayer(IIIZ)V
    .locals 9
    .param p1, "newLayerIndex"    # I
    .param p2, "currentLayerIndex"    # I
    .param p3, "currentFrameIndex"    # I
    .param p4, "animate"    # Z

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x0

    .line 140
    iget-object v5, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v2, v5, v3

    .line 141
    .local v2, "previewFrame":Landroid/widget/FrameLayout;
    if-ltz p2, :cond_0

    .line 142
    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "lastLayer":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/PreviewPagerAdapter;->mViewStubInflated:[[Z

    aget-object v7, v7, p3

    aget-boolean v7, v7, p2

    if-eqz v7, :cond_0

    .line 146
    iget-object v7, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v7, v7, p3

    if-ne v2, v7, :cond_2

    .line 147
    invoke-direct {p0, v0, v8, p4}, Lcom/android/settings/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    .line 155
    .end local v0    # "lastLayer":Landroid/view/View;
    :cond_0
    :goto_1
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 156
    .local v1, "nextLayer":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v7, v7, p3

    if-ne v2, v7, :cond_3

    .line 158
    iget-object v7, p0, Lcom/android/settings/PreviewPagerAdapter;->mViewStubInflated:[[Z

    aget-object v7, v7, p3

    aget-boolean v7, v7, p1

    if-nez v7, :cond_1

    .line 159
    check-cast v1, Landroid/view/ViewStub;

    .end local v1    # "nextLayer":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 160
    .restart local v1    # "nextLayer":Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 162
    :cond_1
    invoke-direct {p0, v1, v4, p4}, Lcom/android/settings/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    .line 140
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "nextLayer":Landroid/view/View;
    .restart local v0    # "lastLayer":Landroid/view/View;
    :cond_2
    invoke-direct {p0, v0, v8, v4}, Lcom/android/settings/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    goto :goto_1

    .line 164
    .end local v0    # "lastLayer":Landroid/view/View;
    .restart local v1    # "nextLayer":Landroid/view/View;
    :cond_3
    invoke-direct {p0, v1, v4, v4}, Lcom/android/settings/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    goto :goto_2

    .line 139
    .end local v1    # "nextLayer":Landroid/view/View;
    .end local v2    # "previewFrame":Landroid/widget/FrameLayout;
    :cond_4
    return-void
.end method
