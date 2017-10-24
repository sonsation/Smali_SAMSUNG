.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/widget/LinearLayout;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/qs/QSTile$Host$Callback;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$Callback;,
        Lcom/android/systemui/qs/QSPanel$H;,
        Lcom/android/systemui/qs/QSPanel$QSTileLayout;,
        Lcom/android/systemui/qs/QSPanel$QsBarCallback;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;
    }
.end annotation


# instance fields
.field private mBrightnessPaddingTop:I

.field private mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field protected final mContext:Landroid/content/Context;

.field private mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mDeskMode:Z

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field protected mExpanded:Z

.field protected mFooter:Lcom/android/systemui/qs/QSFooter;

.field private mGridContentVisible:Z

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field protected mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

.field protected mListening:Z

.field private mPanelPaddingBottom:I

.field private mQsBarCallback:Lcom/android/systemui/qs/QSPanel$QsBarCallback;

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSecCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

.field protected mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

.field private mTriggeredExpand:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/SecQSCustomizer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireDisableStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$H;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    .line 80
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    .line 102
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSPanel;->setOrientation(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->setupTileLayout()V

    .line 115
    new-instance v0, Lcom/android/systemui/qs/QSFooter;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSFooter;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 125
    invoke-virtual {p0, p0}, Lcom/android/systemui/qs/QSPanel;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 100
    return-void
.end method

.method private fireDisableStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onDisableStateChanged(Z)V

    .line 668
    :cond_0
    return-void
.end method

.method private fireScanStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onScanStateChanged(Z)V

    .line 662
    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;IIZ)V
    .locals 1
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "collapsePanel"    # Z

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/qs/QSPanel$Callback;->onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;IIZ)V

    .line 650
    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onToggleStateChanged(Z)V

    .line 656
    :cond_0
    return-void
.end method

.method private getTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 2
    .param p1, "subPanel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    return-object v1

    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v1

    return-object v1
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZIIZ)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "collapsePanel"    # Z

    .prologue
    const/4 v1, 0x0

    .line 616
    if-eqz p2, :cond_1

    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    .line 617
    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    :cond_0
    invoke-direct {p0, v1, p3, p4, p5}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;IIZ)V

    .line 615
    return-void

    :cond_1
    move-object v0, v1

    .line 616
    goto :goto_0
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;ZZ)V
    .locals 6
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "show"    # Z
    .param p3, "collapsePanel"    # Z

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne v0, p1, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 604
    :cond_1
    if-eqz p2, :cond_2

    .line 605
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 606
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-nez v0, :cond_2

    return-void

    .line 608
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/QSTile;->setDetailListening(Z)V

    .line 609
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileBaseView;->getLeft()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileBaseView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 610
    .local v3, "x":I
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileBaseView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v1, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileBaseView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 611
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTop()I

    move-result v1

    .line 610
    add-int v4, v0, v1

    .local v4, "y":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 612
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZIIZ)V

    .line 601
    return-void
.end method

.method private logTiles()V
    .locals 4

    .prologue
    .line 644
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 646
    .local v1, "tileRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->getMetricsCategory()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 643
    .end local v1    # "tileRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    return-void
.end method

.method private setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 4
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    const/4 v3, 0x0

    .line 621
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v2, :cond_0

    return-void

    .line 622
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    .line 623
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    instance-of v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v2, :cond_2

    .line 624
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v1, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    .line 625
    .local v1, "scanState":Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    .line 627
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v2, :cond_1

    .line 628
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    instance-of v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v2, :cond_3

    .line 629
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v0, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->disableState:Z

    .line 630
    .local v0, "disableState":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireDisableStateChanged(Z)V

    .line 620
    .end local v0    # "disableState":Z
    :cond_1
    return-void

    .end local v1    # "scanState":Z
    :cond_2
    move v1, v3

    .line 623
    goto :goto_0

    .restart local v1    # "scanState":Z
    :cond_3
    move v0, v3

    .line 628
    goto :goto_1
.end method


# virtual methods
.method protected addTile(Lcom/android/systemui/qs/QSTile;Z)V
    .locals 6
    .param p2, "collapsedView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    new-instance v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>()V

    .line 408
    .local v4, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iput-object p1, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->createTileView(Lcom/android/systemui/qs/QSTile;Z)Lcom/android/systemui/qs/QSTileBaseView;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    .line 410
    new-instance v0, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 464
    .local v0, "callback":Lcom/android/systemui/qs/QSTile$Callback;
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5, v0}, Lcom/android/systemui/qs/QSTile;->addCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    .line 465
    iput-object v0, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/qs/QSTile$Callback;

    .line 466
    new-instance v1, Lcom/android/systemui/qs/QSPanel$2;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 472
    .local v1, "click":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/android/systemui/qs/QSPanel$3;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/QSPanel$3;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 481
    .local v3, "longClick":Landroid/view/View$OnLongClickListener;
    new-instance v2, Lcom/android/systemui/qs/QSPanel$4;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/qs/QSPanel$4;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 489
    .local v2, "clickSecondary":Landroid/view/View$OnClickListener;
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/systemui/qs/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 493
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/systemui/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 494
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    .line 495
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v5, :cond_0

    .line 498
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v5, v4}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 406
    :cond_0
    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 675
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, "spec":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 677
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 678
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 679
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->click()V

    .line 674
    :cond_0
    return-void

    .line 677
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public closeDetail()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 545
    const/4 v0, 0x1

    .line 547
    .local v0, "SUPPORT_SEC_CUSTOMIZER":Z
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mSecCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mSecCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mSecCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mSecCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mSecCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->hide(II)V

    .line 550
    return-void

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    invoke-virtual {p0, v2, v1, v2}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;Z)V

    .line 544
    return-void
