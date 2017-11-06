.class Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
.super Ljava/lang/Object;
.source "SeslAdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateOp"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final MOVE:I = 0x8

.field static final POOL_SIZE:I = 0x1e

.field static final REMOVE:I = 0x2

.field static final UPDATE:I = 0x4


# instance fields
.field cmd:I

.field itemCount:I

.field payload:Ljava/lang/Object;

.field positionStart:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    .line 655
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    .line 656
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    .line 657
    iput-object p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 658
    return-void
.end method


# virtual methods
.method cmdToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 671
    :pswitch_0
    const-string v0, "??"

    :goto_0
    return-object v0

    .line 663
    :pswitch_1
    const-string v0, "add"

    goto :goto_0

    .line 665
    :pswitch_2
    const-string/jumbo v0, "rm"

    goto :goto_0

    .line 667
    :pswitch_3
    const-string/jumbo v0, "up"

    goto :goto_0

    .line 669
    :pswitch_4
    const-string v0, "mv"

    goto :goto_0

    .line 661
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 683
    if-ne p0, p1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return v1

    .line 686
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 687
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 690
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .line 692
    .local v0, "op":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 693
    goto :goto_0

    .line 695
    :cond_4
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 697
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_0

    .line 701
    :cond_5
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 702
    goto :goto_0

    .line 704
    :cond_6
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 705
    goto :goto_0

    .line 707
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_8

    .line 708
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 709
    goto :goto_0

    .line 711
    :cond_8
    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    .line 712
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 720
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    .line 721
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    add-int v0, v1, v2

    .line 722
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    add-int v0, v1, v2

    .line 723
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 677
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmdToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    return-object v0
.end method
