.class public Lcom/android/keyguard/iris/KeyguardIrisView;
.super Landroid/widget/FrameLayout;
.source "KeyguardIrisView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/iris/KeyguardIrisView$1;
    }
.end annotation


# instance fields
.field private mBouncerShowing:Z

.field private mCurrentMobileKeyboardState:I

.field private mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

.field private mIrisPreview:Landroid/widget/FrameLayout;

.field private mIrisPreviewText:Landroid/widget/TextView;

.field private mKeyguardShowing:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mNoPreview:Landroid/view/View;

.field private mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mSupportMKeyboardModel:Z

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/iris/KeyguardIrisView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/iris/KeyguardIrisView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mCurrentMobileKeyboardState:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/iris/KeyguardIrisView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/iris/KeyguardIrisView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/iris/KeyguardIrisView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/iris/KeyguardIrisView;->changeTextColorOnWhiteWallpaper()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/iris/KeyguardIrisView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/iris/KeyguardIrisView;->clearWithPreviewText()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/iris/KeyguardIrisView;->setIrisHelpText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/iris/KeyguardIrisView;->setIrisNomatchText(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/iris/KeyguardIrisView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mNoPreview:Landroid/view/View;

    .line 137
    new-instance v0, Lcom/android/keyguard/iris/KeyguardIrisView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/iris/KeyguardIrisView$1;-><init>(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 67
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 65
    return-void
.end method

.method private changeTextColorOnWhiteWallpaper()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisPreviewText:Landroid/widget/TextView;

    .line 134
    const/4 v2, 0x2

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 132
    return-void
.end method

.method private clearWithPreviewText()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisPreviewText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisPreviewText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    .line 106
    :cond_1
    return-void
.end method

.method private isInViewArea(FFLandroid/view/View;)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 341
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 342
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 343
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 341
    :cond_0
    return v0
.end method

.method private setIrisHelpText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mSupportMKeyboardModel:Z

    if-eqz v0, :cond_0

    .line 348
    iget v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mCurrentMobileKeyboardState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 349
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisPreviewText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    :cond_1
    return-void
.end method

.method private setIrisNomatchText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 359
    iget-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mSupportMKeyboardModel:Z

    if-eqz v0, :cond_0

    .line 360
    iget v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mCurrentMobileKeyboardState:I

    if-ne v0, v2, :cond_0

    .line 361
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 366
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    .line 358
    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    .line 122
    const-string/jumbo v3, "white_lockscreen_wallpaper"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 118
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 270
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 271
    iget-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mSupportMKeyboardModel:Z

    if-eqz v0, :cond_0

    .line 272
    iget v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mCurrentMobileKeyboardState:I

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v0, v1, :cond_0

    .line 273
    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mCurrentMobileKeyboardState:I

    .line 274
    iget v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mCurrentMobileKeyboardState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 277
    const-string/jumbo v0, "KeyguardIrisView"

    const-string/jumbo v1, "preview to INVISIBLE - Mobile Keyboard covered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0}, Lcom/android/keyguard/iris/KeyguardIrisView;->clearWithPreviewText()V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    const-string/jumbo v0, "KeyguardIrisView"

    const-string/jumbo v1, "preview to VISIBLE - Mobile Keyboard detached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    .line 285
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mNoPreview:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mNoPreview:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->removeView(Landroid/view/View;)V

    .line 289
    iput-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mNoPreview:Landroid/view/View;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V

    .line 126
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 73
    const-string/jumbo v0, "KeyguardIrisView"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->setVisibility(I)V

    .line 80
    :goto_0
    sget v0, Lcom/android/keyguard/R$id;->keyguard_iris_preview:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    .line 81
    sget v0, Lcom/android/keyguard/R$id;->iris_help_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisPreviewText:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/android/keyguard/R$id;->iris_nomatch_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    .line 83
    invoke-direct {p0}, Lcom/android/keyguard/iris/KeyguardIrisView;->clearWithPreviewText()V

    .line 84
    invoke-direct {p0}, Lcom/android/keyguard/iris/KeyguardIrisView;->changeTextColorOnWhiteWallpaper()V

    .line 87
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    iput-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mSupportMKeyboardModel:Z

    .line 88
    iget-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mSupportMKeyboardModel:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mCurrentMobileKeyboardState:I

    .line 90
    iget v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mCurrentMobileKeyboardState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 96
    :cond_0
    new-instance v0, Lcom/android/keyguard/iris/KeyguardIrisView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/iris/KeyguardIrisView$2;-><init>(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    .line 71
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/keyguard/iris/KeyguardIrisView;->isInViewArea(FFLandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    return v4

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 317
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 337
    :pswitch_0
    return v4

    .line 319
    :pswitch_1
    return v5

    .line 322
    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPossibleToForceCancelIris()Z

    move-result v1

    .line 322
    if-eqz v1, :cond_1

    .line 324
    const-string/jumbo v1, "KeyguardIrisView"

    const-string/jumbo v2, "Stop recognition by touch on IrisPreivew"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    .line 326
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    .line 327
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 328
    sget v2, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    .line 327
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->setIrisHelpText(Ljava/lang/String;)V

    .line 333
    :goto_0
    return v5

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    .line 331
    invoke-direct {p0}, Lcom/android/keyguard/iris/KeyguardIrisView;->clearWithPreviewText()V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
