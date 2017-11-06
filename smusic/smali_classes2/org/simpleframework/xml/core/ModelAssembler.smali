.class Lorg/simpleframework/xml/core/ModelAssembler;
.super Ljava/lang/Object;
.source "ModelAssembler.java"


# instance fields
.field private final builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

.field private final detail:Lorg/simpleframework/xml/core/Detail;

.field private final format:Lorg/simpleframework/xml/stream/Format;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/ExpressionBuilder;Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 1
    .param p1, "builder"    # Lorg/simpleframework/xml/core/ExpressionBuilder;
    .param p2, "detail"    # Lorg/simpleframework/xml/core/Detail;
    .param p3, "support"    # Lorg/simpleframework/xml/core/Support;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p3}, Lorg/simpleframework/xml/core/Support;->getFormat()Lorg/simpleframework/xml/stream/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelAssembler;->format:Lorg/simpleframework/xml/stream/Format;

    .line 75
    iput-object p1, p0, Lorg/simpleframework/xml/core/ModelAssembler;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    .line 76
    iput-object p2, p0, Lorg/simpleframework/xml/core/ModelAssembler;->detail:Lorg/simpleframework/xml/core/Detail;

    .line 77
    return-void
.end method

.method private assembleAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V
    .locals 12
    .param p1, "model"    # Lorg/simpleframework/xml/core/Model;
    .param p2, "order"    # Lorg/simpleframework/xml/Order;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    invoke-interface {p2}, Lorg/simpleframework/xml/Order;->attributes()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v6, v0, v1

    .line 124
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lorg/simpleframework/xml/core/ModelAssembler;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    invoke-virtual {v7, v6}, Lorg/simpleframework/xml/core/ExpressionBuilder;->build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v4

    .line 126
    .local v4, "path":Lorg/simpleframework/xml/core/Expression;
    invoke-interface {v4}, Lorg/simpleframework/xml/core/Expression;->isAttribute()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    new-instance v7, Lorg/simpleframework/xml/core/PathException;

    const-string v8, "Ordered attribute \'%s\' references an element in %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/simpleframework/xml/core/ModelAssembler;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7

    .line 129
    :cond_0
    invoke-interface {v4}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v7

    if-nez v7, :cond_1

    .line 130
    iget-object v7, p0, Lorg/simpleframework/xml/core/ModelAssembler;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {v7}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v5

    .line 131
    .local v5, "style":Lorg/simpleframework/xml/stream/Style;
    invoke-interface {v5, v6}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/simpleframework/xml/core/Model;->registerAttribute(Ljava/lang/String;)V

    .line 123
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "style":Lorg/simpleframework/xml/stream/Style;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    invoke-direct {p0, p1, v4}, Lorg/simpleframework/xml/core/ModelAssembler;->registerAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    goto :goto_1

    .line 138
    .end local v4    # "path":Lorg/simpleframework/xml/core/Expression;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private assembleElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V
    .locals 10
    .param p1, "model"    # Lorg/simpleframework/xml/core/Model;
    .param p2, "order"    # Lorg/simpleframework/xml/Order;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    invoke-interface {p2}, Lorg/simpleframework/xml/Order;->elements()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 104
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lorg/simpleframework/xml/core/ModelAssembler;->builder:Lorg/simpleframework/xml/core/ExpressionBuilder;

    invoke-virtual {v5, v4}, Lorg/simpleframework/xml/core/ExpressionBuilder;->build(Ljava/lang/String;)Lorg/simpleframework/xml/core/Expression;

    move-result-object v3

    .line 106
    .local v3, "path":Lorg/simpleframework/xml/core/Expression;
    invoke-interface {v3}, Lorg/simpleframework/xml/core/Expression;->isAttribute()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    new-instance v5, Lorg/simpleframework/xml/core/PathException;

    const-string v6, "Ordered element \'%s\' references an attribute in %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/simpleframework/xml/core/ModelAssembler;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 109
    :cond_0
    invoke-direct {p0, p1, v3}, Lorg/simpleframework/xml/core/ModelAssembler;->registerElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v3    # "path":Lorg/simpleframework/xml/core/Expression;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private registerAttribute(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .locals 1
    .param p1, "model"    # Lorg/simpleframework/xml/core/Model;
    .param p2, "path"    # Lorg/simpleframework/xml/core/Expression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 179
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Model;->registerAttribute(Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method private registerAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .locals 10
    .param p1, "model"    # Lorg/simpleframework/xml/core/Model;
    .param p2, "path"    # Lorg/simpleframework/xml/core/Expression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 149
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "prefix":Ljava/lang/String;
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v1

    .line 153
    .local v1, "index":I
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    invoke-interface {p1, v2, v4, v1}, Lorg/simpleframework/xml/core/Model;->register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v3

    .line 155
    .local v3, "next":Lorg/simpleframework/xml/core/Model;
    invoke-interface {p2, v9}, Lorg/simpleframework/xml/core/Expression;->getPath(I)Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 157
    .local v0, "child":Lorg/simpleframework/xml/core/Expression;
    if-nez v3, :cond_0

    .line 158
    new-instance v5, Lorg/simpleframework/xml/core/PathException;

    const-string v6, "Element \'%s\' does not exist in %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    iget-object v8, p0, Lorg/simpleframework/xml/core/ModelAssembler;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v8, v7, v9

    invoke-direct {v5, v6, v7}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 160
    :cond_0
    invoke-direct {p0, v3, v0}, Lorg/simpleframework/xml/core/ModelAssembler;->registerAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    .line 164
    .end local v0    # "child":Lorg/simpleframework/xml/core/Expression;
    .end local v3    # "next":Lorg/simpleframework/xml/core/Model;
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->registerAttribute(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    goto :goto_0
.end method

.method private registerElement(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .locals 9
    .param p1, "model"    # Lorg/simpleframework/xml/core/Model;
    .param p2, "path"    # Lorg/simpleframework/xml/core/Expression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 228
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "prefix":Ljava/lang/String;
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v0

    .line 232
    .local v0, "index":I
    if-le v0, v8, :cond_0

    .line 233
    add-int/lit8 v4, v0, -0x1

    invoke-interface {p1, v1, v4}, Lorg/simpleframework/xml/core/Model;->lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v3

    .line 235
    .local v3, "previous":Lorg/simpleframework/xml/core/Model;
    if-nez v3, :cond_0

    .line 236
    new-instance v4, Lorg/simpleframework/xml/core/PathException;

    const-string v5, "Ordered element \'%s\' in path \'%s\' is out of sequence for %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    aput-object p2, v6, v8

    const/4 v7, 0x2

    iget-object v8, p0, Lorg/simpleframework/xml/core/ModelAssembler;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 239
    .end local v3    # "previous":Lorg/simpleframework/xml/core/Model;
    :cond_0
    invoke-interface {p1, v1, v2, v0}, Lorg/simpleframework/xml/core/Model;->register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    .line 240
    return-void
.end method

.method private registerElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V
    .locals 6
    .param p1, "model"    # Lorg/simpleframework/xml/core/Model;
    .param p2, "path"    # Lorg/simpleframework/xml/core/Expression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "prefix":Ljava/lang/String;
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v1

    .line 196
    .local v1, "index":I
    if-eqz v2, :cond_0

    .line 197
    invoke-interface {p1, v2, v4, v1}, Lorg/simpleframework/xml/core/Model;->register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v3

    .line 198
    .local v3, "next":Lorg/simpleframework/xml/core/Model;
    const/4 v5, 0x1

    invoke-interface {p2, v5}, Lorg/simpleframework/xml/core/Expression;->getPath(I)Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 200
    .local v0, "child":Lorg/simpleframework/xml/core/Expression;
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    invoke-direct {p0, v3, v0}, Lorg/simpleframework/xml/core/ModelAssembler;->registerElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    .line 204
    .end local v0    # "child":Lorg/simpleframework/xml/core/Expression;
    .end local v3    # "next":Lorg/simpleframework/xml/core/Model;
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->registerElement(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Expression;)V

    .line 205
    return-void
.end method


# virtual methods
.method public assemble(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V
    .locals 0
    .param p1, "model"    # Lorg/simpleframework/xml/core/Model;
    .param p2, "order"    # Lorg/simpleframework/xml/Order;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->assembleElements(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V

    .line 90
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ModelAssembler;->assembleAttributes(Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/Order;)V

    .line 91
    return-void
.end method
