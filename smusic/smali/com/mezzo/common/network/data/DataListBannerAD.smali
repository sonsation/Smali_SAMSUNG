.class public Lcom/mezzo/common/network/data/DataListBannerAD;
.super Ljava/lang/Object;
.source "DataListBannerAD.java"

# interfaces
.implements Lcom/mezzo/common/network/data/IDataList;


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mezzo/common/network/data/DataBannerAD;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataListBannerAD;->list:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public add(Lcom/mezzo/common/network/data/IData;)I
    .locals 1
    .param p1, "data"    # Lcom/mezzo/common/network/data/IData;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataListBannerAD;->list:Ljava/util/ArrayList;

    check-cast p1, Lcom/mezzo/common/network/data/DataBannerAD;

    .end local p1    # "data":Lcom/mezzo/common/network/data/IData;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataListBannerAD;->size()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataListBannerAD;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataListBannerAD;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataListBannerAD;->list:Ljava/util/ArrayList;

    .line 21
    :cond_0
    return-void
.end method

.method public get(I)Lcom/mezzo/common/network/data/IData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataListBannerAD;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/IData;

    return-object v0
.end method

.method public remove(I)Lcom/mezzo/common/network/data/IData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataListBannerAD;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/IData;

    return-object v0
.end method

.method public remove(Lcom/mezzo/common/network/data/IData;)Z
    .locals 1
    .param p1, "data"    # Lcom/mezzo/common/network/data/IData;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataListBannerAD;->list:Ljava/util/ArrayList;

    check-cast p1, Lcom/mezzo/common/network/data/DataBannerAD;

    .end local p1    # "data":Lcom/mezzo/common/network/data/IData;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataListBannerAD;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "DataListBannerAD {\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/mezzo/common/network/data/DataListBannerAD;->list:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 53
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataListBannerAD;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 58
    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v3, "}\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 54
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mezzo/common/network/data/DataListBannerAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v1

    check-cast v1, Lcom/mezzo/common/network/data/DataBannerAD;

    .line 55
    .local v1, "dataAD":Lcom/mezzo/common/network/data/DataBannerAD;
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataBannerAD;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
