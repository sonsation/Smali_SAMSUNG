.class Lorg/simpleframework/xml/core/ModelSection;
.super Ljava/lang/Object;
.source "ModelSection.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Section;


# instance fields
.field private attributes:Lorg/simpleframework/xml/core/LabelMap;

.field private elements:Lorg/simpleframework/xml/core/LabelMap;

.field private model:Lorg/simpleframework/xml/core/Model;

.field private models:Lorg/simpleframework/xml/core/ModelMap;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Model;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    .line 65
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Expression;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    return-object p1
.end method

.method public getAttributes()Lorg/simpleframework/xml/core/LabelMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    return-object v0

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    goto :goto_0
.end method

.method public getElement(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelSection;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Lorg/simpleframework/xml/core/LabelMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->elements:Lorg/simpleframework/xml/core/LabelMap;

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->elements:Lorg/simpleframework/xml/core/LabelMap;

    return-object v0

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->elements:Lorg/simpleframework/xml/core/LabelMap;

    goto :goto_0
.end method

.method public getModels()Lorg/simpleframework/xml/core/ModelMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->models:Lorg/simpleframework/xml/core/ModelMap;

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->models:Lorg/simpleframework/xml/core/ModelMap;

    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getModels()Lorg/simpleframework/xml/core/ModelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->models:Lorg/simpleframework/xml/core/ModelMap;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    return-object p1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelSection;->getModels()Lorg/simpleframework/xml/core/ModelMap;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ModelList;

    .line 257
    if-nez v0, :cond_1

    .line 264
    :cond_0
    return-object v1

    .line 258
    :cond_1
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelList;->take()Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    .line 261
    new-instance v1, Lorg/simpleframework/xml/core/ModelSection;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/core/ModelSection;-><init>(Lorg/simpleframework/xml/core/Model;)V

    return-object v1
.end method

.method public getText()Lorg/simpleframework/xml/core/Label;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public isSection(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelSection;->getModels()Lorg/simpleframework/xml/core/ModelMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
