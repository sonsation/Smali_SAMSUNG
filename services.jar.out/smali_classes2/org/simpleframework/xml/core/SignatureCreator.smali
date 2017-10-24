.class Lorg/simpleframework/xml/core/SignatureCreator;
.super Ljava/lang/Object;
.source "SignatureCreator.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Creator;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private final signature:Lorg/simpleframework/xml/core/Signature;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Signature;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Signature;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->type:Ljava/lang/Class;

    .line 62
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Signature;->getAll()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    .line 64
    return-void
.end method

.method private getAdjustment(D)D
    .locals 5

    .prologue
    .line 228
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 230
    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    .line 231
    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v2, p1, v2

    add-double/2addr v0, v2

    return-wide v0

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v0, p1, v0

    return-wide v0
.end method

.method private getPercentage(Lorg/simpleframework/xml/core/Criteria;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/16 v0, 0x0

    .line 199
    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0, v2, v3}, Lorg/simpleframework/xml/core/SignatureCreator;->getAdjustment(D)D

    move-result-wide v0

    return-wide v0

    .line 199
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    .line 200
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 201
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/core/Criteria;->get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 211
    add-double/2addr v0, v2

    :goto_1
    move-wide v2, v0

    .line 213
    goto :goto_0

    .line 204
    :cond_1
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->isRequired()Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    move-wide v0, v2

    goto :goto_1

    .line 205
    :cond_2
    return-wide v6

    .line 208
    :cond_3
    return-wide v6
.end method

.method private getVariable(Lorg/simpleframework/xml/core/Criteria;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    .line 131
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 132
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Criteria;->remove(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v0

    .line 134
    if-nez v0, :cond_0

    .line 137
    return-object v1

    .line 135
    :cond_0
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Signature;->create()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    .line 112
    :goto_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 115
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Signature;->create([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/SignatureCreator;->getVariable(Lorg/simpleframework/xml/core/Criteria;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getScore(Lorg/simpleframework/xml/core/Criteria;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 155
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Signature;->copy()Lorg/simpleframework/xml/core/Signature;

    move-result-object v0

    .line 157
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Criteria;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/SignatureCreator;->getPercentage(Lorg/simpleframework/xml/core/Criteria;)D

    move-result-wide v0

    return-wide v0

    .line 157
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 158
    invoke-virtual {v0, v2}, Lorg/simpleframework/xml/core/Signature;->get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v3

    .line 159
    invoke-interface {p1, v2}, Lorg/simpleframework/xml/core/Criteria;->get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Variable;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v4

    .line 162
    if-nez v3, :cond_3

    .line 171
    :cond_2
    invoke-interface {v4}, Lorg/simpleframework/xml/core/Contact;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    if-nez v3, :cond_0

    .line 173
    return-wide v6

    .line 163
    :cond_3
    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 165
    invoke-interface {v3}, Lorg/simpleframework/xml/core/Parameter;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 167
    invoke-static {v2, v5}, Lorg/simpleframework/xml/core/Support;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 168
    return-wide v6
.end method

.method public getSignature()Lorg/simpleframework/xml/core/Signature;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Signature;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
