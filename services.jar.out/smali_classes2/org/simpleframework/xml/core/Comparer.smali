.class Lorg/simpleframework/xml/core/Comparer;
.super Ljava/lang/Object;
.source "Comparer.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "name"


# instance fields
.field private final ignore:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Comparer;-><init>([Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method private isIgnore(Ljava/lang/reflect/Method;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 108
    iget-object v0, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 115
    :cond_0
    return v1

    .line 109
    :cond_1
    iget-object v3, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 110
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 77
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    return v1

    .line 81
    :cond_0
    array-length v2, v3

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 91
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_1
    aget-object v4, v3, v0

    .line 82
    invoke-direct {p0, v4}, Lorg/simpleframework/xml/core/Comparer;->isIgnore(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_3
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 84
    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 86
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 87
    return v1
.end method
