.class Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$NumberDescendCompare;
.super Ljava/lang/Object;
.source "StoreMainModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberDescendCompare"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)I
    .locals 3
    .param p1, "arg0"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .param p2, "arg1"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    const/4 v0, 0x0

    .line 823
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 828
    :cond_0
    :goto_0
    return v0

    .line 827
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getOrder()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getOrder()I

    move-result v2

    if-le v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 828
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getOrder()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getOrder()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 819
    check-cast p1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    check-cast p2, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$NumberDescendCompare;->compare(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)I

    move-result v0

    return v0
.end method
