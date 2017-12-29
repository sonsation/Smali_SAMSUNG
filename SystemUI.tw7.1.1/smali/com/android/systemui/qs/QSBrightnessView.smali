.class public Lcom/android/systemui/qs/QSBrightnessView;
.super Lcom/android/systemui/qs/QSBarItem;
.source "QSBrightnessView.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSBrightnessView$1;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field mAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field mAnimatorOnTop:Lcom/android/systemui/qs/TouchAnimator;

.field private mAutoLabel:Landroid/widget/TextView;

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

.field private mBrightnessDetailButton:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsAutoBrightness:Z

.field private mIsBrightnessOnTop:Z

.field private mIsCoverShowing:Z

.field private mMirrorAutoLabel:Landroid/widget/TextView;

.field private mQSBrightnessView:Landroid/view/View;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mSlider:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSBrightnessView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSBrightnessView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mIsAutoBrightness:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSBrightnessView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mIsAutoBrightness:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/qs/QSPanel;)V
    .locals 7

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSBarItem;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v0, "QSBrightnessView"

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAnimatorOnTop:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v1

    invoke-virtual {v0, p0, v4, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v0, Lcom/android/systemui/qs/QSBrightnessView$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/qs/QSBrightnessView$1;-><init>(Lcom/android/systemui/qs/QSBrightnessView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f04018c

    invoke-virtual {v0, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->QSBarItemView:Landroid/view/View;

    const v0, 0x7f130494

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBrightnessView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mQSBrightnessView:Landroid/view/View;

    const v0, 0x7f130408

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBrightnessView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f130409

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBrightnessView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSlider;

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSlider;->updateResource()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v4, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b015c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b015d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/settings/ToggleSlider;->setDualModeOverlapColor(II)V

    new-instance v0, Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSBrightnessView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSBrightnessView;->mIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {v0, v4, v5, v6}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/String;

    const-string/jumbo v5, "brightness_on_top"

    aput-object v5, v4, v2

    invoke-virtual {v0, p0, v4}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const-string/jumbo v4, "brightness_on_top"

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mIsBrightnessOnTop:Z

    const v0, 0x7f130495

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBrightnessView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/BrightnessDetail;

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

    const v0, 0x7f130497

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBrightnessView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessDetailButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-virtual {v0, p3}, Lcom/android/systemui/settings/BrightnessDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

    new-instance v1, Lcom/android/systemui/qs/QSBrightnessView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSBrightnessView$2;-><init>(Lcom/android/systemui/qs/QSBrightnessView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/BrightnessDetail;->setCallback(Lcom/android/systemui/settings/BrightnessDetail$Callback;)V

    const v0, 0x7f130496

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBrightnessView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAutoLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAutoLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v0, "QSBrightnessView"

    const-string/jumbo v1, "QSBrightnessView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mQSBrightnessView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSBrightnessView;->getBarVisibility()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mIsBrightnessOnTop:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSBrightnessView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSBrightnessView;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAnimatorOnTop:Lcom/android/systemui/qs/TouchAnimator;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-object v0
.end method

.method public getBarHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSBrightnessView;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d042c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBarVisibility()Z
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_POWER_PLANNING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mIsCoverShowing:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getBrightnessOnTop()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    const-string/jumbo v3, "brightness_on_top"

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAutoLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAutoLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mIsCoverShowing:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mQSBrightnessView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSBrightnessView;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSBarItem$Callback;->onHeightChanged()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSBarItem;->onDetachedFromWindow()V

    const-string/jumbo v0, "QSBrightnessView"

    const-string/jumbo v1, "QSBrightnessView onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    return-void
.end method

.method public onReserveMaxModeChanged()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mQSBrightnessView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSBrightnessView;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSBarItem$Callback;->onHeightChanged()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string/jumbo v1, "brightness_on_top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "brightness_on_top"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/android/systemui/qs/QSBarItem;->ON_PANEL:I

    :goto_0
    iput v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBarType:I

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSBarItem$Callback;->onHeightChanged()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget v1, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "brightness_auto"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v0, 0x1

    :goto_2
    const-string/jumbo v1, "QSBrightnessView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTuningChanged key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAutoLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAutoLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mMirrorAutoLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mMirrorAutoLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    :cond_5
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setAutoBrightnessControl(Z)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isBrightnessBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "QSBrightnessView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "auto brightness "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isLightSensorAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    move v3, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/settings/BrightnessController;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isLightSensorAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v2, "QS26"

    invoke-static {v0, v1, v2, v7, v7}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    :goto_0
    return v6

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isLightSensorAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "display_outdoor_mode"

    if-eqz p1, :cond_4

    move v0, v6

    :goto_1
    const/4 v4, -0x2

    invoke-static {v1, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v3, "QP05"

    const-string/jumbo v4, "outdoor"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v3, v4, v2}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 5

    invoke-super {p0}, Lcom/android/systemui/qs/QSBarItem;->onFinishInflate()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130409

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130496

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mMirrorAutoLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mMirrorAutoLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    const-string/jumbo v3, "brightness_auto"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setBrightnessOnTop(Z)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isBrightnessBlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    const-string/jumbo v2, "QSBrightnessView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "brightness on top "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mIsBrightnessOnTop:Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    const-string/jumbo v3, "brightness_on_top"

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSBrightnessView;->mIsBrightnessOnTop:Z

    if-eqz v4, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    return v1
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSBarItem;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    :cond_0
    return-void
.end method

.method public setPosition(F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSBarItem;->setPosition(F)V

    iget v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBarType:I

    sget v1, Lcom/android/systemui/qs/QSBarItem;->ON_PANEL:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->isSliderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/BrightnessController;->setSliderEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessDetailButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSBrightnessView;->getBarView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->isSliderEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/settings/BrightnessController;->setSliderEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessDetailButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSBrightnessView;->getBarView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_0
.end method
