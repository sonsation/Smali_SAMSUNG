.class public Lcom/mezzo/common/network/data/DataSection;
.super Ljava/lang/Object;
.source "DataSection.java"

# interfaces
.implements Lcom/mezzo/common/network/data/IData;


# instance fields
.field private ad_count:Ljava/lang/String;

.field private listAD:Lcom/mezzo/common/network/data/DataListAD;

.field private media_no:Ljava/lang/String;

.field private publisher_no:Ljava/lang/String;

.field private section_no:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mezzo/common/network/data/DataListAD;)V
    .locals 0
    .param p1, "publisher_no"    # Ljava/lang/String;
    .param p2, "media_no"    # Ljava/lang/String;
    .param p3, "section_no"    # Ljava/lang/String;
    .param p4, "ad_count"    # Ljava/lang/String;
    .param p5, "listAD"    # Lcom/mezzo/common/network/data/DataListAD;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/mezzo/common/network/data/DataSection;->setPublisher_no(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/mezzo/common/network/data/DataSection;->setMedia_no(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p3}, Lcom/mezzo/common/network/data/DataSection;->setSection_no(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p4}, Lcom/mezzo/common/network/data/DataSection;->setAd_count(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 28
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataSection;->setPublisher_no(Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataSection;->setMedia_no(Ljava/lang/String;)V

    .line 30
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataSection;->setSection_no(Ljava/lang/String;)V

    .line 31
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataSection;->setAd_count(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataSection;->getListAD()Lcom/mezzo/common/network/data/DataListAD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataSection;->getListAD()Lcom/mezzo/common/network/data/DataListAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataListAD;->clear()V

    .line 35
    :cond_0
    return-void
.end method

.method public getAd_count()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataSection;->ad_count:Ljava/lang/String;

    return-object v0
.end method

.method public getListAD()Lcom/mezzo/common/network/data/DataListAD;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataSection;->listAD:Lcom/mezzo/common/network/data/DataListAD;

    return-object v0
.end method

.method public getMedia_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataSection;->media_no:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataSection;->publisher_no:Ljava/lang/String;

    return-object v0
.end method

.method public getSection_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataSection;->section_no:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_count(Ljava/lang/String;)V
    .locals 0
    .param p1, "ad_count"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataSection;->ad_count:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setListAD(Lcom/mezzo/common/network/data/DataListAD;)V
    .locals 0
    .param p1, "listAD"    # Lcom/mezzo/common/network/data/DataListAD;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataSection;->listAD:Lcom/mezzo/common/network/data/DataListAD;

    .line 82
    return-void
.end method

.method public setMedia_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "media_no"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataSection;->media_no:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setPublisher_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisher_no"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataSection;->publisher_no:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setSection_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "section_no"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataSection;->section_no:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataSection {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "publisher_no : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataSection;->publisher_no:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "media_no : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataSection;->media_no:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "section_no : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataSection;->section_no:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad_count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataSection;->ad_count:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataSection;->getListAD()Lcom/mezzo/common/network/data/DataListAD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "listAD : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataSection;->getListAD()Lcom/mezzo/common/network/data/DataListAD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataListAD;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_0
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
