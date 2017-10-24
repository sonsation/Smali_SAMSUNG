.class public Lcom/android/systemui/AutoReinflateContainer;
.super Landroid/widget/FrameLayout;
.source "AutoReinflateContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/AutoReinflateContainer$1;,
        Lcom/android/systemui/AutoReinflateContainer$2;,
        Lcom/android/systemui/AutoReinflateContainer$InflateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDensity:I

.field private final mInflateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/AutoReinflateContainer$InflateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mLayout:I

.field private mLocaleList:Landroid/os/LocaleList;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/AutoReinflateContainer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/AutoReinflateContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/AutoReinflateContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/AutoReinflateContainer;F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/AutoReinflateContainer;->setPanelAlpha(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/systemui/AutoReinflateContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/AutoReinflateContainer;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    .line 55
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    .line 57
    const-string/jumbo v2, "show_button_background"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v3

    .line 55
    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mSettingsValueList:[Landroid/net/Uri;

    .line 156
    new-instance v1, Lcom/android/systemui/AutoReinflateContainer$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/AutoReinflateContainer$1;-><init>(Lcom/android/systemui/AutoReinflateContainer;)V

    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 167
    new-instance v1, Lcom/android/systemui/AutoReinflateContainer$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/AutoReinflateContainer$2;-><init>(Lcom/android/systemui/AutoReinflateContainer;)V

    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mDensity:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLocaleList:Landroid/os/LocaleList;

    .line 68
    sget-object v1, Lcom/android/systemui/R$styleable;->AutoReinflateContainer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "AutoReinflateContainer must contain a layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLayout:I

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 75
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/AutoReinflateContainer;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/AutoReinflateContainer;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    iget-object v3, p0, Lcom/android/systemui/AutoReinflateContainer;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 62
    return-void
.end method

.method private animatePanelAlpha()V
    .locals 4

    .prologue
    .line 109
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 110
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 111
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    new-instance v1, Lcom/android/systemui/AutoReinflateContainer$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/AutoReinflateContainer$3;-><init>(Lcom/android/systemui/AutoReinflateContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    new-instance v1, Lcom/android/systemui/AutoReinflateContainer$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/AutoReinflateContainer$4;-><init>(Lcom/android/systemui/AutoReinflateContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 124
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 108
    return-void

    .line 109
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private inflateLayout()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout(Z)V

    .line 127
    return-void
.end method

.method private inflateLayout(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 132
    sget-object v2, Lcom/android/systemui/AutoReinflateContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "inflateLayout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->removeAllViews()V

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/AutoReinflateContainer;->mLayout:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 135
    const v2, 0x7f130310

    invoke-virtual {p0, v2}, Lcom/android/systemui/AutoReinflateContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel;

    iput-object v2, p0, Lcom/android/systemui/AutoReinflateContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 136
    iget-object v2, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 137
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/AutoReinflateContainer$InflateListener;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/AutoReinflateContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/AutoReinflateContainer$InflateListener;->onInflated(Landroid/view/View;)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/AutoReinflateContainer;->animatePanelAlpha()V

    .line 131
    :cond_1
    return-void
.end method

.method private setPanelAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setAlpha(F)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public addInflateListener(Lcom/android/systemui/AutoReinflateContainer$InflateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/AutoReinflateContainer$InflateListener;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/AutoReinflateContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/AutoReinflateContainer$InflateListener;->onInflated(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, "shouldInflateLayout":Z
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 87
    .local v0, "density":I
    iget v3, p0, Lcom/android/systemui/AutoReinflateContainer;->mDensity:I

    if-eq v0, v3, :cond_0

    .line 88
    iput v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mDensity:I

    .line 89
    const/4 v2, 0x1

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 92
    .local v1, "localeList":Landroid/os/LocaleList;
    iget-object v3, p0, Lcom/android/systemui/AutoReinflateContainer;->mLocaleList:Landroid/os/LocaleList;

    if-eq v1, v3, :cond_1

    .line 93
    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLocaleList:Landroid/os/LocaleList;

    .line 94
    const/4 v2, 0x1

    .line 97
    :cond_1
    if-eqz v2, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 83
    :cond_2
    return-void
.end method

.method public updateQuickSettingPanel(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout(Z)V

    .line 183
    return-void
.end method
