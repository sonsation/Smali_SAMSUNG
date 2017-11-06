.class public Lorg/brickred/socialauth/Education;
.super Ljava/lang/Object;
.source "Education.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x18d7fb537e0d5ac3L


# instance fields
.field private degree:Ljava/lang/String;

.field private endDate:Lorg/brickred/socialauth/util/DateComponents;

.field private fieldOfStudy:Ljava/lang/String;

.field private schoolName:Ljava/lang/String;

.field private startDate:Lorg/brickred/socialauth/util/DateComponents;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDegree()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/brickred/socialauth/Education;->degree:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Lorg/brickred/socialauth/util/DateComponents;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/brickred/socialauth/Education;->endDate:Lorg/brickred/socialauth/util/DateComponents;

    return-object v0
.end method

.method public getFieldOfStudy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/brickred/socialauth/Education;->fieldOfStudy:Ljava/lang/String;

    return-object v0
.end method

.method public getSchoolName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/brickred/socialauth/Education;->schoolName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Lorg/brickred/socialauth/util/DateComponents;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/brickred/socialauth/Education;->startDate:Lorg/brickred/socialauth/util/DateComponents;

    return-object v0
.end method

.method public setDegree(Ljava/lang/String;)V
    .locals 0
    .param p1, "degree"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lorg/brickred/socialauth/Education;->degree:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setEndDate(Lorg/brickred/socialauth/util/DateComponents;)V
    .locals 0
    .param p1, "endDate"    # Lorg/brickred/socialauth/util/DateComponents;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/brickred/socialauth/Education;->endDate:Lorg/brickred/socialauth/util/DateComponents;

    .line 140
    return-void
.end method

.method public setFieldOfStudy(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldOfStudy"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/brickred/socialauth/Education;->fieldOfStudy:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setSchoolName(Ljava/lang/String;)V
    .locals 0
    .param p1, "schoolName"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/brickred/socialauth/Education;->schoolName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setStartDate(Lorg/brickred/socialauth/util/DateComponents;)V
    .locals 0
    .param p1, "startDate"    # Lorg/brickred/socialauth/util/DateComponents;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/brickred/socialauth/Education;->startDate:Lorg/brickred/socialauth/util/DateComponents;

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
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

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " schoolName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Education;->schoolName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " fieldOfStudy: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Education;->fieldOfStudy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " degree: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Education;->degree:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " startDate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Education;->startDate:Lorg/brickred/socialauth/util/DateComponents;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " endDate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Education;->endDate:Lorg/brickred/socialauth/util/DateComponents;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
