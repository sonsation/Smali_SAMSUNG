.class public Lorg/brickred/socialauth/Position;
.super Ljava/lang/Object;
.source "Position.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x631bff14a97969fL


# instance fields
.field private companyId:Ljava/lang/String;

.field private companyName:Ljava/lang/String;

.field private companyType:Ljava/lang/String;

.field private currentcompany:Z

.field private endDate:Lorg/brickred/socialauth/util/DateComponents;

.field private industry:Ljava/lang/String;

.field private positionId:Ljava/lang/String;

.field private startDate:Lorg/brickred/socialauth/util/DateComponents;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompanyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/brickred/socialauth/Position;->companyId:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/brickred/socialauth/Position;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/brickred/socialauth/Position;->companyType:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Lorg/brickred/socialauth/util/DateComponents;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/brickred/socialauth/Position;->endDate:Lorg/brickred/socialauth/util/DateComponents;

    return-object v0
.end method

.method public getIndustry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/brickred/socialauth/Position;->industry:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/brickred/socialauth/Position;->positionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Lorg/brickred/socialauth/util/DateComponents;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/brickred/socialauth/Position;->startDate:Lorg/brickred/socialauth/util/DateComponents;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/brickred/socialauth/Position;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrentCompany()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/brickred/socialauth/Position;->currentcompany:Z

    return v0
.end method

.method public setCompanyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyId"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lorg/brickred/socialauth/Position;->companyId:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyName"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/brickred/socialauth/Position;->companyName:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setCompanyType(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyType"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lorg/brickred/socialauth/Position;->companyType:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setCurrentCompany(Z)V
    .locals 0
    .param p1, "currentcompany"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lorg/brickred/socialauth/Position;->currentcompany:Z

    .line 146
    return-void
.end method

.method public setEndDate(Lorg/brickred/socialauth/util/DateComponents;)V
    .locals 0
    .param p1, "endDate"    # Lorg/brickred/socialauth/util/DateComponents;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/brickred/socialauth/Position;->endDate:Lorg/brickred/socialauth/util/DateComponents;

    .line 126
    return-void
.end method

.method public setIndustry(Ljava/lang/String;)V
    .locals 0
    .param p1, "industry"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lorg/brickred/socialauth/Position;->industry:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setPositionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "positionId"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/brickred/socialauth/Position;->positionId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setStartDate(Lorg/brickred/socialauth/util/DateComponents;)V
    .locals 0
    .param p1, "startDate"    # Lorg/brickred/socialauth/util/DateComponents;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/brickred/socialauth/Position;->startDate:Lorg/brickred/socialauth/util/DateComponents;

    .line 106
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/brickred/socialauth/Position;->title:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "NEW_LINE":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Object {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Position;->positionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " title: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Position;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " startDate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Position;->startDate:Lorg/brickred/socialauth/util/DateComponents;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " endDate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Position;->endDate:Lorg/brickred/socialauth/util/DateComponents;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " currentcompany: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lorg/brickred/socialauth/Position;->currentcompany:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " companyId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Position;->companyId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " companyName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Position;->companyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " companyType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Position;->companyType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " industry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Position;->industry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
