.class Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;
.super Ljava/lang/Object;
.source "AbsItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public newHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

.field public oldHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "oldHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 67
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 68
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "oldHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 73
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->fromX:I

    .line 74
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->fromY:I

    .line 75
    iput p5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->toX:I

    .line 76
    iput p6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->toY:I

    .line 77
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeInfo{oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->fromX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->fromY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->toX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->toY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
