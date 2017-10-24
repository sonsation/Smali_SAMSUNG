.class Lorg/simpleframework/xml/stream/Indenter$Cache;
.super Ljava/lang/Object;
.source "Indenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/Indenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private count:I

.field private list:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    .line 214
    return-void
.end method

.method private resize(I)V
    .locals 3

    .prologue
    .line 271
    new-array v1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 273
    :goto_0
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 276
    iput-object v1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    .line 277
    return-void

    .line 274
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 259
    return-object v0

    .line 257
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public set(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 240
    :goto_0
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    if-gt p1, v0, :cond_1

    .line 243
    :goto_1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 244
    return-void

    .line 238
    :cond_0
    mul-int/lit8 v0, p1, 0x2

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter$Cache;->resize(I)V

    goto :goto_0

    .line 241
    :cond_1
    iput p1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    return v0
.end method
