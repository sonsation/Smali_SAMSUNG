.class public Lcom/android/systemui/qs/QSSFinderView;
.super Lcom/android/systemui/qs/QSBarItem;
.source "QSSFinderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSFinderEditLayout:Landroid/widget/RelativeLayout;

.field private mSFinderEditText:Landroid/widget/TextView;

.field private mSFinderIconView:Landroid/widget/ImageView;

.field private mSFinderView:Landroid/view/View;

.field private mSFinederTranslation:F

.field private mTouchable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "barType"    # I

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSBarItem;-><init>(Landroid/content/Context;I)V

    .line 48
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    .line 53
    iput-object p1, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    const v1, 0x7f040115

    .line 54
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->QSBarItemView:Landroid/view/View;

    .line 56
    const v0, 0x7f130325

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderView:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinederTranslation:F

    .line 58
    const v0, 0x7f130326

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderEditLayout:Landroid/widget/RelativeLayout;

    .line 59
    const v0, 0x7f130328

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderIconView:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f130327

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderEditText:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v1, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSFinderView;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    return-void

    .line 63
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private startSFinderActivity(Ljava/lang/String;)V
    .locals 5
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    .line 139
    const-string/jumbo v3, "com.samsung.android.app.galaxyfinder"

    const-string/jumbo v4, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    .line 138
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "launch_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/android/systemui/qs/QSSFinderView;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 137
    return-void
.end method


# virtual methods
.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 110
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 111
    const-string/jumbo v2, "alpha"

    .line 110
    new-array v3, v8, [F

    .line 111
    aput v5, v3, v6

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v7

    .line 110
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 112
    const-string/jumbo v2, "translationY"

    .line 110
    new-array v3, v8, [F

    .line 112
    iget v4, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinederTranslation:F

    neg-float v4, v4

    aput v4, v3, v6

    aput v5, v3, v7

    .line 110
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 113
    const/high16 v2, 0x3f000000    # 0.5f

    .line 110
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    .line 115
    .local v0, "animator":Lcom/android/systemui/qs/TouchAnimator;
    return-object v0
.end method

.method public getBarHeight()I
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSFinderView;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBarVisibility()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isSFinderTileBlocked()Z

    move-result v0

    .line 121
    if-eqz v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 126
    const-string/jumbo v0, "voice_input"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->startSFinderActivity(Ljava/lang/String;)V

    .line 130
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    .line 132
    const-string/jumbo v2, "QP03"

    .line 131
    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    :cond_2
    return-void

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderEditLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_1

    .line 128
    const-string/jumbo v0, "text_input"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->startSFinderActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEmergencyModeChanged()V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSFinderView;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSBarItem$Callback;->onHeightChanged()V

    .line 102
    :cond_0
    return-void

    .line 103
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setPosition(F)V
    .locals 5
    .param p1, "fraction"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSBarItem;->setPosition(F)V

    .line 78
    cmpl-float v0, p1, v4

    if-nez v0, :cond_1

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    if-eqz v0, :cond_0

    .line 80
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderEditText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 89
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderEditLayout:Landroid/widget/RelativeLayout;

    cmpl-float v0, p1, v4

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderIconView:Landroid/widget/ImageView;

    cmpl-float v3, p1, v4

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 75
    return-void

    .line 84
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    if-nez v0, :cond_2

    .line 85
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderEditText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 89
    goto :goto_1

    :cond_4
    move v1, v2

    .line 90
    goto :goto_2
.end method
