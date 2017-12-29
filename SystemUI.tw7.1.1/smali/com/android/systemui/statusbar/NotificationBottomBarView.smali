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
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public canBeSwiped()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockModeView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    :cond_1
    :goto_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->requestFocus()Z

    goto :goto_2
.end method

.method public getAnimatingToNormalHeight()I
    .locals 1

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

.method public getClearAllButtonView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCollapsedHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getAnimatingToNormalHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getAnimatingToNormalHeight()I

    move-result v0

    return v0
.end method

.method public getMaxContentHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getAnimatingToNormalHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getAnimatingToNormalHeight()I

    move-result v0

    return v0
.end method

.method public getNotiSettingsButtonView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 5

    const v4, 0x7f130160

    const v3, 0x7f13015f

    const v0, 0x7f13015e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNormalModeView:Landroid/view/View;

    const v0, 0x7f130161

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockModeView:Landroid/view/View;

    const v0, 0x7f130163

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    const v0, 0x7f130164

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mDoneButton:Landroid/widget/TextView;

    const v0, 0x7f130162

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButtonInfoText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f02dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->updateShowButtonBackground()V

    new-instance v0, Lcom/android/systemui/statusbar/NotificationBottomBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView$1;-><init>(Lcom/android/systemui/statusbar/NotificationBottomBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    :cond_2
    return-void
.end method

.method public performAddAnimation(JJ)V
    .locals 0

    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public setClearAllEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setNotiSettingsEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public updateResources()V
    .locals 3

    const v2, 0x7f0f02dd

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    const v1, 0x7f0f07a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    const v1, 0x7f0f07a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mDoneButton:Landroid/widget/TextView;

    const v1, 0x7f0f07a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButtonInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButtonInfoText:Landroid/widget/TextView;

    const v1, 0x7f0f07a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    return-void
.end method

.method public updateShowButtonBackground()V
    .locals 5

    const v1, 0x7f0205f7

    const v2, 0x7f0205f5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mIsShowButtonBg:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mIsShowButtonBg:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mIsShowButtonBg:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mIsShowButtonBg:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-boolean v4, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mIsShowButtonBg:Z

    if-eqz v4, :cond_7

    :goto_3
    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3
.end method
