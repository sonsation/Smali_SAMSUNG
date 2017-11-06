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
    .param p1, "signature"    # Lorg/simpleframework/xml/core/Signature;

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
    .locals 7
    .param p1, "score"    # D

    .prologue
    .line 228
    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v0, v2, v4

    .line 230
    .local v0, "adjustment":D
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    .line 231
    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v2, p1, v2

    add-double/2addr v2, v0

    .line 233
    :goto_0
    return-wide v2

    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v2, p1, v2

    goto :goto_0
.end method

.method private getPercentage(Lorg/simpleframework/xml/core/Criteria;)D
    .locals 10
    .param p1, "criteria"    # Lorg/simpleframework/xml/core/Criteria;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 197
    const-wide/16 v4, 0x0

    .line 199
    .local v4, "score":D
    iget-object v8, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Parameter;

    .line 200
    .local v3, "value":Lorg/simpleframework/xml/core/Parameter;
    invoke-interface {v3}, Lorg/simpleframework/xml/core/Parameter;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 201
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/core/Criteria;->get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v2

    .line 203
    .local v2, "label":Lorg/simpleframework/xml/core/Label;
    if-nez v2, :cond_2

    .line 204
    invoke-interface {v3}, Lorg/simpleframework/xml/core/Parameter;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 214
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "label":Lorg/simpleframework/xml/core/Label;
    .end local v3    # "value":Lorg/simpleframework/xml/core/Parameter;
    :goto_1
    return-wide v6

    .line 207
    .restart local v1    # "key":Ljava/lang/Object;
    .restart local v2    # "label":Lorg/simpleframework/xml/core/Label;
    .restart local v3    # "value":Lorg/simpleframework/xml/core/Parameter;
    :cond_1
    invoke-interface {v3}, Lorg/simpleframework/xml/core/Parameter;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 211
    :cond_2
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v8

    goto :goto_0

    .line 214
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "label":Lorg/simpleframework/xml/core/Label;
    .end local v3    # "value":Lorg/simpleframework/xml/core/Parameter;
    :cond_3
    invoke-direct {p0, v4, v5}, Lorg/simpleframework/xml/core/SignatureCreator;->getAdjustment(D)D

    move-result-wide v6

    goto :goto_1
.end method

.method private getVariable(Lorg/simpleframework/xml/core/Criteria;I)Ljava/lang/Object;
    .locals 4
    .param p1, "criteria"    # Lorg/simpleframework/xml/core/Criteria;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v3, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Parameter;

    .line 131
    .local v1, "parameter":Lorg/simpleframework/xml/core/Parameter;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Parameter;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, "key":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Criteria;->remove(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v2

    .line 134
    .local v2, "variable":Lorg/simpleframework/xml/core/Variable;
    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 137
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getInstance(Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;
    .locals 3
    .param p1, "criteria"    # Lorg/simpleframework/xml/core/Criteria;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 112
    .local v1, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 113
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/SignatureCreator;->getVariable(Lorg/simpleframework/xml/core/Criteria;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v2, v1}, Lorg/simpleframework/xml/core/Signature;->create([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getScore(Lorg/simpleframework/xml/core/Criteria;)D
    .locals 12
    .param p1, "criteria"    # Lorg/simpleframework/xml/core/Criteria;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 155
    iget-object v9, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v9}, Lorg/simpleframework/xml/core/Signature;->copy()Lorg/simpleframework/xml/core/Signature;

    move-result-object v6

    .line 157
    .local v6, "match":Lorg/simpleframework/xml/core/Signature;
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Criteria;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 158
    .local v4, "key":Ljava/lang/Object;
    invoke-virtual {v6, v4}, Lorg/simpleframework/xml/core/Signature;->get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v7

    .line 159
    .local v7, "parameter":Lorg/simpleframework/xml/core/Parameter;
    invoke-interface {p1, v4}, Lorg/simpleframework/xml/core/Criteria;->get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v5

    .line 160
    .local v5, "label":Lorg/simpleframework/xml/core/Variable;
    invoke-virtual {v5}, Lorg/simpleframework/xml/core/Variable;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    .line 162
    .local v1, "contact":Lorg/simpleframework/xml/core/Contact;
    if-eqz v7, :cond_1

    .line 163
    invoke-virtual {v5}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 164
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 165
    .local v2, "expect":Ljava/lang/Class;
    invoke-interface {v7}, Lorg/simpleframework/xml/core/Parameter;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 167
    .local v0, "actual":Ljava/lang/Class;
    invoke-static {v2, v0}, Lorg/simpleframework/xml/core/Support;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 177
    .end local v0    # "actual":Ljava/lang/Class;
    .end local v1    # "contact":Lorg/simpleframework/xml/core/Contact;
    .end local v2    # "expect":Ljava/lang/Class;
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "label":Lorg/simpleframework/xml/core/Variable;
    .end local v7    # "parameter":Lorg/simpleframework/xml/core/Parameter;
    .end local v8    # "value":Ljava/lang/Object;
    :goto_0
    return-wide v10

    .line 171
    .restart local v1    # "contact":Lorg/simpleframework/xml/core/Contact;
    .restart local v4    # "key":Ljava/lang/Object;
    .restart local v5    # "label":Lorg/simpleframework/xml/core/Variable;
    .restart local v7    # "parameter":Lorg/simpleframework/xml/core/Parameter;
    :cond_1
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Contact;->isReadOnly()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 172
    if-nez v7, :cond_0

    goto :goto_0

    .line 177
    .end local v1    # "contact":Lorg/simpleframework/xml/core/Contact;
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "label":Lorg/simpleframework/xml/core/Variable;
    .end local v7    # "parameter":Lorg/simpleframework/xml/core/Parameter;
    :cond_2
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/SignatureCreator;->getPercentage(Lorg/simpleframework/xml/core/Criteria;)D

    move-result-wide v10

    goto :goto_0
.end method

.method public getSignature()Lorg/simpleframework/xml/core/Signature;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

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
