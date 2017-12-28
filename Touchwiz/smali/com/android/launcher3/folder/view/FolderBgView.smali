.class public Lcom/android/launcher3/folder/view/FolderBgView;
.super Landroid/widget/FrameLayout;
.source "FolderBgView.java"


# instance fields
.field private mHelpContainer:Landroid/widget/LinearLayout;

.field private mHelpText:Landroid/widget/TextView;

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/folder/view/FolderBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 48
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f110085

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderBgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    .line 54
    const v0, 0x7f110086

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderBgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpText:Landroid/widget/TextView;

    .line 55
    return-void
.end method

.method public onMoveFromFolderBottom()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 100
    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/util/LightingEffectManager;->turnOnEachLight(IZ)V

    .line 101
    return-void
.end method

.method public onMoveFromFolderTop()V
    .locals 3

    .prologue
    .line 96
    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LightingEffectManager;->turnOnEachLight(IZ)V

    .line 97
    return-void
.end method

.method public onMoveInFolder()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LightingEffectManager;->turnOffAllLight()V

    .line 93
    return-void
.end method

.method public setHelpTextColor(Z)V
    .locals 4
    .param p1, "isWhiteBg"    # Z

    .prologue
    const/4 v3, 0x0

    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderBgView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0005

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 88
    .local v0, "bgColor":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    return-void

    .line 86
    .end local v0    # "bgColor":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderBgView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0006

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .restart local v0    # "bgColor":I
    goto :goto_0
.end method

.method public setHelpTextContainerHeightAndGravity(II)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "gravity"    # I

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 75
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 79
    return-void
.end method

.method public showHelpForEdit(ZIZ)V
    .locals 6
    .param p1, "toBeShown"    # Z
    .param p2, "animDuration"    # I
    .param p3, "withLighting"    # Z

    .prologue
    .line 58
    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    .local v1, "toAlpha":F
    :goto_0
    if-lez p2, :cond_2

    .line 60
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 65
    :goto_1
    if-eqz p3, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderBgView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    .line 68
    .local v0, "isLandscape":Z
    :goto_2
    sget-object v2, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    .line 70
    .end local v0    # "isLandscape":Z
    :cond_0
    return-void

    .line 58
    .end local v1    # "toAlpha":F
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 62
    .restart local v1    # "toAlpha":F
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_1

    .line 66
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
