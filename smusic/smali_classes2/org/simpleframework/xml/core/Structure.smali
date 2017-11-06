.class Lorg/simpleframework/xml/core/Structure;
.super Ljava/lang/Object;
.source "Structure.java"


# instance fields
.field private final factory:Lorg/simpleframework/xml/core/Instantiator;

.field private final model:Lorg/simpleframework/xml/core/Model;

.field private final primitive:Z

.field private final text:Lorg/simpleframework/xml/core/Label;

.field private final version:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Instantiator;Lorg/simpleframework/xml/core/Model;Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Label;Z)V
    .locals 0
    .param p1, "factory"    # Lorg/simpleframework/xml/core/Instantiator;
    .param p2, "model"    # Lorg/simpleframework/xml/core/Model;
    .param p3, "version"    # Lorg/simpleframework/xml/core/Label;
    .param p4, "text"    # Lorg/simpleframework/xml/core/Label;
    .param p5, "primitive"    # Z

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean p5, p0, Lorg/simpleframework/xml/core/Structure;->primitive:Z

    .line 77
    iput-object p1, p0, Lorg/simpleframework/xml/core/Structure;->factory:Lorg/simpleframework/xml/core/Instantiator;

    .line 78
    iput-object p3, p0, Lorg/simpleframework/xml/core/Structure;->version:Lorg/simpleframework/xml/core/Label;

    .line 79
    iput-object p2, p0, Lorg/simpleframework/xml/core/Structure;->model:Lorg/simpleframework/xml/core/Model;

    .line 80
    iput-object p4, p0, Lorg/simpleframework/xml/core/Structure;->text:Lorg/simpleframework/xml/core/Label;

    .line 81
    return-void
.end method


# virtual methods
.method public getInstantiator()Lorg/simpleframework/xml/core/Instantiator;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/simpleframework/xml/core/Structure;->factory:Lorg/simpleframework/xml/core/Instantiator;

    return-object v0
.end method

.method public getRevision()Lorg/simpleframework/xml/Version;
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lorg/simpleframework/xml/core/Structure;->version:Lorg/simpleframework/xml/core/Label;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lorg/simpleframework/xml/core/Structure;->version:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 132
    .local v0, "contact":Lorg/simpleframework/xml/core/Contact;
    const-class v1, Lorg/simpleframework/xml/Version;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/Version;

    .line 134
    .end local v0    # "contact":Lorg/simpleframework/xml/core/Contact;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSection()Lorg/simpleframework/xml/core/Section;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lorg/simpleframework/xml/core/ModelSection;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Structure;->model:Lorg/simpleframework/xml/core/Model;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ModelSection;-><init>(Lorg/simpleframework/xml/core/Model;)V

    return-object v0
.end method

.method public getText()Lorg/simpleframework/xml/core/Label;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/simpleframework/xml/core/Structure;->text:Lorg/simpleframework/xml/core/Label;

    return-object v0
.end method

.method public getVersion()Lorg/simpleframework/xml/core/Label;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/simpleframework/xml/core/Structure;->version:Lorg/simpleframework/xml/core/Label;

    return-object v0
.end method

.method public isPrimitive()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/Structure;->primitive:Z

    return v0
.end method
