.class Lorg/simpleframework/xml/transform/CharacterArrayTransform;
.super Ljava/lang/Object;
.source "CharacterArrayTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# instance fields
.field private final entry:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->entry:Ljava/lang/Class;

    .line 61
    return-void
.end method

.method private read([CI)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->entry:Ljava/lang/Class;

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    .line 97
    :goto_0
    if-lt v0, p2, :cond_0

    .line 100
    return-object v1

    .line 98
    :cond_0
    aget-char v2, p1, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private write(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 136
    :goto_0
    if-lt v0, p2, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 139
    if-nez v2, :cond_1

    .line 136
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 75
    array-length v1, v0

    .line 77
    iget-object v2, p0, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->entry:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    .line 80
    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->read([CI)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    return-object v0
.end method

.method public write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 116
    iget-object v1, p0, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->entry:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    .line 120
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->write(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    check-cast p1, [C

    check-cast p1, [C

    .line 118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
