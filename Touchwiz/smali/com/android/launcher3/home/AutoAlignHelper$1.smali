.class final Lcom/android/launcher3/home/AutoAlignHelper$1;
.super Ljava/lang/Object;
.source "AutoAlignHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/AutoAlignHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher3/common/base/item/ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "rhs"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 141
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v1, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-ne v0, v1, :cond_0

    .line 142
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v1, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    sub-int/2addr v0, v1

    .line 144
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v1, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 138
    check-cast p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast p2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/home/AutoAlignHelper$1;->compare(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v0

    return v0
.end method
