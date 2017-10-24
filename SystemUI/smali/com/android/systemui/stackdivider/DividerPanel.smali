.class public Lcom/android/systemui/stackdivider/DividerPanel;
.super Lcom/android/systemui/SystemUI;
.source "DividerPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerPanel$-void_postDividerVisibilityChanged_boolean_visible_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/DividerPanel$-void_postDockedStackMinimizedChanged_boolean_minimized_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;,
        Lcom/android/systemui/stackdivider/DividerPanel$H;,
        Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;
    }
.end annotation


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private mDividerMinimized:Z

.field private mDividerPanelListener:Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

.field private mDividerVisible:Z

.field private final mH:Landroid/os/Handler;

.field private final mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

.field private mSnapViewMode:Z

.field private mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

.field private mTmpConfiguration:Landroid/content/res/Configuration;

.field private mTmpResources:Landroid/content/res/Resources;

.field private mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

.field private mVisible:Z

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;


# direct methods
.method static synthetic -com_android_systemui_stackdivider_DividerPanel_lambda$1()V
    .locals 3

    .prologue
    .line 331
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 0
    return-void
.end method

.method static synthetic -com_android_systemui_stackdivider_DividerPanel_lambda$2()V
    .locals 3

    .prologue
    .line 345
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 0
    return-void
.end method

