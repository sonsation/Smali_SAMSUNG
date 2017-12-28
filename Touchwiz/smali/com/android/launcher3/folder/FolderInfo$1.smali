.class final Lcom/android/launcher3/folder/FolderInfo$1;
.super Ljava/lang/Object;
.source "FolderInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/FolderInfo;
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
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "rhs"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 69
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget v1, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    if-eq v0, v1, :cond_2

    .line 70
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    if-gez v0, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 72
    :cond_0
    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    if-gez v0, :cond_1

    .line 73
    const/4 v0, -0x1

    goto :goto_0

    .line 75
    :cond_1
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget v1, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 77
    :cond_2
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v1, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_3

    .line 78
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v1, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 80
    :cond_3
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v1, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 66
    check-cast p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast p2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/FolderInfo$1;->compare(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v0

    return v0
.end method
