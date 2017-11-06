.class public Lcom/samsung/android/app/music/common/util/color/CollectColorNode;
.super Ljava/lang/Object;
.source "CollectColorNode.java"


# instance fields
.field private mKey:I

.field private mValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getKey()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/samsung/android/app/music/common/util/color/CollectColorNode;->mKey:I

    return v0
.end method

.method protected getValue()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/samsung/android/app/music/common/util/color/CollectColorNode;->mValue:I

    return v0
.end method

.method protected setKey(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 9
    iput p1, p0, Lcom/samsung/android/app/music/common/util/color/CollectColorNode;->mKey:I

    .line 10
    return-void
.end method

.method protected setNode(II)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/samsung/android/app/music/common/util/color/CollectColorNode;->mKey:I

    .line 18
    iput p2, p0, Lcom/samsung/android/app/music/common/util/color/CollectColorNode;->mValue:I

    .line 19
    return-void
.end method

.method protected setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/samsung/android/app/music/common/util/color/CollectColorNode;->mValue:I

    .line 14
    return-void
.end method
