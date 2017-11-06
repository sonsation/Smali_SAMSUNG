.class public Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;
.super Ljava/lang/Object;
.source "SmartStationBanner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SmartStationBanner"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBannerFrame:Landroid/widget/RelativeLayout;

.field private mBannerTipFrame:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCreateStationAnimator:Lcom/samsung/android/app/music/milk/radio/animation/Animatable;

.field private mLightFrame:Landroid/widget/FrameLayout;

.field private mLightGlow:Landroid/widget/ImageView;

.field private mLightGlowAnimator:Lcom/samsung/android/app/music/milk/radio/animation/Animatable;

.field private mPressBackground:Landroid/widget/ImageView;

.field private mRoot:Landroid/view/View;

.field private mWheel:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bannerView"    # Landroid/view/View;
    .param p3, "bannerClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mActivity:Landroid/app/Activity;

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mRoot:Landroid/view/View;

    .line 68
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mRoot:Landroid/view/View;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 70
    const v4, 0x7f12038d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mBannerTipFrame:Landroid/view/View;

    .line 71
    const v4, 0x7f120389

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mBannerFrame:Landroid/widget/RelativeLayout;

    .line 72
    const v4, 0x7f12038a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mPressBackground:Landroid/widget/ImageView;

    .line 73
    const v4, 0x7f12038c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mLightGlow:Landroid/widget/ImageView;

    .line 74
    const v4, 0x7f12038b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mLightFrame:Landroid/widget/FrameLayout;

    .line 75
    const v4, 0x7f120306

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mWheel:Landroid/widget/ImageView;

    .line 77
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mBannerFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mContext:Landroid/content/Context;

    const v5, 0x7f0a045a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "tipMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mContext:Landroid/content/Context;

    const v5, 0x7f0a037a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "contentDescription":Ljava/lang/String;
    const v4, 0x7f120078

    .line 83
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 84
    .local v1, "bannerTipText":Landroid/widget/TextView;
    const v4, 0x7f120137

    .line 85
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "bannerTipClose":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mRoot:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    const/4 v2, 0x0

    .line 145
    .local v2, "eventId":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 146
    const-string v6, "SmartStationBanner"

    const-string v7, "onClick. but no network."

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x0

    .line 150
    .local v0, "closeBanner":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 177
    :goto_1
    if-eqz v0, :cond_2

    .line 178
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->showTipsBanner(Z)V

    .line 180
    :cond_2
    if-eqz v2, :cond_0

    .line 181
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v6

    const-string v7, "901"

    invoke-virtual {v6, v7, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :sswitch_0
    const/4 v0, 0x1

    .line 153
    const-string v2, "9191"

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.samsung.radio.smart_station_guide_url"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "linkUrl":Ljava/lang/String;
    new-instance v6, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;

    sget-object v7, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->RADIO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    invoke-direct {v6, v7}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;-><init>(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;)V

    sget-object v7, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->ANNOUNCEMENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->host(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->action(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->WEBVIEW:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->target(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LINK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 159
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->extra(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkBuilder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 160
    .local v4, "linkUri":Landroid/net/Uri;
    const-string v6, "SmartStationBanner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick. tip message clicked. url -  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 166
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->getInstance()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->handleDeepLink(Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 167
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 172
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "linkUri":Landroid/net/Uri;
    .end local v5    # "linkUrl":Ljava/lang/String;
    :sswitch_1
    const-string v2, "9192"

    .line 173
    const/4 v0, 0x1

    goto :goto_1

    .line 150
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120078 -> :sswitch_0
        0x7f120137 -> :sswitch_1
    .end sparse-switch
.end method

.method public showBanner(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 108
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mBannerFrame:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 109
    return-void

    .line 108
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showTipsBanner(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 94
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mBannerTipFrame:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mRoot:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner$1;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    :cond_0
    return-void

    .line 94
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startGlowAnimation()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mLightGlowAnimator:Lcom/samsung/android/app/music/milk/radio/animation/Animatable;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mLightGlow:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationLightGlowAnimation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mLightGlowAnimator:Lcom/samsung/android/app/music/milk/radio/animation/Animatable;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mLightGlowAnimator:Lcom/samsung/android/app/music/milk/radio/animation/Animatable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/radio/animation/Animatable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mLightGlowAnimator:Lcom/samsung/android/app/music/milk/radio/animation/Animatable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/radio/animation/Animatable;->start()V

    .line 118
    :cond_1
    return-void
.end method

.method public startProgressAnimation(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$CreateCondition;Landroid/animation/Animator$AnimatorListener;)V
    .locals 8
    .param p1, "loadingCondition"    # Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$CreateCondition;
    .param p2, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mCreateStationAnimator:Lcom/samsung/android/app/music/milk/radio/animation/Animatable;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mBannerFrame:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mLightGlow:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mLightFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mPressBackground:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mWheel:Landroid/widget/ImageView;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$CreateCondition;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mCreateStationAnimator:Lcom/samsung/android/app/music/milk/radio/animation/Animatable;

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mCreateStationAnimator:Lcom/samsung/android/app/music/milk/radio/animation/Animatable;

    invoke-interface {v0, p2}, Lcom/samsung/android/app/music/milk/radio/animation/Animatable;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mCreateStationAnimator:Lcom/samsung/android/app/music/milk/radio/animation/Animatable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/radio/animation/Animatable;->start()V

    .line 134
    return-void
.end method

.method public stopGlowAnimation()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mLightGlowAnimator:Lcom/samsung/android/app/music/milk/radio/animation/Animatable;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mLightGlowAnimator:Lcom/samsung/android/app/music/milk/radio/animation/Animatable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/radio/animation/Animatable;->stop()V

    .line 124
    :cond_0
    return-void
.end method

.method public stopProgressAnimation()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mCreateStationAnimator:Lcom/samsung/android/app/music/milk/radio/animation/Animatable;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->mCreateStationAnimator:Lcom/samsung/android/app/music/milk/radio/animation/Animatable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/radio/animation/Animatable;->stop()V

    .line 140
    :cond_0
    return-void
.end method
