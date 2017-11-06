.class Lorg/simpleframework/xml/core/LabelKey;
.super Ljava/lang/Object;
.source "LabelKey.java"


# instance fields
.field private final label:Ljava/lang/Class;

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V
    .locals 1
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    .line 63
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelKey;->label:Ljava/lang/Class;

    .line 64
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    .line 65
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelKey;->type:Ljava/lang/Class;

    .line 66
    return-void
.end method

.method private equals(Lorg/simpleframework/xml/core/LabelKey;)Z
    .locals 3
    .param p1, "key"    # Lorg/simpleframework/xml/core/LabelKey;

    .prologue
    const/4 v0, 0x0

    .line 107
    if-ne p1, p0, :cond_1

    .line 108
    const/4 v0, 0x1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    iget-object v1, p1, Lorg/simpleframework/xml/core/LabelKey;->label:Ljava/lang/Class;

    iget-object v2, p0, Lorg/simpleframework/xml/core/LabelKey;->label:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 113
    iget-object v1, p1, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    iget-object v2, p0, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 116
    iget-object v1, p1, Lorg/simpleframework/xml/core/LabelKey;->type:Ljava/lang/Class;

    iget-object v2, p0, Lorg/simpleframework/xml/core/LabelKey;->type:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 119
    iget-object v0, p1, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 90
    instance-of v0, p1, Lorg/simpleframework/xml/core/LabelKey;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lorg/simpleframework/xml/core/LabelKey;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/LabelKey;->equals(Lorg/simpleframework/xml/core/LabelKey;)Z

    move-result v0

    .line 93
    :goto_0
    return v0

    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    const-string v0, "key \'%s\' for %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/LabelKey;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/simpleframework/xml/core/LabelKey;->owner:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
