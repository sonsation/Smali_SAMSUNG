.class public Lcom/mezzo/common/network/data/DataListSection;
.super Ljava/lang/Object;
.source "DataListSection.java"

# interfaces
.implements Lcom/mezzo/common/network/data/IDataList;


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mezzo/common/network/data/DataSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataListSection;->list:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public add(Lcom/mezzo/common/network/data/IData;)I
    .locals 1
    .param p1, "data"    # Lcom/mezzo/common/network/data/IData;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataListSection;->list:Ljava/util/ArrayList;

    check-cast p1, Lcom/mezzo/common/network/data/DataSection;

    .end local p1    # "data":Lcom/mezzo/common/network/data/IData;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataListSection;->size()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataListSection;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataListSection;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataListSection;->list:Ljava/util/ArrayList;

    .line 23
    :cond_0
    return-void
.end method

.method public get(I)Lcom/mezzo/common/network/data/IData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataListSection;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/IData;

    return-object v0
.end method

.method public remove(I)Lcom/mezzo/common/network/data/IData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataListSection;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/IData;

    return-object v0
.end method

.method public remove(Lcom/mezzo/common/network/data/IData;)Z
    .locals 1
    .param p1, "data"    # Lcom/mezzo/common/network/data/IData;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataListSection;->list:Ljava/util/ArrayList;

    check-cast p1, Lcom/mezzo/common/network/data/DataSection;

    .end local p1    # "data":Lcom/mezzo/common/network/data/IData;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataListSection;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "DataListSection {\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/mezzo/common/network/data/DataListSection;->list:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 55
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataListSection;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 60
    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v3, "}\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 56
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mezzo/common/network/data/DataListSection;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v1

    check-cast v1, Lcom/mezzo/common/network/data/DataSection;

    .line 57
    .local v1, "dataAD":Lcom/mezzo/common/network/data/DataSection;
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataSection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
