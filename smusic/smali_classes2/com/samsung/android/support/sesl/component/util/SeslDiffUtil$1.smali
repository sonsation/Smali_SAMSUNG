.class final Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$1;
.super Ljava/lang/Object;
.source "SeslDiffUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil;
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
        "Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$Snake;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$Snake;Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$Snake;)I
    .locals 3
    .param p1, "o1"    # Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$Snake;
    .param p2, "o2"    # Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$Snake;

    .prologue
    .line 75
    iget v1, p1, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$Snake;->x:I

    iget v2, p2, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$Snake;->x:I

    sub-int v0, v1, v2

    .line 76
    .local v0, "cmpX":I
    if-nez v0, :cond_0

    iget v1, p1, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$Snake;->y:I

    iget v2, p2, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$Snake;->y:I

    sub-int v0, v1, v2

    .end local v0    # "cmpX":I
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 72
    check-cast p1, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$Snake;

    check-cast p2, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$Snake;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$1;->compare(Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$Snake;Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$Snake;)I

    move-result v0

    return v0
.end method
