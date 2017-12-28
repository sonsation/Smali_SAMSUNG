.class Lcom/android/launcher3/home/HomeFocusHelper;
.super Ljava/lang/Object;
.source "HomeFocusHelper.java"


# static fields
.field static final ALIGN_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field private static final DEBUG:Z = false

.field static final HOME_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final OVERVIEW_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final PAGE_DELETE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final SCREENGRID_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final SCREENGRID_PANEL_TOP_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field private static final TAG:Ljava/lang/String; = "HomeFocusHelper"

.field static final WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final ZERO_PAGE_SWITCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field private static mFirstTime:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/home/HomeFocusHelper;->mFirstTime:Z

    .line 47
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$1;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 54
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$2;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 61
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$3;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$3;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->ALIGN_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 68
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$4;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$4;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->HOME_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 75
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$5;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$5;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->PAGE_DELETE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 82
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$6;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$6;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->OVERVIEW_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 89
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$7;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$7;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->ZERO_PAGE_SWITCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 96
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$8;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$8;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_TOP_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 103
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$9;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$9;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleAlignButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleHomeButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handlePageDeleteButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleOverviewPanelOptionButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleZeroPageSwitchKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleScreenGridPanelTopButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleScreenGridPanelOptionButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private static getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alignTop"    # Z
    .param p2, "deleteButton"    # Z
    .param p3, "zeroPageSwitch"    # Z

    .prologue
    const/4 v5, 0x0

    .line 737
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v3

    .line 738
    .local v3, "homeController":Lcom/android/launcher3/home/HomeController;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 739
    if-eqz p2, :cond_0

    .line 740
    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v4

    .line 755
    :goto_0
    return-object v4

    .line 741
    :cond_0
    if-eqz p3, :cond_1

    .line 742
    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    goto :goto_0

    .line 745
    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v1

    .line 746
    .local v1, "alignLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 747
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 748
    .local v2, "alignLayoutTop":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 749
    .local v0, "alignLayoutBottom":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 750
    if-eqz p1, :cond_2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 755
    .end local v0    # "alignLayoutBottom":Landroid/widget/LinearLayout;
    .end local v1    # "alignLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .end local v2    # "alignLayoutTop":Landroid/widget/LinearLayout;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 728
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    .line 729
    .local v0, "homeController":Lcom/android/launcher3/home/HomeController;
    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v1

    .line 732
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static handleAlignButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 258
    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v2

    .line 259
    .local v2, "consume":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-eq v7, v8, :cond_0

    if-nez v2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v2

    .line 263
    :cond_1
    invoke-static {p0, v8, v9, v9}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 264
    .local v1, "alignButtonTop":Landroid/widget/ImageView;
    invoke-static {p0, v9, v9, v9}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 265
    .local v0, "alignButtonBottom":Landroid/widget/ImageView;
    invoke-static {p0, v9, v8, v9}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v6

    .line 266
    .local v6, "pageDeleteButton":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f110094

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 268
    .local v3, "homeButton":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 272
    const/4 v4, 0x0

    .line 273
    .local v4, "newIcon":Landroid/view/View;
    sparse-switch p1, :sswitch_data_0

    .line 319
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 320
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 321
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    .line 275
    :sswitch_0
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 276
    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 277
    move-object v4, v1

    goto :goto_1

    .line 278
    :cond_3
    if-eqz v6, :cond_4

    .line 279
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 280
    move-object v4, v6

    goto :goto_1

    .line 281
    :cond_4
    if-eqz v3, :cond_2

    .line 282
    move-object v4, v3

    goto :goto_1

    .line 284
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 285
    if-eqz v3, :cond_2

    .line 286
    move-object v4, v3

    goto :goto_1

    .line 293
    :sswitch_1
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 294
    if-eqz v6, :cond_6

    .line 295
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    .line 296
    move-object v4, v6

    goto :goto_1

    .line 297
    :cond_6
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 298
    move-object v4, v0

    goto :goto_1

    .line 300
    :cond_7
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 301
    .local v5, "overviewPanel":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_2

    .line 302
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 305
    .end local v5    # "overviewPanel":Landroid/widget/LinearLayout;
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 306
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 307
    .restart local v5    # "overviewPanel":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_2

    .line 308
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 313
    .end local v5    # "overviewPanel":Landroid/widget/LinearLayout;
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 314
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_1

    .line 273
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method private static handleHomeButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 370
    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v2

    .line 371
    .local v2, "consume":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-eq v7, v9, :cond_0

    if-nez v2, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v2

    .line 375
    :cond_1
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_2

    .line 376
    const/16 v7, 0x15

    if-ne p1, v7, :cond_4

    .line 377
    const/16 p1, 0x16

    .line 383
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 384
    .local v3, "newIcon":Landroid/view/View;
    sparse-switch p1, :sswitch_data_0

    .line 417
    :cond_3
    :goto_2
    :sswitch_0
    if-eqz v3, :cond_0

    .line 418
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 419
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    .line 378
    .end local v3    # "newIcon":Landroid/view/View;
    :cond_4
    const/16 v7, 0x16

    if-ne p1, v7, :cond_2

    .line 379
    const/16 p1, 0x15

    goto :goto_1

    .line 388
    .restart local v3    # "newIcon":Landroid/view/View;
    :sswitch_1
    invoke-static {p0, v9, v8, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 389
    .local v1, "alignButtonTop":Landroid/widget/ImageView;
    invoke-static {p0, v8, v8, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 390
    .local v0, "alignButtonBottom":Landroid/widget/ImageView;
    invoke-static {p0, v8, v8, v9}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 391
    .local v6, "zeroPageSwitch":Landroid/widget/LinearLayout;
    invoke-static {p0, v8, v9, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v5

    .line 392
    .local v5, "pageDeleteButton":Landroid/view/View;
    if-eqz v6, :cond_5

    .line 393
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 394
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 395
    move-object v3, v1

    goto :goto_2

    .line 396
    :cond_6
    if-eqz v5, :cond_7

    .line 397
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7

    .line 398
    move-object v3, v5

    goto :goto_2

    .line 399
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 400
    move-object v3, v0

    goto :goto_2

    .line 402
    :cond_8
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 403
    .local v4, "overviewPanel":Landroid/widget/LinearLayout;
    if-eqz v4, :cond_3

    .line 404
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 411
    .end local v0    # "alignButtonBottom":Landroid/widget/ImageView;
    .end local v1    # "alignButtonTop":Landroid/widget/ImageView;
    .end local v4    # "overviewPanel":Landroid/widget/LinearLayout;
    .end local v5    # "pageDeleteButton":Landroid/view/View;
    .end local v6    # "zeroPageSwitch":Landroid/widget/LinearLayout;
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 412
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_2

    .line 384
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method private static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 24
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 117
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v10

    .line 118
    .local v10, "consume":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v2, v0, :cond_0

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x15

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 121
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher3/home/HomeFocusHelper;->mFirstTime:Z

    .line 123
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v2, v0, :cond_2

    if-nez v10, :cond_3

    .line 251
    :cond_2
    :goto_0
    return v10

    .line 127
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/Launcher;

    .line 128
    .local v16, "launcher":Lcom/android/launcher3/Launcher;
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v21

    .line 137
    .local v21, "profile":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 138
    .local v13, "hotseatParent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    if-eqz v13, :cond_2

    .line 142
    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 144
    .local v12, "hotseatLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const v23, 0x7f11000e

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/launcher3/home/Workspace;

    .line 145
    .local v22, "workspace":Lcom/android/launcher3/home/Workspace;
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v7

    .line 146
    .local v7, "pageIndex":I
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v8

    .line 147
    .local v8, "pageCount":I
    const/4 v3, -0x1

    .line 148
    .local v3, "countX":I
    const/4 v4, -0x1

    .line 149
    .local v4, "countY":I
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 151
    .local v6, "iconIndex":I
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 152
    .local v14, "iconLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v14, :cond_2

    .line 159
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v15

    .line 160
    .local v15, "iconParent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    if-eqz v15, :cond_2

    .line 164
    const/4 v9, 0x0

    .line 165
    .local v9, "parent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/4 v5, 0x0

    check-cast v5, [[I

    .line 167
    .local v5, "matrix":[[I
    const/16 v2, 0x13

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 168
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-nez v2, :cond_7

    .line 169
    const/4 v2, 0x1

    invoke-static {v14, v12, v2}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout;Z)[[I

    move-result-object v5

    .line 171
    invoke-virtual {v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/2addr v6, v2

    .line 172
    array-length v3, v5

    .line 173
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v2

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v23

    add-int v4, v2, v23

    .line 174
    move-object v9, v15

    :goto_1
    move/from16 v2, p1

    .line 207
    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/home/HomeFocusLogic;->handleKeyEvent(III[[IIIILcom/android/launcher3/common/base/view/CellLayoutChildren;)I

    move-result v20

    .line 210
    .local v20, "newIconIndex":I
    const/16 v19, 0x0

    .line 211
    .local v19, "newIcon":Landroid/view/View;
    const/4 v2, -0x8

    move/from16 v0, v20

    if-ne v0, v2, :cond_c

    .line 212
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 213
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 216
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 241
    :cond_4
    :goto_2
    if-ne v9, v15, :cond_5

    invoke-virtual {v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_5

    .line 242
    invoke-virtual {v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    sub-int v20, v20, v2

    .line 244
    :cond_5
    if-nez v19, :cond_6

    if-ltz v20, :cond_6

    .line 245
    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 247
    :cond_6
    if-eqz v19, :cond_2

    .line 248
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    .line 249
    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto/16 :goto_0

    .line 175
    .end local v19    # "newIcon":Landroid/view/View;
    .end local v20    # "newIconIndex":I
    :cond_7
    const/16 v2, 0x15

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 176
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 177
    const/4 v2, 0x0

    invoke-static {v14, v12, v2}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout;Z)[[I

    move-result-object v5

    .line 179
    invoke-virtual {v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/2addr v6, v2

    .line 180
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v23

    add-int v3, v2, v23

    .line 181
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v4

    .line 182
    move-object v9, v15

    goto :goto_1

    .line 183
    :cond_8
    const/16 v2, 0x16

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    .line 184
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 185
    const/16 p1, 0x5d

    goto :goto_1

    .line 186
    :cond_9
    const/16 v2, 0x70

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    .line 187
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto/16 :goto_0

    .line 189
    :cond_a
    const/16 v2, 0x43

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    .line 190
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v11

    .line 191
    .local v11, "homeController":Lcom/android/launcher3/home/HomeController;
    if-eqz v11, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v2

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v2, v0, :cond_2

    .line 192
    invoke-virtual {v11}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v2

    if-nez v2, :cond_2

    .line 193
    const/4 v2, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Launcher;->showAppsView(ZZ)V

    goto/16 :goto_0

    .line 200
    .end local v11    # "homeController":Lcom/android/launcher3/home/HomeController;
    :cond_b
    invoke-static {v12}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;)[[I

    move-result-object v5

    .line 201
    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v3

    .line 202
    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v4

    .line 203
    move-object v9, v13

    goto/16 :goto_1

    .line 217
    .restart local v19    # "newIcon":Landroid/view/View;
    .restart local v20    # "newIconIndex":I
    :cond_c
    const/4 v2, -0x4

    move/from16 v0, v20

    if-ne v0, v2, :cond_d

    .line 218
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 219
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 220
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    .line 221
    :cond_d
    const/16 v2, -0xb

    move/from16 v0, v20

    if-ne v0, v2, :cond_f

    .line 222
    sget-boolean v2, Lcom/android/launcher3/home/HomeFocusHelper;->mFirstTime:Z

    if-eqz v2, :cond_e

    .line 223
    const/4 v2, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToZeroPageFromKeyEvent(I)V

    .line 225
    :cond_e
    const/16 v2, 0x15

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 226
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher3/home/HomeFocusHelper;->mFirstTime:Z

    goto/16 :goto_2

    .line 228
    :cond_f
    const/4 v2, -0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_10

    .line 229
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 230
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 231
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    .line 232
    :cond_10
    const/4 v2, -0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_4

    const/16 v2, 0x13

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 233
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v17

    .line 234
    .local v17, "multiSelectManager":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    if-eqz v17, :cond_4

    .line 235
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v18

    .line 236
    .local v18, "multiSelectPanel":Lcom/android/launcher3/common/multiselect/MultiSelectPanel;
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 237
    move-object/from16 v19, v18

    goto/16 :goto_2
.end method

.method private static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 33
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 563
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v18

    .line 564
    .local v18, "consume":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_0

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x15

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 567
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher3/home/HomeFocusHelper;->mFirstTime:Z

    .line 569
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_2

    if-nez v18, :cond_3

    .line 724
    :cond_2
    :goto_0
    return v18

    .line 573
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/Launcher;

    .line 574
    .local v25, "launcher":Lcom/android/launcher3/Launcher;
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v30

    .line 582
    .local v30, "profile":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 583
    .local v9, "parent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 584
    .local v24, "iconLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    check-cast v32, Lcom/android/launcher3/home/Workspace;

    .line 585
    .local v32, "workspace":Lcom/android/launcher3/home/Workspace;
    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher3/home/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    .line 586
    .local v19, "dragLayer":Landroid/view/ViewGroup;
    const v2, 0x7f11000d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/home/Hotseat;

    .line 588
    .local v21, "hotseat":Lcom/android/launcher3/home/Hotseat;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 589
    .local v6, "iconIndex":I
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 590
    .local v7, "pageIndex":I
    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v8

    .line 591
    .local v8, "pageCount":I
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v3

    .line 592
    .local v3, "countX":I
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v4

    .line 594
    .local v4, "countY":I
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 595
    .local v22, "hotseatLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v23

    .line 601
    .local v23, "hotseatParent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/16 v2, 0x14

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-nez v2, :cond_5

    .line 602
    const/4 v2, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout;Z)[[I

    move-result-object v5

    .line 603
    .local v5, "matrix":[[I
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v2

    add-int/2addr v4, v2

    :goto_1
    move/from16 v2, p1

    .line 624
    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/home/HomeFocusLogic;->handleKeyEvent(III[[IIIILcom/android/launcher3/common/base/view/CellLayoutChildren;)I

    move-result v29

    .line 626
    .local v29, "newIconIndex":I
    const/16 v28, 0x0

    .line 627
    .local v28, "newIcon":Landroid/view/View;
    packed-switch v29, :pswitch_data_0

    .line 712
    if-ltz v29, :cond_c

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_c

    .line 713
    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 720
    :cond_4
    :goto_2
    if-eqz v28, :cond_2

    .line 721
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->requestFocus()Z

    .line 722
    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto/16 :goto_0

    .line 604
    .end local v5    # "matrix":[[I
    .end local v28    # "newIcon":Landroid/view/View;
    .end local v29    # "newIconIndex":I
    :cond_5
    const/16 v2, 0x16

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 605
    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 606
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout;Z)[[I

    move-result-object v5

    .line 607
    .restart local v5    # "matrix":[[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 608
    .end local v5    # "matrix":[[I
    :cond_6
    const/16 v2, 0x70

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 609
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    invoke-virtual {v10, v2, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto/16 :goto_0

    .line 611
    :cond_7
    const/16 v2, 0x43

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 612
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v20

    .line 613
    .local v20, "homeController":Lcom/android/launcher3/home/HomeController;
    if-eqz v20, :cond_2

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_2

    .line 614
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v2

    if-nez v2, :cond_2

    .line 615
    const/4 v2, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v10}, Lcom/android/launcher3/Launcher;->showAppsView(ZZ)V

    goto/16 :goto_0

    .line 620
    .end local v20    # "homeController":Lcom/android/launcher3/home/HomeController;
    :cond_8
    invoke-static/range {v24 .. v24}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;)[[I

    move-result-object v5

    .restart local v5    # "matrix":[[I
    goto/16 :goto_1

    .line 629
    .restart local v28    # "newIcon":Landroid/view/View;
    .restart local v29    # "newIconIndex":I
    :pswitch_0
    const/16 v2, 0x13

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 630
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v26

    .line 631
    .local v26, "multiSelectManager":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    if-eqz v26, :cond_4

    .line 632
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v27

    .line 633
    .local v27, "multiSelectPanel":Lcom/android/launcher3/common/multiselect/MultiSelectPanel;
    if-eqz v27, :cond_4

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 634
    move-object/from16 v28, v27

    goto/16 :goto_2

    .line 641
    .end local v26    # "multiSelectManager":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .end local v27    # "multiSelectPanel":Lcom/android/launcher3/common/multiselect/MultiSelectPanel;
    :pswitch_1
    add-int/lit8 v15, v7, -0x1

    .line 642
    .local v15, "newPageIndex":I
    const/16 v2, -0xa

    move/from16 v0, v29

    if-ne v0, v2, :cond_9

    .line 643
    add-int/lit8 v15, v7, 0x1

    .line 645
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move/from16 v31, v0

    .line 646
    .local v31, "row":I
    move-object/from16 v0, v32

    invoke-static {v0, v15}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 647
    if-eqz v9, :cond_4

    .line 648
    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 649
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    .end local v24    # "iconLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    check-cast v24, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 651
    .restart local v24    # "iconLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    .line 650
    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;II)[[I

    move-result-object v5

    .line 652
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    add-int/lit8 v11, v2, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v12

    const/16 v14, 0x64

    move/from16 v10, p1

    move-object v13, v5

    move/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/launcher3/home/HomeFocusLogic;->handleKeyEvent(III[[IIIILcom/android/launcher3/common/base/view/CellLayoutChildren;)I

    move-result v29

    .line 654
    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 655
    if-nez v28, :cond_4

    .line 656
    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher3/home/Workspace;->clearFocus()V

    goto/16 :goto_2

    .line 661
    .end local v15    # "newPageIndex":I
    .end local v31    # "row":I
    :pswitch_2
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v32

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 662
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 663
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    .line 666
    :pswitch_3
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v32

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 667
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 668
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    .line 671
    :pswitch_4
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v32

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 672
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 673
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    .line 677
    :pswitch_5
    add-int/lit8 v15, v7, 0x1

    .line 678
    .restart local v15    # "newPageIndex":I
    const/4 v2, -0x5

    move/from16 v0, v29

    if-ne v0, v2, :cond_a

    .line 679
    add-int/lit8 v15, v7, -0x1

    .line 681
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move/from16 v31, v0

    .line 682
    .restart local v31    # "row":I
    move-object/from16 v0, v32

    invoke-static {v0, v15}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 683
    if-eqz v9, :cond_4

    .line 684
    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 685
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    .end local v24    # "iconLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    check-cast v24, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 686
    .restart local v24    # "iconLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v2, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;II)[[I

    move-result-object v5

    .line 687
    add-int/lit8 v11, v3, 0x1

    const/16 v14, 0x64

    move/from16 v10, p1

    move v12, v4

    move-object v13, v5

    move/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/launcher3/home/HomeFocusLogic;->handleKeyEvent(III[[IIIILcom/android/launcher3/common/base/view/CellLayoutChildren;)I

    move-result v29

    .line 689
    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 690
    if-nez v28, :cond_4

    .line 691
    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher3/home/Workspace;->clearFocus()V

    goto/16 :goto_2

    .line 696
    .end local v15    # "newPageIndex":I
    .end local v31    # "row":I
    :pswitch_6
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 697
    goto/16 :goto_2

    .line 699
    :pswitch_7
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 700
    goto/16 :goto_2

    .line 702
    :pswitch_8
    sget-boolean v2, Lcom/android/launcher3/home/HomeFocusHelper;->mFirstTime:Z

    if-eqz v2, :cond_b

    .line 703
    const/4 v2, -0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToZeroPageFromKeyEvent(I)V

    .line 705
    :cond_b
    const/16 v2, 0x15

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 706
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher3/home/HomeFocusHelper;->mFirstTime:Z

    goto/16 :goto_2

    .line 714
    :cond_c
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    move/from16 v0, v29

    if-gt v2, v0, :cond_4

    .line 715
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v10

    add-int/2addr v2, v10

    move/from16 v0, v29

    if-ge v0, v2, :cond_4

    .line 716
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    sub-int v2, v29, v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_2

    .line 627
    nop

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_8
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static handleOverviewPanelOptionButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 429
    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v3

    .line 430
    .local v3, "consume":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-eq v10, v12, :cond_0

    if-nez v3, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v3

    .line 434
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 435
    .local v7, "overviewPanel":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_0

    .line 439
    sget-boolean v10, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v10, :cond_2

    .line 440
    const/16 v10, 0x15

    if-ne p1, v10, :cond_4

    .line 441
    const/16 p1, 0x16

    .line 447
    :cond_2
    :goto_1
    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 448
    .local v5, "index":I
    const/4 v6, 0x0

    .line 449
    .local v6, "newIcon":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 491
    :cond_3
    :goto_2
    :pswitch_0
    if-eqz v6, :cond_0

    .line 492
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 493
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    .line 442
    .end local v5    # "index":I
    .end local v6    # "newIcon":Landroid/view/View;
    :cond_4
    const/16 v10, 0x16

    if-ne p1, v10, :cond_2

    .line 443
    const/16 p1, 0x15

    goto :goto_1

    .line 451
    .restart local v5    # "index":I
    .restart local v6    # "newIcon":Landroid/view/View;
    :pswitch_1
    invoke-static {p0, v12, v11, v11}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 452
    .local v1, "alignButtonTop":Landroid/widget/ImageView;
    invoke-static {p0, v11, v11, v11}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 453
    .local v0, "alignButtonBottom":Landroid/widget/ImageView;
    invoke-static {p0, v11, v11, v12}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 454
    .local v9, "zeroPageSwitch":Landroid/widget/LinearLayout;
    invoke-static {p0, v11, v12, v11}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v8

    .line 455
    .local v8, "pageDeleteButton":Landroid/view/View;
    if-eqz v9, :cond_5

    .line 456
    move-object v6, v9

    goto :goto_2

    .line 457
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 458
    move-object v6, v0

    goto :goto_2

    .line 459
    :cond_6
    if-eqz v8, :cond_7

    .line 460
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_7

    .line 461
    move-object v6, v8

    goto :goto_2

    .line 462
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 463
    move-object v6, v1

    goto :goto_2

    .line 465
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    const v11, 0x7f110094

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 466
    .local v4, "homeButton":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 467
    move-object v6, v4

    goto :goto_2

    .line 472
    .end local v0    # "alignButtonBottom":Landroid/widget/ImageView;
    .end local v1    # "alignButtonTop":Landroid/widget/ImageView;
    .end local v4    # "homeButton":Landroid/view/View;
    .end local v8    # "pageDeleteButton":Landroid/view/View;
    .end local v9    # "zeroPageSwitch":Landroid/widget/LinearLayout;
    :pswitch_2
    if-eqz v5, :cond_3

    .line 473
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 474
    .local v2, "childView":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 475
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 476
    invoke-virtual {v2, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 481
    .end local v2    # "childView":Landroid/view/View;
    :pswitch_3
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 482
    .restart local v2    # "childView":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 483
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 484
    invoke-virtual {v2, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 449
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static handlePageDeleteButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 503
    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v2

    .line 504
    .local v2, "consume":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-eq v6, v9, :cond_0

    if-nez v2, :cond_1

    const/16 v6, 0x42

    if-eq p1, v6, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v2

    .line 509
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f110094

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 511
    .local v3, "homeButton":Landroid/view/View;
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_2

    .line 512
    const/16 v6, 0x15

    if-ne p1, v6, :cond_4

    .line 513
    const/16 p1, 0x16

    .line 519
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 520
    .local v4, "newIcon":Landroid/view/View;
    sparse-switch p1, :sswitch_data_0

    .line 552
    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    .line 553
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 554
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    .line 514
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_4
    const/16 v6, 0x16

    if-ne p1, v6, :cond_2

    .line 515
    const/16 p1, 0x15

    goto :goto_1

    .line 522
    .restart local v4    # "newIcon":Landroid/view/View;
    :sswitch_0
    invoke-static {p0, v9, v8, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 523
    .local v0, "alignButtonTop":Landroid/widget/ImageView;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 524
    move-object v4, v0

    goto :goto_2

    .line 525
    :cond_5
    if-eqz v3, :cond_3

    .line 526
    move-object v4, v3

    goto :goto_2

    .line 530
    .end local v0    # "alignButtonTop":Landroid/widget/ImageView;
    :sswitch_1
    if-eqz v3, :cond_3

    .line 531
    move-object v4, v3

    goto :goto_2

    .line 537
    :sswitch_2
    invoke-static {p0, v8, v8, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 538
    .local v1, "alingButtonBottom":Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 539
    .local v5, "overviewPanel":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 540
    move-object v4, v1

    goto :goto_2

    .line 541
    :cond_6
    if-eqz v5, :cond_3

    .line 542
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    .line 546
    .end local v1    # "alingButtonBottom":Landroid/widget/ImageView;
    .end local v5    # "overviewPanel":Landroid/widget/LinearLayout;
    :sswitch_3
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 547
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_2

    .line 520
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_2
        0x3d -> :sswitch_2
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method private static handleScreenGridPanelOptionButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v10, 0x16

    const/16 v9, 0x15

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 818
    if-eq p1, v9, :cond_0

    if-eq p1, v10, :cond_0

    const/16 v8, 0x13

    if-ne p1, v8, :cond_2

    :cond_0
    move v1, v6

    .line 822
    .local v1, "consume":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-eq v8, v6, :cond_1

    if-nez v1, :cond_3

    .line 876
    :cond_1
    :goto_1
    return v1

    .end local v1    # "consume":Z
    :cond_2
    move v1, v7

    .line 818
    goto :goto_0

    .line 826
    .restart local v1    # "consume":Z
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v3

    .line 827
    .local v3, "homeController":Lcom/android/launcher3/home/HomeController;
    const/4 v2, 0x0

    .line 828
    .local v2, "gridBtnLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .line 830
    .local v5, "screenGridTopContainer":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 831
    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/home/ScreenGridPanel;->getGriBtnLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 832
    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/home/ScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v5

    .end local v5    # "screenGridTopContainer":Landroid/widget/LinearLayout;
    check-cast v5, Landroid/widget/LinearLayout;

    .line 835
    .restart local v5    # "screenGridTopContainer":Landroid/widget/LinearLayout;
    :cond_4
    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    .line 839
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_5

    .line 840
    if-ne p1, v9, :cond_6

    .line 841
    const/16 p1, 0x16

    .line 847
    :cond_5
    :goto_2
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 849
    .local v4, "index":I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 867
    :pswitch_1
    if-eqz v5, :cond_1

    .line 868
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 869
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_1

    .line 842
    .end local v4    # "index":I
    :cond_6
    if-ne p1, v10, :cond_5

    .line 843
    const/16 p1, 0x15

    goto :goto_2

    .line 851
    .restart local v4    # "index":I
    :pswitch_2
    if-eqz v4, :cond_1

    .line 852
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 853
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 854
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 855
    invoke-virtual {v0, v7}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 860
    .end local v0    # "childView":Landroid/view/View;
    :pswitch_3
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 861
    .restart local v0    # "childView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 862
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 863
    invoke-virtual {v0, v7}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 849
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static handleScreenGridPanelTopButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 762
    const/16 v10, 0x14

    if-eq p1, v10, :cond_0

    const/16 v10, 0x3d

    if-eq p1, v10, :cond_0

    const/16 v10, 0x15

    if-eq p1, v10, :cond_0

    const/16 v10, 0x16

    if-ne p1, v10, :cond_2

    :cond_0
    move v2, v8

    .line 766
    .local v2, "consume":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-eq v10, v8, :cond_1

    if-nez v2, :cond_3

    .line 811
    :cond_1
    :goto_1
    return v2

    .end local v2    # "consume":Z
    :cond_2
    move v2, v9

    .line 762
    goto :goto_0

    .line 770
    .restart local v2    # "consume":Z
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v4

    .line 771
    .local v4, "homeController":Lcom/android/launcher3/home/HomeController;
    const/4 v3, 0x0

    .line 772
    .local v3, "gridBtnLayout":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    .line 774
    .local v6, "screenGridTopContainer":Landroid/widget/LinearLayout;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 775
    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->getGriBtnLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 776
    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v6

    .end local v6    # "screenGridTopContainer":Landroid/widget/LinearLayout;
    check-cast v6, Landroid/widget/LinearLayout;

    .line 779
    .restart local v6    # "screenGridTopContainer":Landroid/widget/LinearLayout;
    :cond_4
    const v8, 0x7f110096

    .line 780
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 781
    .local v7, "screenGridTopLayout":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_1

    if-eqz v7, :cond_1

    .line 785
    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 786
    .local v5, "index":I
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 788
    .local v0, "childCount":I
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 805
    :sswitch_0
    if-eqz v3, :cond_1

    .line 806
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 807
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_1

    .line 790
    :sswitch_1
    add-int/lit8 v8, v5, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 791
    .local v1, "childView":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 792
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 793
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_1

    .line 797
    .end local v1    # "childView":Landroid/view/View;
    :sswitch_2
    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v9, v0, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 798
    .restart local v1    # "childView":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 799
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 800
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto/16 :goto_1

    .line 788
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static handleZeroPageSwitchKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 330
    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v0

    .line 331
    .local v0, "consume":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    if-nez v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    const/4 v2, 0x0

    .line 336
    .local v2, "newIcon":Landroid/view/View;
    sparse-switch p1, :sswitch_data_0

    .line 359
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 360
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 361
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    .line 339
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f110094

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 340
    .local v1, "homeButton":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 341
    move-object v2, v1

    goto :goto_1

    .line 347
    .end local v1    # "homeButton":Landroid/view/View;
    :sswitch_1
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 348
    .local v3, "overviewPanel":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_2

    .line 349
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 353
    .end local v3    # "overviewPanel":Landroid/widget/LinearLayout;
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 354
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_1

    .line 336
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x42 -> :sswitch_2
    .end sparse-switch
.end method
