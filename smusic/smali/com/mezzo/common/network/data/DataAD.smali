.class public Lcom/mezzo/common/network/data/DataAD;
.super Ljava/lang/Object;
.source "DataAD.java"

# interfaces
.implements Lcom/mezzo/common/network/data/IData;


# instance fields
.field private ad_group_no:Ljava/lang/String;

.field private gubun:Ljava/lang/String;

.field private pkgFilterList:[Ljava/lang/String;

.field private pkgTargetList:[Ljava/lang/String;

.field private pkg_filter:Ljava/lang/String;

.field private pkg_filter_list:Ljava/lang/String;

.field private pkg_target:Ljava/lang/String;

.field private pkg_target_list:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "\\^"

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataAD;->gubun:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ad_group_no"    # Ljava/lang/String;
    .param p2, "pkg_target"    # Ljava/lang/String;
    .param p3, "pkg_target_list"    # Ljava/lang/String;
    .param p4, "pkg_filter"    # Ljava/lang/String;
    .param p5, "pkg_filter_list"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "\\^"

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataAD;->gubun:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, p1}, Lcom/mezzo/common/network/data/DataAD;->setAd_group_no(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/mezzo/common/network/data/DataAD;->setPkg_target(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p3}, Lcom/mezzo/common/network/data/DataAD;->setPkg_target_list(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p4}, Lcom/mezzo/common/network/data/DataAD;->setPkg_filter(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p5}, Lcom/mezzo/common/network/data/DataAD;->setPkg_filter_list(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataAD;->setAd_group_no(Ljava/lang/String;)V

    .line 32
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataAD;->setPkg_target(Ljava/lang/String;)V

    .line 33
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataAD;->setPkg_target_list(Ljava/lang/String;)V

    .line 34
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataAD;->setPkg_filter(Ljava/lang/String;)V

    .line 35
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataAD;->setPkg_filter_list(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public getAd_group_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataAD;->ad_group_no:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgFilterList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataAD;->pkgFilterList:[Ljava/lang/String;

    return-object v0
.end method

.method public getPkgTargetList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataAD;->pkgTargetList:[Ljava/lang/String;

    return-object v0
.end method

.method public getPkg_filter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataAD;->pkg_filter:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg_filter_list()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataAD;->pkg_filter_list:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg_target()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataAD;->pkg_target:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg_target_list()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataAD;->pkg_target_list:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_group_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "ad_group_no"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataAD;->ad_group_no:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPkgFilterList([Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgFilterList"    # [Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataAD;->pkgFilterList:[Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setPkgTargetList([Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgTargetList"    # [Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataAD;->pkgTargetList:[Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setPkg_filter(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg_filter"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataAD;->pkg_filter:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setPkg_filter_list(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg_filter_list"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataAD;->pkg_filter_list:Ljava/lang/String;

    .line 91
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataAD;->gubun:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataAD;->setPkgFilterList([Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method

.method public setPkg_target(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg_target"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataAD;->pkg_target:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setPkg_target_list(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg_target_list"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataAD;->pkg_target_list:Ljava/lang/String;

    .line 72
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataAD;->gubun:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataAD;->setPkgTargetList([Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataAD{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad_group_no : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataAD;->ad_group_no:Ljava/lang/String;

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

    const-string/jumbo v2, "pkg_target : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataAD;->pkg_target:Ljava/lang/String;

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

    const-string/jumbo v2, "pkg_target_list : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataAD;->pkg_target_list:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pkg_filter : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataAD;->pkg_filter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pkg_filter_list : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataAD;->pkg_filter_list:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
