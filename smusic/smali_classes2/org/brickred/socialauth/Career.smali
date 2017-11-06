.class public Lorg/brickred/socialauth/Career;
.super Ljava/lang/Object;
.source "Career.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2c4d78068555e918L


# instance fields
.field private educations:[Lorg/brickred/socialauth/Education;

.field private headline:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private positions:[Lorg/brickred/socialauth/Position;

.field private recommendations:[Lorg/brickred/socialauth/Recommendation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEducations()[Lorg/brickred/socialauth/Education;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/brickred/socialauth/Career;->educations:[Lorg/brickred/socialauth/Education;

    return-object v0
.end method

.method public getHeadline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/brickred/socialauth/Career;->headline:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/brickred/socialauth/Career;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPositions()[Lorg/brickred/socialauth/Position;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/brickred/socialauth/Career;->positions:[Lorg/brickred/socialauth/Position;

    return-object v0
.end method

.method public getRecommendations()[Lorg/brickred/socialauth/Recommendation;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/brickred/socialauth/Career;->recommendations:[Lorg/brickred/socialauth/Recommendation;

    return-object v0
.end method

.method public setEducations([Lorg/brickred/socialauth/Education;)V
    .locals 0
    .param p1, "educations"    # [Lorg/brickred/socialauth/Education;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/brickred/socialauth/Career;->educations:[Lorg/brickred/socialauth/Education;

    .line 100
    return-void
.end method

.method public setHeadline(Ljava/lang/String;)V
    .locals 0
    .param p1, "headline"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/brickred/socialauth/Career;->headline:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/brickred/socialauth/Career;->id:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setPositions([Lorg/brickred/socialauth/Position;)V
    .locals 0
    .param p1, "positions"    # [Lorg/brickred/socialauth/Position;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/brickred/socialauth/Career;->positions:[Lorg/brickred/socialauth/Position;

    .line 119
    return-void
.end method

.method public setRecommendations([Lorg/brickred/socialauth/Recommendation;)V
    .locals 0
    .param p1, "recommendations"    # [Lorg/brickred/socialauth/Recommendation;

    .prologue
    .line 138
    iput-object p1, p0, Lorg/brickred/socialauth/Career;->recommendations:[Lorg/brickred/socialauth/Recommendation;

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v4, "result":Ljava/lang/StringBuilder;
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "NEW_LINE":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " Object {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/brickred/socialauth/Career;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " headline: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/brickred/socialauth/Career;->headline:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " educations { "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v6, p0, Lorg/brickred/socialauth/Career;->educations:[Lorg/brickred/socialauth/Education;

    if-eqz v6, :cond_0

    .line 155
    iget-object v7, p0, Lorg/brickred/socialauth/Career;->educations:[Lorg/brickred/socialauth/Education;

    array-length v8, v7

    move v6, v5

    :goto_0
    if-lt v6, v8, :cond_3

    .line 159
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " } "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " positions { "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v6, p0, Lorg/brickred/socialauth/Career;->positions:[Lorg/brickred/socialauth/Position;

    if-eqz v6, :cond_1

    .line 162
    iget-object v7, p0, Lorg/brickred/socialauth/Career;->positions:[Lorg/brickred/socialauth/Position;

    array-length v8, v7

    move v6, v5

    :goto_1
    if-lt v6, v8, :cond_4

    .line 166
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " } "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " recommendations { "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v6, p0, Lorg/brickred/socialauth/Career;->recommendations:[Lorg/brickred/socialauth/Recommendation;

    if-eqz v6, :cond_2

    .line 169
    iget-object v6, p0, Lorg/brickred/socialauth/Career;->recommendations:[Lorg/brickred/socialauth/Recommendation;

    array-length v7, v6

    :goto_2
    if-lt v5, v7, :cond_5

    .line 173
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " } "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 155
    :cond_3
    aget-object v1, v7, v6

    .line 156
    .local v1, "education":Lorg/brickred/socialauth/Education;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 162
    .end local v1    # "education":Lorg/brickred/socialauth/Education;
    :cond_4
    aget-object v2, v7, v6

    .line 163
    .local v2, "position":Lorg/brickred/socialauth/Position;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 169
    .end local v2    # "position":Lorg/brickred/socialauth/Position;
    :cond_5
    aget-object v3, v6, v5

    .line 170
    .local v3, "recommendation":Lorg/brickred/socialauth/Recommendation;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method
