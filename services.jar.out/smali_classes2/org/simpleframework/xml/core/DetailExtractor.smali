.class Lorg/simpleframework/xml/core/DetailExtractor;
.super Ljava/lang/Object;
.source "DetailExtractor.java"


# instance fields
.field private final details:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Lorg/simpleframework/xml/core/Detail;",
            ">;"
        }
    .end annotation
.end field

.field private final fields:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Lorg/simpleframework/xml/core/ContactList;",
            ">;"
        }
    .end annotation
.end field

.field private final methods:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Lorg/simpleframework/xml/core/ContactList;",
            ">;"
        }
    .end annotation
.end field

.field private final override:Lorg/simpleframework/xml/DefaultType;

.field private final support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Support;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/DetailExtractor;-><init>(Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/DefaultType;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/DefaultType;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->methods:Lorg/simpleframework/xml/util/Cache;

    .line 88
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->fields:Lorg/simpleframework/xml/util/Cache;

    .line 89
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->details:Lorg/simpleframework/xml/util/Cache;

    .line 90
    iput-object p2, p0, Lorg/simpleframework/xml/core/DetailExtractor;->override:Lorg/simpleframework/xml/DefaultType;

    .line 91
    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->support:Lorg/simpleframework/xml/core/Support;

    .line 92
    return-void
.end method

.method private getFields(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lorg/simpleframework/xml/core/FieldScanner;

    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, p2, v1}, Lorg/simpleframework/xml/core/FieldScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    .line 149
    if-nez p2, :cond_0

    .line 152
    :goto_0
    return-object v0

    .line 150
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->fields:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getMethods(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lorg/simpleframework/xml/core/MethodScanner;

    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, p2, v1}, Lorg/simpleframework/xml/core/MethodScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    .line 192
    if-nez p2, :cond_0

    .line 195
    :goto_0
    return-object v0

    .line 193
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->methods:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->details:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Detail;

    .line 106
    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-object v0

    .line 107
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/DetailScanner;

    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->override:Lorg/simpleframework/xml/DefaultType;

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/xml/core/DetailScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    .line 108
    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->details:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getFields(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->fields:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ContactList;

    .line 126
    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v0

    .line 127
    :cond_1
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/DetailExtractor;->getFields(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    goto :goto_0
.end method

.method public getMethods(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->methods:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ContactList;

    .line 168
    if-eqz v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-object v0

    .line 169
    :cond_1
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_0

    .line 172
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/DetailExtractor;->getMethods(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    goto :goto_0
.end method
