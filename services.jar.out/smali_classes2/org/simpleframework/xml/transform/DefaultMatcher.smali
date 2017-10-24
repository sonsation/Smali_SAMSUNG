.class Lorg/simpleframework/xml/transform/DefaultMatcher;
.super Ljava/lang/Object;
.source "DefaultMatcher.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Matcher;


# instance fields
.field private array:Lorg/simpleframework/xml/transform/Matcher;

.field private matcher:Lorg/simpleframework/xml/transform/Matcher;

.field private primitive:Lorg/simpleframework/xml/transform/Matcher;

.field private stock:Lorg/simpleframework/xml/transform/Matcher;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lorg/simpleframework/xml/transform/PrimitiveMatcher;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/PrimitiveMatcher;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->primitive:Lorg/simpleframework/xml/transform/Matcher;

    .line 66
    new-instance v0, Lorg/simpleframework/xml/transform/PackageMatcher;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/PackageMatcher;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->stock:Lorg/simpleframework/xml/transform/Matcher;

    .line 67
    new-instance v0, Lorg/simpleframework/xml/transform/ArrayMatcher;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/transform/ArrayMatcher;-><init>(Lorg/simpleframework/xml/transform/Matcher;)V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->array:Lorg/simpleframework/xml/transform/Matcher;

    .line 68
    iput-object p1, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    .line 69
    return-void
.end method

.method private matchType(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->stock:Lorg/simpleframework/xml/transform/Matcher;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Matcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->array:Lorg/simpleframework/xml/transform/Matcher;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Matcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0

    .line 107
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->primitive:Lorg/simpleframework/xml/transform/Matcher;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Matcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Matcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/DefaultMatcher;->matchType(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    return-object v0
.end method
