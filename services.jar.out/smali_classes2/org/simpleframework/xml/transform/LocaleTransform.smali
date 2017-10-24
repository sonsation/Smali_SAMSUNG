.class Lorg/simpleframework/xml/transform/LocaleTransform;
.super Ljava/lang/Object;
.source "LocaleTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform",
        "<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "_"

    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/transform/LocaleTransform;->pattern:Ljava/util/regex/Pattern;

    .line 60
    return-void
.end method

.method private read([Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 92
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, ""

    aput-object v0, v2, v1

    const-string/jumbo v0, ""

    aput-object v0, v2, v4

    const-string/jumbo v0, ""

    aput-object v0, v2, v5

    move v0, v1

    .line 94
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 99
    new-instance v0, Ljava/util/Locale;

    aget-object v1, v2, v1

    aget-object v3, v2, v4

    aget-object v2, v2, v5

    invoke-direct {v0, v1, v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 95
    :cond_0
    array-length v3, p1

    if-lt v0, v3, :cond_1

    .line 94
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    aget-object v3, p1, v0

    aput-object v3, v2, v0

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/LocaleTransform;->read(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/util/Locale;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 73
    iget-object v0, p0, Lorg/simpleframework/xml/transform/LocaleTransform;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    array-length v1, v0

    if-lt v1, v2, :cond_0

    .line 78
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/transform/LocaleTransform;->read([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/transform/InvalidFormatException;

    const-string/jumbo v1, "Invalid locale %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/transform/InvalidFormatException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    check-cast p1, Ljava/util/Locale;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/LocaleTransform;->write(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
