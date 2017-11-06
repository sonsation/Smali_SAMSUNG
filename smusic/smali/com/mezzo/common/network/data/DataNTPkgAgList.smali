.class public Lcom/mezzo/common/network/data/DataNTPkgAgList;
.super Ljava/lang/Object;
.source "DataNTPkgAgList.java"

# interfaces
.implements Lcom/mezzo/common/network/data/IData;


# instance fields
.field private error_code:Ljava/lang/String;

.field private listSection:Lcom/mezzo/common/network/data/DataListSection;

.field private package_info:Ljava/lang/String;

.field private section_count:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mezzo/common/network/data/DataListSection;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "error_code"    # Ljava/lang/String;
    .param p3, "package_info"    # Ljava/lang/String;
    .param p4, "section_count"    # Ljava/lang/String;
    .param p5, "listSection"    # Lcom/mezzo/common/network/data/DataListSection;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->setVersion(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->setError_code(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p3}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->setPackage_info(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p4}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->setSection_count(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p5}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->setListSection(Lcom/mezzo/common/network/data/DataListSection;)V

    .line 21
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 29
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->setVersion(Ljava/lang/String;)V

    .line 30
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->setError_code(Ljava/lang/String;)V

    .line 31
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->setPackage_info(Ljava/lang/String;)V

    .line 32
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->setSection_count(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->getListSection()Lcom/mezzo/common/network/data/DataListSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataListSection;->clear()V

    .line 34
    return-void
.end method

.method public getError_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->error_code:Ljava/lang/String;

    return-object v0
.end method

.method public getListSection()Lcom/mezzo/common/network/data/DataListSection;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->listSection:Lcom/mezzo/common/network/data/DataListSection;

    return-object v0
.end method

.method public getPackage_info()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->package_info:Ljava/lang/String;

    return-object v0
.end method

.method public getSection_count()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->section_count:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setError_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "error_code"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->error_code:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setListSection(Lcom/mezzo/common/network/data/DataListSection;)V
    .locals 0
    .param p1, "listSection"    # Lcom/mezzo/common/network/data/DataListSection;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->listSection:Lcom/mezzo/common/network/data/DataListSection;

    .line 72
    return-void
.end method

.method public setPackage_info(Ljava/lang/String;)V
    .locals 0
    .param p1, "package_info"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->package_info:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setSection_count(Ljava/lang/String;)V
    .locals 0
    .param p1, "section_count"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->section_count:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->version:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataNTPkgAgList {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error_code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->error_code:Ljava/lang/String;

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

    const-string/jumbo v2, "package_info : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->package_info:Ljava/lang/String;

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

    const-string/jumbo v2, "section_count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->section_count:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->listSection:Lcom/mezzo/common/network/data/DataListSection;

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "listSection : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTPkgAgList;->listSection:Lcom/mezzo/common/network/data/DataListSection;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataListSection;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
