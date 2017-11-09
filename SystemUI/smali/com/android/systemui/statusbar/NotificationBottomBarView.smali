.class public Lcom/android/systemui/statusbar/NotificationBottomBarView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "NotificationBottomBarView.java"


# static fields
.field private static mIsShowButtonBg:Z


# instance fields
.field private mAnimatingNormalMode:Z

.field private mBlockButton:Landroid/widget/TextView;

.field private mBlockButtonInfoText:Landroid/widget/TextView;

.field private mBlockModeView:Landroid/view/View;

.field private mClearAllButton:Landroid/widget/TextView;

.field private mDoneButton:Landroid/widget/TextView;

.field private mNormalModeView:Landroid/view/View;

.field private mNotiSettingButton:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationBottomBarView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockModeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationBottomBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mAnimatingNormalMode:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public canBeSwiped()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getAnimatingToNormalHeight()I
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mAnimatingNormalMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNormalModeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getBlockNotiButtonView()Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getClearAllButtonView()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getAnimatingToNormalHeight()I

    move-result v0

    return v0
.end method

.method public getDoneButtonView()Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mDoneButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getAnimatingToNormalHeight()I

    move-result v0

    return v0
.end method

.method public getMaxContentHeight()I
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getAnimatingToNormalHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getAnimatingToNormalHeight()I

    move-result v0

    return v0
.end method

.method public getNotiSettingsButtonView()Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f1302d2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNormalModeView:Landroid/view/View;

    .line 48
    const v0, 0x7f1302d5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockModeView:Landroid/view/View;

    .line 49
    const v0, 0x7f1302d7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f1302d4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f1302d3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f1302d8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mDoneButton:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f1302d6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButtonInfoText:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->updateShowButtonBackground()V

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/NotificationBottomBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView$1;-><init>(Lcom/android/systemui/statusbar/NotificationBottomBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->setSoundEffectsEnabled(Z)V

    .line 46
    return-void
.end method

.method public performAddAnimation(JJ)V
    .locals 0
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 40
    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 0
    .param p1, "duration"    # J
    .param p3, "translationDirection"    # F
    .param p4, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 36
    return-void
.end method

.method public setBlockEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 121
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setClearAllEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 103
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setNotiSettingsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 112
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public switchBlockMode(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 154
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockModeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->notifyHeightChanged(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockModeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 158
    const-wide/16 v2, 0x15e

    .line 157
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->NOTIFICATION_GUTS_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 153
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockModeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->notifyHeightChanged(Z)V

    goto :goto_0
.end method

.method public switchNormalMode(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v0, 0x1

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mAnimatingNormalMode:Z

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->notifyHeightChanged(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockModeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 171
    const-wide/16 v2, 0x15e

    .line 170
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->NOTIFICATION_GUTS_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 173
    new-instance v1, Lcom/android/systemui/statusbar/NotificationBottomBarView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView$2;-><init>(Lcom/android/systemui/statusbar/NotificationBottomBarView;)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 166
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockModeView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->notifyHeightChanged(Z)V

    goto :goto_0
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    const v1, 0x7f0f023e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    const v1, 0x7f0f067e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    const v1, 0x7f0f067f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mDoneButton:Landroid/widget/TextView;

    const v1, 0x7f0f0680

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButtonInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButtonInfoText:Landroid/widget/TextView;

    const v1, 0x7f0f0681

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    :cond_4
    return-void
.end method

.method public updateShowButtonBackground()V
    .locals 5

    .prologue
    const v1, 0x7f020563

    const v2, 0x7f020561

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mIsShowButtonBg:Z

    .line 72
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 73
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mIsShowButtonBg:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 72
    :goto_0
    invoke-virtual {v4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 76
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mIsShowButtonBg:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 75
    :goto_1
    invoke-virtual {v4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 79
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mIsShowButtonBg:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 78
    :goto_2
    invoke-virtual {v4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 82
    sget-boolean v4, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mIsShowButtonBg:Z

    if-eqz v4, :cond_3

    .line 81
    :goto_3
    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_1

    :cond_2
    move v0, v2

    .line 80
    goto :goto_2

    :cond_3
    move v1, v2

    .line 83
    goto :goto_3
.end method