.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerPanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerPanel;)Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerPanelListener:Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerPanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/DividerPanel;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/DividerPanel;)Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/DividerPanel;)Lcom/android/systemui/stackdivider/DividerSnapView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/DividerPanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerPanel;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerPanel;->postDividerVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/DividerPanel;Z)V
    .locals 0
    .param p1, "minimized"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerPanel;->postDockedStackMinimizedChanged(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    .line 59
    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mVisible:Z

    .line 355
    new-instance v0, Lcom/android/systemui/stackdivider/DividerPanel$H;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/DividerPanel$H;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method private addButtons(Landroid/content/res/Configuration;)V
    .locals 12
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v9, 0x0

    .line 174
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 175
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    .line 176
    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_0

    const/4 v2, 0x1

    .line 178
    .local v2, "landscape":Z
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 179
    const v10, 0x7f0400c2

    const/4 v11, 0x0

    .line 178
    invoke-virtual {v8, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 177
    check-cast v8, Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iput-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    .line 180
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v8}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 181
    .local v6, "shape":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->getWindowShortLengthPixel()I

    move-result v7

    .line 182
    .local v7, "width":I
    :goto_1
    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->getWindowLongLengthPixel()I

    move-result v0

    .line 183
    .local v0, "height":I
    :goto_2
    invoke-virtual {v6, v9, v9, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 184
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v8, v9}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 185
    .local v5, "rippleLayer":Landroid/widget/FrameLayout;
    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 186
    .local v1, "iconLayer":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 187
    .local v4, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    const v10, 0x7f0d0016

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 188
    .local v3, "margin":I
    if-eqz v2, :cond_3

    .line 189
    invoke-virtual {v4, v9, v3, v9, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 193
    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    if-eqz v2, :cond_4

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 195
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iget-boolean v9, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    invoke-virtual {v8, v9}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->notifySnapMode(Z)V

    .line 196
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v8, v9, v7, v0}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->add(Landroid/view/View;II)V

    .line 197
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v8, v9}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setWindowManager(Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;)V

    .line 173
    return-void

    .line 176
    .end local v0    # "height":I
    .end local v1    # "iconLayer":Landroid/widget/LinearLayout;
    .end local v2    # "landscape":Z
    .end local v3    # "margin":I
    .end local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "rippleLayer":Landroid/widget/FrameLayout;
    .end local v6    # "shape":Landroid/graphics/drawable/Drawable;
    .end local v7    # "width":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "landscape":Z
    goto :goto_0

    .line 181
    .restart local v6    # "shape":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->getWindowLongLengthPixel()I

    move-result v7

    .restart local v7    # "width":I
    goto :goto_1

    .line 182
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->getWindowShortLengthPixel()I

    move-result v0

    goto :goto_2

    .line 191
    .restart local v0    # "height":I
    .restart local v1    # "iconLayer":Landroid/widget/LinearLayout;
    .restart local v3    # "margin":I
    .restart local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v5    # "rippleLayer":Landroid/widget/FrameLayout;
    :cond_3
    invoke-virtual {v4, v3, v9, v3, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_3

    :cond_4
    move v8, v9

    .line 194
    goto :goto_4
.end method

.method private addSnapView(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "isVisible"    # Z
    .param p2, "snapTarget"    # I
    .param p3, "dockedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, -0x1

    .line 247
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->add(Landroid/view/View;II)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->setWindowManager(Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/stackdivider/DividerSnapView;->makeVisible(ZILandroid/graphics/Rect;)V

    .line 246
    return-void
.end method

.method private endSnapMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 260
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v3, v2}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 261
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 259
    return-void
.end method

.method private getWindowLongLengthPixel()I
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x41f80000    # 31.0f

    .line 157
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    move v3, v7

    .line 158
    .local v3, "landscape":Z
    :goto_0
    if-nez v3, :cond_2

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    .line 159
    :goto_1
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_3

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    .line 160
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    const v8, 0x7f0d001a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 161
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    .line 160
    div-float v0, v6, v8

    .line 162
    .local v0, "iconSize":F
    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v0

    add-float v8, v6, v9

    .line 163
    if-eqz v2, :cond_4

    add-float v6, v0, v9

    .line 162
    :goto_3
    add-float/2addr v6, v8

    .line 164
    if-eqz v1, :cond_0

    add-float v5, v0, v9

    .line 162
    :cond_0
    add-float/2addr v5, v6

    .line 165
    const/high16 v6, 0x42480000    # 50.0f

    .line 162
    add-float v4, v5, v6

    .line 166
    .local v4, "len":F
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    return v5

    .line 157
    .end local v0    # "iconSize":F
    .end local v3    # "landscape":Z
    .end local v4    # "len":F
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 158
    .restart local v3    # "landscape":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "isSnapView":Z
    goto :goto_1

    .line 159
    .end local v2    # "isSnapView":Z
    :cond_3
    const/4 v1, 0x0

    .local v1, "isFreeformSupport":Z
    goto :goto_2

    .end local v1    # "isFreeformSupport":Z
    .restart local v0    # "iconSize":F
    :cond_4
    move v6, v5

    .line 163
    goto :goto_3
.end method

.method private getWindowShortLengthPixel()I
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private initSnapViewWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    .line 242
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040041

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    .line 239
    :cond_0
    return-void
.end method

.method private postDividerVisibilityChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    if-eq v0, p1, :cond_0

    .line 328
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->shouldHide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    new-instance v1, Lcom/android/systemui/stackdivider/DividerPanel$-void_postDividerVisibilityChanged_boolean_visible_LambdaImpl0;

    invoke-direct {v1}, Lcom/android/systemui/stackdivider/DividerPanel$-void_postDividerVisibilityChanged_boolean_visible_LambdaImpl0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->post(Ljava/lang/Runnable;)Z

    .line 326
    :cond_0
    return-void
.end method

.method private postDockedStackMinimizedChanged(Z)V
    .locals 4
    .param p1, "minimized"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 338
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    if-eq v0, p1, :cond_1

    .line 339
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->shouldHide()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 342
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    new-instance v1, Lcom/android/systemui/stackdivider/DividerPanel$-void_postDockedStackMinimizedChanged_boolean_minimized_LambdaImpl0;

    invoke-direct {v1}, Lcom/android/systemui/stackdivider/DividerPanel$-void_postDockedStackMinimizedChanged_boolean_minimized_LambdaImpl0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->post(Ljava/lang/Runnable;)Z

    .line 337
    :cond_1
    return-void
.end method

.method private removeSnapView()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->remove()V

    .line 253
    :cond_0
    return-void
.end method

.method private shouldHide()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 282
    invoke-super {p0}, Lcom/android/systemui/SystemUI;->finalize()V

    .line 283
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;)V
    .locals 6
    .param p1, "e"    # Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 201
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isVisible()Z

    move-result v0

    .line 202
    .local v0, "visible":Z
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mVisible:Z

    if-eq v1, v0, :cond_2

    .line 203
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mVisible:Z

    .line 204
    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isOnce()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->cancelAnimate()V

    .line 210
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v1, v3}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->setTouchable(Z)V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->remove()V

    .line 212
    iput-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DividerPanel;->addButtons(Landroid/content/res/Configuration;)V

    .line 215
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->setTouchable(Z)V

    .line 216
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v1, v3}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setVisibility(I)V

    .line 217
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isAnimate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v1, v5}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->animate(Z)V

    .line 200
    :cond_2
    :goto_0
    return-void

    .line 221
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    if-eqz v1, :cond_2

    .line 222
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isAnimate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->cancelAnimate()V

    .line 224
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v1, v3}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->setTouchable(Z)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v1, v3}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->animate(Z)V

    goto :goto_0

    .line 227
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->cancelAnimate()V

    .line 228
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v1, v3}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->setTouchable(Z)V

    .line 229
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setVisibility(I)V

    .line 230
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->remove()V

    .line 231
    iput-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;)V
    .locals 3
    .param p1, "e"    # Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    .prologue
    .line 265
    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mVisible:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->initSnapViewWindow()V

    .line 267
    iget v0, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapTarget:I

    iget-object v1, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mDockedRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/stackdivider/DividerPanel;->addSnapView(ZILandroid/graphics/Rect;)V

    .line 264
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->removeSnapView()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;)V
    .locals 3
    .param p1, "e"    # Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    if-eqz v0, :cond_0

    .line 275
    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    .line 276
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    iget-boolean v1, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    iget-boolean v2, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mSendToSerivce:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->startSnapMode(ZZ)V

    .line 273
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 146
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 147
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->endSnapMode()V

    .line 143
    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 74
    new-instance v3, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    .line 75
    const-class v3, Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-virtual {p0, v3, p0}, Lcom/android/systemui/stackdivider/DividerPanel;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 76
    new-instance v0, Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;

    invoke-direct {v0, p0, v5}, Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;-><init>(Lcom/android/systemui/stackdivider/DividerPanel;Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;)V

    .line 77
    .local v0, "mDockedStackListener":Landroid/view/IDockedStackListener;
    new-instance v3, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;-><init>(Lcom/android/systemui/stackdivider/DividerPanel;Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;)V

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerPanelListener:Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    .line 78
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerPanelListener:Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->registerMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    .line 79
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 80
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    .line 81
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 84
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v3, :cond_0

    .line 86
    new-instance v3, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mConfiguration:Landroid/content/res/Configuration;

    .line 87
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v1, "pkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.samsung.android.intent.action.POPUP_GUIDE_SNAP_TARGET_FULLSCREEN"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/stackdivider/DividerPanel$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/stackdivider/DividerPanel$1;-><init>(Lcom/android/systemui/stackdivider/DividerPanel;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    .end local v1    # "pkgFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method
