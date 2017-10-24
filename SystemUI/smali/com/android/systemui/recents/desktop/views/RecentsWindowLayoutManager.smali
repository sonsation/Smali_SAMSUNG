.class public Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "RecentsWindowLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;,
        Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$RecentsItemDecoration;,
        Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$RecentsSmoothScroller;
    }
.end annotation


# static fields
.field public static GRID_ORIENTATION:I

.field public static GRID_SPANS:I

.field public static REVERSE_MODE:Z

.field private static sAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;


# instance fields
.field mContext:Landroid/content/Context;

.field mItemDecoration:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$RecentsItemDecoration;

.field mSmoothScroller:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$RecentsSmoothScroller;

.field mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x4

    sput v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->GRID_SPANS:I

    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->GRID_ORIENTATION:I

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->REVERSE_MODE:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;Landroid/content/Context;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/recents/desktop/views/RecentsWindowView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->GRID_SPANS:I

    sget v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->GRID_ORIENTATION:I

    sget-boolean v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->REVERSE_MODE:Z

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    .line 50
    iput-object p2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->init()V

    .line 47
    return-void
.end method

.method public static getAttr()Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->sAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->initAttr(Landroid/content/Context;)Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    .line 56
    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$RecentsSmoothScroller;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$RecentsSmoothScroller;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->mSmoothScroller:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$RecentsSmoothScroller;

    .line 58
    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$RecentsItemDecoration;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$RecentsItemDecoration;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->mItemDecoration:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$RecentsItemDecoration;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->mItemDecoration:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$RecentsItemDecoration;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 54
    return-void
.end method

.method public static initAttr(Landroid/content/Context;)Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->sAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    .line 31
    sget-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->sAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    return-object v0
.end method


# virtual methods
.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->mSmoothScroller:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$RecentsSmoothScroller;

    invoke-virtual {v0, p3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$RecentsSmoothScroller;->setTargetPosition(I)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->mSmoothScroller:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$RecentsSmoothScroller;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 63
    return-void
.end method
