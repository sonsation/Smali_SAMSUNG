.class Lorg/simpleframework/xml/core/FieldScanner$FieldKey;
.super Ljava/lang/Object;
.source "FieldScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/FieldScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldKey"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->type:Ljava/lang/Class;

    .line 379
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->name:Ljava/lang/String;

    .line 380
    return-void
.end method

.method private equals(Lorg/simpleframework/xml/core/FieldScanner$FieldKey;)Z
    .locals 2
    .param p1, "other"    # Lorg/simpleframework/xml/core/FieldScanner$FieldKey;

    .prologue
    .line 419
    iget-object v0, p1, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->type:Ljava/lang/Class;

    iget-object v1, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->type:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    .line 420
    const/4 v0, 0x0

    .line 422
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 403
    instance-of v0, p1, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;

    if-eqz v0, :cond_0

    .line 404
    check-cast p1, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->equals(Lorg/simpleframework/xml/core/FieldScanner$FieldKey;)Z

    move-result v0

    .line 406
    :goto_0
    return v0

    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
