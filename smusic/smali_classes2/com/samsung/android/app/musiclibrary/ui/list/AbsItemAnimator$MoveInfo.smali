.class Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "AbsItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 53
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->fromX:I

    .line 54
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->fromY:I

    .line 55
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->toX:I

    .line 56
    iput p5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->toY:I

    .line 57
    return-void
.end method
