.class public Lcom/android/keyguard/iris/KeyguardIrisTextPreview;
.super Landroid/widget/FrameLayout;
.source "KeyguardIrisTextPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;
    }
.end annotation


# instance fields
.field private mBouncerShowing:Z

.field private mCurrentMobileKeyboardState:I

.field private mIrisCancelButton:Landroid/widget/ImageView;

.field private mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

.field private mIrisPreviewText:Landroid/widget/TextView;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mSupportMKeyboardModel:Z

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->changeTextColorOnWhiteWallpaper()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;I)V
    .locals 0
    .param p1, "which"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->clearWithPreviewText(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setIrisHelpText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setIrisNomatchText(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    new-instance v0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;-><init>(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)V

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 74
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 71
    return-void
.end method

.method private changeTextColorOnWhiteWallpaper()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    .line 146
    const/4 v2, 0x2

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 144
    return-void
.end method

.method private clearWithPreviewText(I)V
    .locals 4
    .param p1, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    .line 100
    packed-switch p1, :pswitch_data_0

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isInViewArea(FFLandroid/view/View;)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 322
    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 323
    const v3, 0x1050017

    .line 322
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 324
    .local v0, "calibratedY":I
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 325
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 326
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v2

    int-to-float v3, v0

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v2

    int-to-float v3, v0

    add-float/2addr v2, v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    const/4 v1, 0x1

    .line 324
    :cond_0
    return v1
.end method

.method private setIrisHelpText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 330
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v1

    if-nez v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisCancelButton:Landroid/widget/ImageView;

    const-string/jumbo v2, ""

    if-ne p1, v2, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    :cond_1
    return-void
.end method

.method private setIrisNomatchText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 342
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    .line 338
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    .line 134
    const-string/jumbo v3, "white_lockscreen_wallpaper"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 130
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 288
    iget-boolean v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mSupportMKeyboardModel:Z

    if-eqz v0, :cond_0

    .line 289
    iget v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mCurrentMobileKeyboardState:I

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v0, v1, :cond_0

    .line 290
    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mCurrentMobileKeyboardState:I

    .line 286
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V

    .line 138
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 80
    const-string/jumbo v0, "KeyguardIrisTextPreview"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget v0, Lcom/android/keyguard/R$id;->keyguard_iris_help_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisPreviewText:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/android/keyguard/R$id;->keyguard_iris_nomatch_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisNomatchText:Lcom/android/keyguard/KeyguardMessageArea;

    .line 84
    sget v0, Lcom/android/keyguard/R$id;->keyguard_iris_cancel_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisCancelButton:Landroid/widget/ImageView;

    .line 85
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->clearWithPreviewText(I)V

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->iris_guide_str_for_text_preview:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setIrisHelpText(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->changeTextColorOnWhiteWallpaper()V

    .line 89
    new-instance v0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$2;-><init>(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)V

    iput-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    .line 78
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mIrisCancelButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->isInViewArea(FFLandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    return v4

    .line 301
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 302
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 318
    :pswitch_0
    return v4

    .line 304
    :pswitch_1
    return v5

    .line 307
    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPossibleToForceCancelIris()Z

    move-result v1

    .line 307
    if-eqz v1, :cond_1

    .line 309
    const-string/jumbo v1, "KeyguardIrisTextPreview"

    const-string/jumbo v2, "Stop recognition by touch on IrisPreivew"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    .line 311
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    .line 312
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    .line 314
    :cond_1
    return v5

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
