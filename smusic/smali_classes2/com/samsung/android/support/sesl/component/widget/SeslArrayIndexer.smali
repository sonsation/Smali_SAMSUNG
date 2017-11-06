.class public Lcom/samsung/android/support/sesl/component/widget/SeslArrayIndexer;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;
.source "SeslArrayIndexer.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "indexCharacters"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;-><init>(Ljava/lang/CharSequence;)V

    .line 29
    const-string v0, "SeslArrayIndexer"

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslArrayIndexer;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslArrayIndexer;->DEBUG:Z

    .line 50
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslArrayIndexer;->mData:Ljava/util/List;

    .line 54
    return-void
.end method


# virtual methods
.method protected getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getItemAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslArrayIndexer;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getItemCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslArrayIndexer;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isDataToBeIndexedAvailable()Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslArrayIndexer;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