.end method

.method protected createTileView(Lcom/android/systemui/qs/QSTile;Z)Lcom/android/systemui/qs/QSTileBaseView;
    .locals 3
    .param p2, "collapsedView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;Z)",
            "Lcom/android/systemui/qs/QSTileBaseView;"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    new-instance v0, Lcom/android/systemui/qs/QSTileView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSIconView;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 765
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTopBarView()Landroid/view/View;

    move-result-object v2

    .line 766
    .local v2, "topBar":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getBottomBarView()Landroid/view/View;

    move-result-object v0

    .line 767
    .local v0, "bottomBar":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    move v1, v4

    .line 768
    .local v1, "down":Z
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x13

    if-ne v5, v6, :cond_4

    .line 769
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-eqz v3, :cond_3

    .line 770
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->findFocus()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/systemui/qs/QSIconView;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->findFocus()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSIconView;->isTopRow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 771
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    invoke-interface {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;->onFocusAreaChange(Landroid/view/View;I)V

    .line 778
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->findFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->findFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 779
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    invoke-interface {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;->onFocusAreaChange(Landroid/view/View;I)V

    .line 790
    :cond_1
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .end local v1    # "down":Z
    :cond_2
    move v1, v3

    .line 767
    goto :goto_0

    .line 774
    .restart local v1    # "down":Z
    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 775
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    invoke-interface {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;->onFocusAreaChange(Landroid/view/View;I)V

    goto :goto_1

    .line 782
    :cond_4
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_1

    .line 783
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 784
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    invoke-interface {v4, p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;->onFocusAreaChange(Landroid/view/View;I)V

    .line 786
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 787
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    invoke-interface {v4, p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;->onFocusAreaChange(Landroid/view/View;I)V

    goto :goto_2
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 1
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 395
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/QSTileBaseView;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 394
    return-void
.end method

.method public getDeskMode()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mDeskMode:Z

    return v0
.end method

.method public getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    return-object v0
.end method

.method getTileView(Lcom/android/systemui/qs/QSTile;)Lcom/android/systemui/qs/QSTileBaseView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)",
            "Lcom/android/systemui/qs/QSTileBaseView;"
        }
    .end annotation

    .prologue
    .line 690
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 691
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    if-ne v2, p1, :cond_0

    .line 692
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    return-object v2

    .line 695
    .end local v0    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;ZZ)V
    .locals 6
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z
    .param p3, "collapsePanel"    # Z

    .prologue
    const/4 v1, 0x0

    .line 569
    if-eqz p2, :cond_2

    .line 570
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez v0, :cond_1

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mTriggeredExpand:Z

    .line 572
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->animateToggleQSExpansion()V

    .line 580
    :cond_0
    :goto_0
    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_3

    .line 581
    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .end local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;ZZ)V

    .line 568
    :goto_1
    return-void

    .line 574
    .restart local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mTriggeredExpand:Z

    goto :goto_0

    .line 576
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mTriggeredExpand:Z

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->animateToggleQSExpansion()V

    .line 578
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mTriggeredExpand:Z

    goto :goto_0

    .line 583
    :cond_3
    const/4 v3, 0x0

    .line 584
    .local v3, "x":I
    const/4 v4, 0x0

    .line 585
    .local v4, "y":I
    if-eqz p1, :cond_4

    .line 586
    iget v3, p1, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 587
    iget v4, p1, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 589
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZIIZ)V

    goto :goto_1
.end method

