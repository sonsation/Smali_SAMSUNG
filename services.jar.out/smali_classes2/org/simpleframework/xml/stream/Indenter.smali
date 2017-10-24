.class Lorg/simpleframework/xml/stream/Indenter;
.super Ljava/lang/Object;
.source "Indenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/stream/Indenter$Cache;
    }
.end annotation


# instance fields
.field private cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

.field private count:I

.field private indent:I

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;-><init>(Lorg/simpleframework/xml/stream/Format;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 76
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/stream/Indenter;-><init>(Lorg/simpleframework/xml/stream/Format;I)V

    .line 77
    return-void
.end method

.method private constructor <init>(Lorg/simpleframework/xml/stream/Format;I)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Lorg/simpleframework/xml/stream/Format;->getIndent()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    .line 90
    new-instance v0, Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/stream/Indenter$Cache;-><init>(I)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    .line 91
    return-void
.end method

.method private create()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [C

    .line 175
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    if-gtz v0, :cond_0

    const-string/jumbo v0, "\n"

    .line 183
    return-object v0

    .line 176
    :cond_0
    const/16 v0, 0xa

    aput-char v0, v1, v2

    const/4 v0, 0x1

    .line 178
    :goto_0
    iget v2, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    if-le v0, v2, :cond_1

    .line 181
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 179
    :cond_1
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private indent(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    .line 162
    return-object v0

    .line 152
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/Indenter$Cache;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_2

    .line 158
    :goto_0
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/Indenter$Cache;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 159
    return-object v0

    .line 155
    :cond_2
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Indenter;->create()Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/stream/Indenter$Cache;->set(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public pop()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;->indent(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    if-gtz v1, :cond_0

    .line 137
    :goto_0
    return-object v0

    .line 135
    :cond_0
    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    iget v2, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    goto :goto_0
.end method

.method public push()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;->indent(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    if-gtz v1, :cond_0

    .line 119
    :goto_0
    return-object v0

    .line 117
    :cond_0
    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    iget v2, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    goto :goto_0
.end method

.method public top()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;->indent(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
