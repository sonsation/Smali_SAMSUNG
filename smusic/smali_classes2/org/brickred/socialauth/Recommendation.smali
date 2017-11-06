.class public Lorg/brickred/socialauth/Recommendation;
.super Ljava/lang/Object;
.source "Recommendation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6bf76f45a9ebca96L


# instance fields
.field private recommendationId:Ljava/lang/String;

.field private recommendationText:Ljava/lang/String;

.field private recommendationType:Ljava/lang/String;

.field private recommenderFirstName:Ljava/lang/String;

.field private recommenderId:Ljava/lang/String;

.field private recommenderLastName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecommendationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/brickred/socialauth/Recommendation;->recommendationId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendationText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/brickred/socialauth/Recommendation;->recommendationText:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/brickred/socialauth/Recommendation;->recommendationType:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommenderFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/brickred/socialauth/Recommendation;->recommenderFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/brickred/socialauth/Recommendation;->recommenderId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommenderLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/brickred/socialauth/Recommendation;->recommenderLastName:Ljava/lang/String;

    return-object v0
.end method

.method public setRecommendationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "recommendationId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/brickred/socialauth/Recommendation;->recommendationId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setRecommendationText(Ljava/lang/String;)V
    .locals 0
    .param p1, "recommendationText"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lorg/brickred/socialauth/Recommendation;->recommendationText:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setRecommendationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "recommendationType"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/brickred/socialauth/Recommendation;->recommendationType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setRecommenderFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "recommenderFirstName"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lorg/brickred/socialauth/Recommendation;->recommenderFirstName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setRecommenderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "recommenderId"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/brickred/socialauth/Recommendation;->recommenderId:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setRecommenderLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "recommenderLastName"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lorg/brickred/socialauth/Recommendation;->recommenderLastName:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
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

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " recommendationId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Recommendation;->recommendationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " recommendationType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Recommendation;->recommendationType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " recommendationText: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Recommendation;->recommendationText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " recommenderId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Recommendation;->recommenderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " recommenderFirstName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Recommendation;->recommenderFirstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " recommenderLastName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/Recommendation;->recommenderLastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
