.class public abstract Lcom/android/launcher3/widget/controller/WidgetState;
.super Ljava/lang/Object;
.source "WidgetState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;,
        Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;,
        Lcom/android/launcher3/widget/controller/WidgetState$State;
    }
.end annotation


# static fields
.field protected static final mTitleBarAlphaIn:Landroid/animation/PropertyValuesHolder;

.field protected static final mTitleBarAlphaOut:Landroid/animation/PropertyValuesHolder;

.field protected static sTitleLayerPaint:Landroid/graphics/Paint;


# instance fields
.field protected mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

.field protected final mContext:Landroid/content/Context;

.field protected mTitleBarHeight:I

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/controller/WidgetState;->sTitleLayerPaint:Landroid/graphics/Paint;

    .line 28
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState;->sTitleLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 29
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState;->sTitleLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/widget/controller/WidgetState;->mTitleBarAlphaOut:Landroid/animation/PropertyValuesHolder;

    .line 34
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/widget/controller/WidgetState;->mTitleBarAlphaIn:Landroid/animation/PropertyValuesHolder;

    return-void

    .line 33
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleBar"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetState;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/controller/WidgetState;->initTitleBar(Landroid/view/View;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected changeColorForBg(Z)V
    .locals 0
    .param p1, "whitBg"    # Z

    .prologue
    .line 108
    return-void
.end method

.method protected clickNotAllowed(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f09005d

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 158
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetState;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetState;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetState;->mToast:Landroid/widget/Toast;

    .line 171
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetState;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 173
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetState;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v1, v3

    .line 174
    .local v1, "offsetY":F
    const v3, 0x7f110102

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 175
    .local v2, "p":Landroid/view/View;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 176
    .local v0, "bounce":Landroid/animation/AnimatorSet;
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    aput v1, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    .line 177
    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 178
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 180
    return-void

    .line 169
    .end local v0    # "bounce":Landroid/animation/AnimatorSet;
    .end local v1    # "offsetY":F
    .end local v2    # "p":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetState;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method public abstract enter(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V
.end method

.method public abstract exit(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V
.end method

.method public abstract getState()Lcom/android/launcher3/widget/controller/WidgetState$State;
.end method

.method protected initTitleBar(Landroid/view/View;)V
    .locals 2
    .param p1, "titleBar"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/controller/WidgetState;->mTitleBarHeight:I

    .line 71
    return-void
.end method

.method public abstract onBackPressed()Z
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onPagedViewTouchIntercepted()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method protected onStageEnter()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method protected onStageExit()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 95
    return-void
.end method

.method public onWidgetItemClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    return-void
.end method

.method public onWidgetItemLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public openKeyBoard()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public refreshModel()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public refreshView()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 92
    return-void
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    return-void
.end method

.method public setActionListener(Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetState;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    .line 102
    return-void
.end method

.method public abstract setFocus()V
.end method

.method public setFocusToSearchEditText()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected setHasInstallableApp(Z)V
    .locals 0
    .param p1, "has"    # Z

    .prologue
    .line 105
    return-void
.end method

.method protected showPopupMenu()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method protected slideIn(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 7
    .param p1, "titleBar"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 124
    if-nez p1, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 127
    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState;->sTitleLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 128
    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    neg-int v4, p2

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v6

    .line 129
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/launcher3/widget/controller/WidgetState;->mTitleBarAlphaIn:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    .line 128
    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 131
    .local v0, "animator":Landroid/animation/Animator;
    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetState$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/widget/controller/WidgetState$1;-><init>(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method protected slideOut(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 7
    .param p1, "titleBar"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 141
    if-nez p1, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0

    .line 143
    :cond_0
    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState;->sTitleLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 144
    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v6, [F

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/launcher3/widget/controller/WidgetState;->mTitleBarAlphaOut:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    .line 144
    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 147
    .local v0, "animator":Landroid/animation/Animator;
    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetState$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/widget/controller/WidgetState$2;-><init>(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method
