.class public Lcom/android/systemui/qs/QSBarController;
.super Ljava/lang/Object;
.source "QSBarController.java"


# instance fields
.field private mBarSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCollapsedBars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCollapsedHeight:I

.field private mContext:Landroid/content/Context;

.field private mDeskMode:Z

.field private mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

.field private mHeaderBars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mPanelBars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQSDataUsage:Lcom/android/systemui/qs/QSDataUsageView;

.field private mQsBrightness:Lcom/android/systemui/qs/QSBrightnessView;

.field private mQsExpanded:Z

.field private mQsMultiSimPreferredSlotView:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsSFinder:Lcom/android/systemui/qs/QSSFinderView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSBarController;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSBarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSBarController;->calculateActiveBarHeight()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSBarController;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSBarController;->setBarVisibilty(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;
    .param p3, "header"    # Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;
    .param p4, "deskMode"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mHeaderBars:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mPanelBars:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedBars:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedHeight:I

    .line 71
    iput-object p1, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/qs/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    new-instance v1, Lcom/android/systemui/qs/QSBarController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSBarController$1;-><init>(Lcom/android/systemui/qs/QSBarController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setBarCallback(Lcom/android/systemui/qs/QSPanel$QsBarCallback;)V

    .line 79
    iput-object p3, p0, Lcom/android/systemui/qs/QSBarController;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    .line 80
    iput-boolean p4, p0, Lcom/android/systemui/qs/QSBarController;->mDeskMode:Z

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBarController;->loadBarSpecs()V

    .line 70
    return-void
.end method

.method private addBars()V
    .locals 5

    .prologue
    .line 161
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mHeaderBars:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 162
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 163
    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 162
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v2, "param":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 165
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 168
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    .end local v2    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mPanelBars:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 169
    .restart local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 172
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedBars:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 173
    .restart local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 160
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_2
    return-void
.end method

.method private calculateActiveBarHeight()V
    .locals 5

    .prologue
    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, "sum":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 204
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarType()I

    move-result v3

    sget v4, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    if-ne v3, v4, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 208
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_1
    iput v2, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedHeight:I

    .line 201
    return-void
.end method

.method private loadBarSpecs()V
    .locals 7

    .prologue
    .line 90
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isSFinderEnabled()Z

    move-result v2

    .line 89
    if-eqz v2, :cond_0

    .line 91
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_S_FINDER_QS_BAR:Z

    .line 89
    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isSupportSFinder(Landroid/content/Context;)Z

    move-result v2

    .line 89
    if-eqz v2, :cond_0

    .line 93
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_0

    .line 94
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSBarController;->mDeskMode:Z

    if-eqz v2, :cond_6

    .line 101
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isBrightnessControllerEnabled()Z

    move-result v2

    .line 100
    if-eqz v2, :cond_1

    .line 102
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSBarController;->mDeskMode:Z

    if-eqz v2, :cond_7

    .line 110
    :cond_1
    :goto_1
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_QUICKPANEL_DATAUSAGE:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSBarController;->mDeskMode:Z

    if-eqz v2, :cond_8

    .line 117
    :cond_2
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSBarController;->mDeskMode:Z

    if-eqz v2, :cond_9

    .line 123
    :goto_3
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSBarController;->mDeskMode:Z

    if-nez v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/qs/QSHandlerView;

    iget-object v4, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/qs/QSHandlerView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isQuickConnectEnabled()Z

    move-result v2

    .line 127
    if-eqz v2, :cond_4

    .line 129
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 140
    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 141
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarType()I

    move-result v2

    sget v3, Lcom/android/systemui/qs/QSBarItem;->ON_HEADER:I

    if-ne v2, v3, :cond_b

    .line 142
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mHeaderBars:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_5
    :goto_6
    new-instance v2, Lcom/android/systemui/qs/QSBarController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSBarController$2;-><init>(Lcom/android/systemui/qs/QSBarController;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSBarItem;->setCallback(Lcom/android/systemui/qs/QSBarItem$Callback;)V

    goto :goto_5

    .line 95
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    .end local v1    # "bar$iterator":Ljava/util/Iterator;
    :cond_6
    new-instance v2, Lcom/android/systemui/qs/QSSFinderView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/qs/QSBarItem;->ON_HEADER:I

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/qs/QSSFinderView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mQsSFinder:Lcom/android/systemui/qs/QSSFinderView;

    .line 96
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mQsSFinder:Lcom/android/systemui/qs/QSSFinderView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_7
    new-instance v2, Lcom/android/systemui/qs/QSBrightnessView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/qs/QSBarItem;->ON_PANEL:I

    .line 104
    iget-object v5, p0, Lcom/android/systemui/qs/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 103
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/qs/QSBrightnessView;-><init>(Landroid/content/Context;ILcom/android/systemui/qs/QSPanel;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mQsBrightness:Lcom/android/systemui/qs/QSBrightnessView;

    .line 105
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mQsBrightness:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 111
    :cond_8
    new-instance v2, Lcom/android/systemui/qs/QSDataUsageView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/qs/QSDataUsageView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mQSDataUsage:Lcom/android/systemui/qs/QSDataUsageView;

    .line 112
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mQSDataUsage:Lcom/android/systemui/qs/QSDataUsageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 118
    :cond_9
    new-instance v2, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mQsMultiSimPreferredSlotView:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    .line 119
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mQsMultiSimPreferredSlotView:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 130
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/qs/QSQuickConnectView;

    iget-object v4, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    iget-boolean v6, p0, Lcom/android/systemui/qs/QSBarController;->mDeskMode:Z

    invoke-direct {v3, v4, v5, v6}, Lcom/android/systemui/qs/QSQuickConnectView;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 143
    .restart local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    .restart local v1    # "bar$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarType()I

    move-result v2

    sget v3, Lcom/android/systemui/qs/QSBarItem;->ON_PANEL:I

    if-ne v2, v3, :cond_c

    .line 144
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mPanelBars:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 145
    :cond_c
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarType()I

    move-result v2

    sget v3, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    if-ne v2, v3, :cond_5

    .line 146
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedBars:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget v2, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedHeight:I

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedHeight:I

    goto/16 :goto_6

    .line 157
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBarController;->addBars()V

    .line 84
    return-void
.end method

.method private setBarVisibilty(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 197
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSBarItem;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    .line 194
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_1
    return-void
.end method


# virtual methods
.method public collapseIfNeeded()V
    .locals 3

    .prologue
    .line 220
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 221
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->collapseIfNeeded()V

    goto :goto_0

    .line 219
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_0
    return-void
.end method

.method public getBottomBarView()Landroid/view/View;
    .locals 2

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSBarController;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedBars:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedBars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedBars:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedBars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedHeight:I

    return v0
.end method

.method public getTopBarView()Landroid/view/View;
    .locals 2

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSBarController;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQsBrightness:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBrightnessView;->getBarView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQsBrightness:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBrightnessView;->getBarType()I

    move-result v0

    sget v1, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    if-ne v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQsBrightness:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBrightnessView;->getBarView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedBars:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedBars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasBarOnHeader()Z
    .locals 3

    .prologue
    .line 250
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mHeaderBars:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 251
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    .line 253
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public onEmergencyModeChanged()V
    .locals 3

    .prologue
    .line 227
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onEmergencyModeChanged()V

    .line 229
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 230
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->onEmergencyModeChanged()V

    goto :goto_0

    .line 226
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_0
    return-void
.end method

.method public onExpandingFinished(F)V
    .locals 3
    .param p1, "mExpandedHeight"    # F

    .prologue
    .line 257
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 258
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarItem;->onExpandingFinished(F)V

    goto :goto_0

    .line 256
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_0
    return-void
.end method

.method public onPanelVisible()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQSDataUsage:Lcom/android/systemui/qs/QSDataUsageView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQSDataUsage:Lcom/android/systemui/qs/QSDataUsageView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDataUsageView;->onPanelVisible()V

    .line 242
    :cond_0
    return-void
.end method

.method public setBarState(I)V
    .locals 3
    .param p1, "statusBarState"    # I

    .prologue
    .line 275
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 276
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarItem;->setBarState(I)V

    goto :goto_0

    .line 274
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_0
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQsBrightness:Lcom/android/systemui/qs/QSBrightnessView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQsBrightness:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBrightnessView;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 215
    :cond_0
    return-void
.end method

.method public setDataUsageController(Lcom/android/settingslib/net/DataUsageController;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/settingslib/net/DataUsageController;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQSDataUsage:Lcom/android/systemui/qs/QSDataUsageView;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQSDataUsage:Lcom/android/systemui/qs/QSDataUsageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDataUsageView;->setDataUsageController(Lcom/android/settingslib/net/DataUsageController;)V

    .line 236
    :cond_0
    return-void
.end method

.method public setFullyCollapsed(Z)V
    .locals 3
    .param p1, "fullyCollapsed"    # Z

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 270
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarItem;->setFullyCollapsed(Z)V

    goto :goto_0

    .line 268
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_0
    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 3
    .param p1, "fullyExpanded"    # Z

    .prologue
    .line 263
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 264
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarItem;->setFullyExpanded(Z)V

    goto :goto_0

    .line 262
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_0
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 3
    .param p1, "qsh"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/systemui/qs/QSBarController;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 189
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 190
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarItem;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    goto :goto_0

    .line 187
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_0
    return-void
.end method

.method public setPosition(F)V
    .locals 3
    .param p1, "expansion"    # F

    .prologue
    .line 178
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSBarController;->mQsExpanded:Z

    .line 180
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 181
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarItem;->setPosition(F)V

    goto :goto_1

    .line 178
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    .end local v1    # "bar$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 177
    .restart local v1    # "bar$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
