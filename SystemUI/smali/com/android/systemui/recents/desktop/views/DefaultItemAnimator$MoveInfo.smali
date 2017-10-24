.class Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 69
    iput p2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->fromX:I

    .line 70
    iput p3, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->fromY:I

    .line 71
    iput p4, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->toX:I

    .line 72
    iput p5, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->toY:I

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method
