.class public Lcom/mezzo/common/network/data/DataNTInitInfo;
.super Ljava/lang/Object;
.source "DataNTInitInfo.java"

# interfaces
.implements Lcom/mezzo/common/network/data/IData;


# instance fields
.field private ab_interval:Ljava/lang/String;

.field private conf_period:Ljava/lang/String;

.field private pkg_target_info_ver:Ljava/lang/String;

.field private pkg_target_period:Ljava/lang/String;

.field private pkg_target_use:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 32
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTInitInfo;->setVersion(Ljava/lang/String;)V

    .line 33
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTInitInfo;->setPkg_target_use(Ljava/lang/String;)V

    .line 34
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTInitInfo;->setPkg_target_info_ver(Ljava/lang/String;)V

    .line 35
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTInitInfo;->setPkg_target_period(Ljava/lang/String;)V

    .line 36
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTInitInfo;->setConf_period(Ljava/lang/String;)V

    .line 37
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTInitInfo;->setAb_interval(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public getAb_interval()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->ab_interval:Ljava/lang/String;

    return-object v0
.end method

.method public getConf_period()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->conf_period:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg_target_info_ver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->pkg_target_info_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg_target_period()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->pkg_target_period:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg_target_use()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->pkg_target_use:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAb_interval(Ljava/lang/String;)V
    .locals 0
    .param p1, "ab_interval"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->ab_interval:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setConf_period(Ljava/lang/String;)V
    .locals 0
    .param p1, "conf_period"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->conf_period:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPkg_target_info_ver(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg_target_info_ver"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->pkg_target_info_ver:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setPkg_target_period(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg_target_period"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->pkg_target_period:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setPkg_target_use(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg_target_use"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->pkg_target_use:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->version:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataNTInitInfo\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pkg_target_use : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->pkg_target_use:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pkg_target_info_ver : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->pkg_target_info_ver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pkg_target_period : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->pkg_target_period:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "conf_period : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->conf_period:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ab_interval : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTInitInfo;->ab_interval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
