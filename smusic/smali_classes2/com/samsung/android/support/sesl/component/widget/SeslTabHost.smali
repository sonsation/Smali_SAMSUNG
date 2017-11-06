.class public Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;
.super Landroid/widget/FrameLayout;
.source "SeslTabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IntentContentStrategy;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$FactoryContentStrategy;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIdContentStrategy;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIndicatorStrategy;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelAndIconIndicatorStrategy;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$LabelIndicatorStrategy;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ContentStrategy;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IndicatorStrategy;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabContentFactory;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;
    }
.end annotation


# static fields
.field private static final TABWIDGET_LOCATION_BOTTOM:I = 0x3

.field private static final TABWIDGET_LOCATION_LEFT:I = 0x0

.field private static final TABWIDGET_LOCATION_RIGHT:I = 0x2

.field private static final TABWIDGET_LOCATION_TOP:I = 0x1


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabLayoutId:I

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabSpecs:Ljava/util/List;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    .line 64
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentView:Landroid/view/View;

    .line 69
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->initTabHost()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabSpecs:Ljava/util/List;

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    .line 64
    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentView:Landroid/view/View;

    .line 69
    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 91
    sget-object v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslTabWidget:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslTabWidget_seslTabLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabLayoutId:I

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabLayoutId:I

    if-nez v1, :cond_0

    .line 100
    sget v1, Lcom/samsung/android/support/sesl/R$layout;->sesl_tab_indicator_layout:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabLayoutId:I

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->initTabHost()V

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    .prologue
    .line 50
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabLayoutId:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private getTabWidgetLocation()I
    .locals 3

    .prologue
    .line 300
    const/4 v0, 0x1

    .line 302
    .local v0, "location":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 309
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getTop()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v0, 0x3

    .line 313
    :goto_0
    return v0

    .line 304
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getLeft()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x2

    .line 306
    :goto_1
    goto :goto_0

    .line 304
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 309
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initTabHost()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->setFocusableInTouchMode(Z)V

    .line 108
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->setDescendantFocusability(I)V

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentView:Landroid/view/View;

    .line 112
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mOnTabChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mOnTabChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 447
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;)V
    .locals 4
    .param p1, "tabSpec"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;

    .prologue
    const/4 v3, 0x0

    .line 215
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 216
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, "tabIndicator":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 227
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setStripEnabled(Z)V

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->addView(Landroid/view/View;)V

    .line 232
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 235
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->setCurrentTab(I)V

    .line 237
    :cond_3
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->removeAllViews()V

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->initTabHost()V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->requestLayout()V

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->invalidate()V

    .line 249
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 336
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 337
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentView:Landroid/view/View;

    .line 340
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    const/16 v2, 0x13

    .line 342
    .local v2, "keyCodeShouldChangeFocus":I
    const/16 v0, 0x21

    .line 343
    .local v0, "directionShouldChangeFocus":I
    const/4 v3, 0x2

    .line 345
    .local v3, "soundEffect":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->getTabWidgetLocation()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 363
    :pswitch_0
    const/16 v2, 0x13

    .line 364
    const/16 v0, 0x21

    .line 365
    const/4 v3, 0x2

    .line 368
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentView:Landroid/view/View;

    .line 369
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 370
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 371
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->playSoundEffect(I)V

    .line 372
    const/4 v1, 0x1

    .line 375
    .end local v0    # "directionShouldChangeFocus":I
    .end local v1    # "handled":Z
    .end local v2    # "keyCodeShouldChangeFocus":I
    .end local v3    # "soundEffect":I
    :cond_0
    return v1

    .line 347
    .restart local v0    # "directionShouldChangeFocus":I
    .restart local v1    # "handled":Z
    .restart local v2    # "keyCodeShouldChangeFocus":I
    .restart local v3    # "soundEffect":I
    :pswitch_1
    const/16 v2, 0x15

    .line 348
    const/16 v0, 0x11

    .line 349
    const/4 v3, 0x1

    .line 350
    goto :goto_0

    .line 352
    :pswitch_2
    const/16 v2, 0x16

    .line 353
    const/16 v0, 0x42

    .line 354
    const/4 v3, 0x3

    .line 355
    goto :goto_0

    .line 357
    :pswitch_3
    const/16 v2, 0x14

    .line 358
    const/16 v0, 0x82

    .line 359
    const/4 v3, 0x4

    .line 360
    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 380
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 383
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 387
    const-class v0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabWidget()Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;Ljava/lang/String;Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;)V

    return-object v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 208
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, -0x1

    .line 391
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    if-eq p1, v1, :cond_0

    .line 400
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_2

    .line 401
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ContentStrategy;->tabClosed()V

    .line 404
    :cond_2
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    .line 405
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;

    .line 409
    .local v0, "spec":Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->focusCurrentTab(I)V

    .line 412
    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentView:Landroid/view/View;

    .line 414
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 415
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 416
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4

    .line 426
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 430
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->setCurrentTab(I)V

    .line 285
    :cond_0
    return-void

    .line 279
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnTabChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mOnTabChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;

    .line 441
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 134
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 169
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabWidget:Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setTabSelectionListener(Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget$OnTabSelectionChanged;)V

    .line 178
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 179
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .param p1, "activityGroup"    # Landroid/app/LocalActivityManager;

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->setup()V

    .line 202
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 203
    return-void
.end method
