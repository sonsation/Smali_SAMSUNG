.class Lorg/simpleframework/xml/core/SignatureBuilder;
.super Ljava/lang/Object;
.source "SignatureBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;,
        Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;
    }
.end annotation


# instance fields
.field private final factory:Ljava/lang/reflect/Constructor;

.field private final table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    .line 58
    iput-object p1, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    .line 59
    return-void
.end method

.method private build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/SignatureBuilder;->build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;I)V

    .line 115
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder;->create(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder;->create()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;I)V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/SignatureBuilder;->build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V

    .line 179
    return-void
.end method

.method private build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V
    .locals 5

    .prologue
    .line 192
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v0, p3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->size()I

    move-result v3

    .line 194
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-static {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->access$000(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I

    move-result v0

    .line 196
    add-int/lit8 v0, v0, -0x1

    if-gt v0, p3, :cond_1

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/SignatureBuilder;->populate(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V

    .line 210
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 197
    :goto_0
    if-ge v1, v3, :cond_0

    .line 198
    new-instance v4, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    invoke-direct {v4, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;-><init>(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;)V

    .line 200
    if-nez p2, :cond_2

    .line 197
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {v2, v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    .line 203
    invoke-virtual {v4, v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v0, p3, 0x1

    invoke-direct {p0, p1, v4, v0}, Lorg/simpleframework/xml/core/SignatureBuilder;->build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V

    goto :goto_1
.end method

.method private create()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v1, Lorg/simpleframework/xml/core/Signature;

    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    invoke-direct {v1, v2}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 129
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/SignatureBuilder;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    :goto_0
    return-object v0

    .line 130
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private create(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 146
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-static {p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->access$100(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I

    move-result v4

    .line 148
    invoke-static {p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->access$000(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I

    move-result v5

    move v2, v1

    .line 150
    :goto_0
    if-lt v2, v4, :cond_0

    .line 165
    return-object v3

    .line 151
    :cond_0
    new-instance v6, Lorg/simpleframework/xml/core/Signature;

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    invoke-direct {v6, v0}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;)V

    move v0, v1

    .line 153
    :goto_1
    if-lt v0, v5, :cond_1

    .line 163
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p1, v0, v2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(II)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v7

    .line 155
    invoke-interface {v7}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 156
    invoke-interface {v7}, Lorg/simpleframework/xml/core/Parameter;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 158
    invoke-virtual {v6, v9}, Lorg/simpleframework/xml/core/Signature;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 161
    invoke-virtual {v6, v7}, Lorg/simpleframework/xml/core/Signature;->add(Lorg/simpleframework/xml/core/Parameter;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string/jumbo v2, "Parameter \'%s\' is a duplicate in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private populate(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v0, p3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v4

    .line 224
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->size()I

    move-result v5

    .line 225
    invoke-virtual {v4}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->size()I

    move-result v6

    move v3, v2

    .line 227
    :goto_0
    if-lt v3, v6, :cond_0

    .line 239
    return-void

    :cond_0
    move v1, v2

    .line 228
    :goto_1
    if-lt v1, v5, :cond_1

    .line 234
    invoke-virtual {p1, p3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v1

    .line 235
    invoke-virtual {v4, v3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    .line 237
    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p1, v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v7

    .line 230
    invoke-virtual {p2, v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    .line 232
    invoke-virtual {v7, v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public build()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/SignatureBuilder;->build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lorg/simpleframework/xml/core/Parameter;I)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->insert(Lorg/simpleframework/xml/core/Parameter;I)V

    .line 86
    return-void
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-static {v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->access$000(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I

    move-result v1

    .line 73
    array-length v0, v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