.method protected handleUpdateDetail(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSPanel$Callback;->onUpdatingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    .line 594
    :cond_0
    return-void
.end method

.method public isShowingCustomize()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 149
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "qs_show_bar"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 148
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFooter;->onConfigurationChanged()V

    .line 288
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 158
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 159
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 163
    .local v0, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->removeCallbacks()V

    goto :goto_0

    .line 165
    .end local v0    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 157
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 795
    if-eqz p2, :cond_0

    .line 796
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileBaseView;->getIcon()Lcom/android/systemui/qs/QSIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSIconView;->requestFocus()Z

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTopBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method protected onTileClick(Lcom/android/systemui/qs/QSTile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->click()V

    .line 540
    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 169
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 175
    const-string/jumbo v1, "qs_show_bar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mQsBarCallback:Lcom/android/systemui/qs/QSPanel$QsBarCallback;

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mQsBarCallback:Lcom/android/systemui/qs/QSPanel$QsBarCallback;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    :cond_0
    const/4 v0, 0x1

    .line 183
    :cond_1
    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSPanel$QsBarCallback;->setVisibility(Z)V

    .line 174
    :cond_2
    return-void
.end method

.method public openDetails(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "subPanel"    # Ljava/lang/String;
    .param p2, "fromTaskBar"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 199
    if-eqz p2, :cond_1

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 201
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$Record;

    invoke-virtual {p0, v5, v2, v5}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;Z)V

    .line 200
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->getTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v1

    .line 207
    .local v1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v6

    aput v6, v3, v5

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/qs/QSTile$DetailAdapter;[I)V

    .line 198
    .end local v1    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_2
    return-void
.end method

.method public refreshAllTiles()V
    .locals 3

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 348
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    goto :goto_0

    .line 350
    .end local v0    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSFooter;->refreshState()V

    .line 346
    return-void
.end method

.method public setBarCallback(Lcom/android/systemui/qs/QSPanel$QsBarCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSPanel$QsBarCallback;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mQsBarCallback:Lcom/android/systemui/qs/QSPanel$QsBarCallback;

    .line 194
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSPanel$Callback;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    .line 230
    return-void
.end method

.method public setDeskMode(Z)V
    .locals 0
    .param p1, "desk"    # Z

    .prologue
    .line 699
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mDeskMode:Z

    .line 698
    return-void
.end method

.method public setExpanded(Z)V
    .locals 4
    .param p1, "expanded"    # Z

    .prologue
    const/4 v3, 0x0

    .line 313
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 314
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    .line 315
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0, v3, v3}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    const/16 v2, 0x6f

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 319
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez v0, :cond_2

    .line 320
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mTriggeredExpand:Z

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    .line 312
    :goto_0
    return-void

    .line 323
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->logTiles()V

    goto :goto_0
.end method

.method setGridContentVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 635
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 636
    .local v0, "newVis":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 637
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    if-eq v1, p1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const/16 v2, 0x6f

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;II)V

    .line 640
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    .line 634
    return-void

    .line 635
    .end local v0    # "newVis":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 234
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;
    .param p2, "customizer"    # Lcom/android/systemui/qs/customize/SecQSCustomizer;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 255
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 258
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mSecCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecCustomizePanel:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 253
    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 329
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 330
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    .line 334
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 327
    :cond_2
    return-void
.end method

.method public setOnFocusAreaChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    .line 757
    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;Z)V

    .line 379
    return-void
.end method

.method public setTiles(Ljava/util/Collection;Z)V
    .locals 6
    .param p2, "collapsedView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 385
    .local v0, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v4, v0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 386
    iget-object v4, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-object v5, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/qs/QSTile$Callback;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTile;->removeCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    goto :goto_0

    .line 388
    .end local v0    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 389
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "tile$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTile;

    .line 390
    .local v2, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSTile;Z)V

    goto :goto_1

    .line 383
    .end local v2    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_1
    return-void
.end method

.method protected setupTileLayout()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 130
    const v1, 0x7f04010f

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method protected shouldShowDetail()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return v0
.end method

.method protected showDetail(ZLcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p3, "collapsePanel"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 370
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    if-eqz p1, :cond_1

    move v2, v1

    :goto_0
    if-eqz p3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v3, v1, v2, v0, p2}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 369
    return-void

    :cond_1
    move v2, v0

    .line 370
    goto :goto_0
.end method

.method public showDetailAdapter(ZLcom/android/systemui/qs/QSTile$DetailAdapter;[I)V
    .locals 6
    .param p1, "show"    # Z
    .param p2, "adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .param p3, "locationInWindow"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 354
    aget v1, p3, v4

    .line 355
    .local v1, "xInWindow":I
    aget v2, p3, v5

    .line 356
    .local v2, "yInWindow":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 358
    new-instance v0, Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSPanel$Record;-><init>()V

    .line 359
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$Record;
    iput-object p2, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 360
    aget v3, p3, v4

    sub-int v3, v1, v3

    iput v3, v0, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 361
    aget v3, p3, v5

    sub-int v3, v2, v3

    iput v3, v0, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    .line 363
    aput v1, p3, v4

    .line 364
    aput v2, p3, v5

    .line 366
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;Z)V

    .line 353
    return-void
.end method

.method public showEdit(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    .line 510
    .local v0, "condition":Z
    if-eqz v0, :cond_0

    .line 511
    new-instance v1, Lcom/android/systemui/qs/QSPanel$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSPanel$5;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 506
    :cond_0
    return-void
.end method

.method protected updateDetail(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 3
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    const/4 v2, 0x0

    .line 375
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 374
    return-void
.end method

.method public updateResources()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 270
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 271
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0234

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    .line 272
    const v1, 0x7f0d0239

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    .line 273
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    invoke-virtual {p0, v3, v1, v3, v2}, Lcom/android/systemui/qs/QSPanel;->setPadding(IIII)V

    .line 279
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->updateResources()Z

    .line 269
    :cond_1
    return-void
.end method
