.class Lorg/simpleframework/xml/transform/ArrayMatcher;
.super Ljava/lang/Object;
.source "ArrayMatcher.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Matcher;


# instance fields
.field private final primary:Lorg/simpleframework/xml/transform/Matcher;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/simpleframework/xml/transform/ArrayMatcher;->primary:Lorg/simpleframework/xml/transform/Matcher;

    .line 51
    return-void
.end method

.method private matchArray(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lorg/simpleframework/xml/transform/ArrayMatcher;->primary:Lorg/simpleframework/xml/transform/Matcher;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Matcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Lorg/simpleframework/xml/transform/ArrayTransform;

    invoke-direct {v1, v0, p1}, Lorg/simpleframework/xml/transform/ArrayTransform;-><init>(Lorg/simpleframework/xml/transform/Transform;Ljava/lang/Class;)V

    return-object v1

    .line 94
    :cond_0
    return-object v1
.end method


# virtual methods
.method public match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 67
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Character;

    .line 70
    if-eq v0, v1, :cond_1

    const-class v1, Ljava/lang/String;

    .line 73
    if-eq v0, v1, :cond_2

    .line 76
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/transform/ArrayMatcher;->matchArray(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/transform/CharacterArrayTransform;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/transform/CharacterArrayTransform;-><init>(Ljava/lang/Class;)V

    return-object v1

    .line 71
    :cond_1
    new-instance v1, Lorg/simpleframework/xml/transform/CharacterArrayTransform;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/transform/CharacterArrayTransform;-><init>(Ljava/lang/Class;)V

    return-object v1

    .line 74
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/transform/StringArrayTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/StringArrayTransform;-><init>()V

    return-object v0
.end method
