.class Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "SeslDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;
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
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 87
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->fromX:I

    .line 88
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->fromY:I

    .line 89
    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->toX:I

    .line 90
    iput p5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->toY:I

    .line 91
    return-void
.end method
