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
    .param p1, "support"    # Lorg/simpleframework/xml/core/Support;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/DetailExtractor;-><init>(Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/DefaultType;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/DefaultType;)V
    .locals 1
    .param p1, "support"    # Lorg/simpleframework/xml/core/Support;
    .param p2, "override"    # Lorg/simpleframework/xml/DefaultType;

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
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "detail"    # Lorg/simpleframework/xml/core/Detail;
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
    .local v0, "list":Lorg/simpleframework/xml/core/ContactList;
    if-eqz p2, :cond_0

    .line 150
    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->fields:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    :cond_0
    return-object v0
.end method

.method private getMethods(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "detail"    # Lorg/simpleframework/xml/core/Detail;
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
    .local v0, "list":Lorg/simpleframework/xml/core/ContactList;
    if-eqz p2, :cond_0

    .line 193
    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->methods:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 104
    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->details:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Detail;

    .line 106
    .local v0, "detail":Lorg/simpleframework/xml/core/Detail;
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lorg/simpleframework/xml/core/DetailScanner;

    .end local v0    # "detail":Lorg/simpleframework/xml/core/Detail;
    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->override:Lorg/simpleframework/xml/DefaultType;

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/xml/core/DetailScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    .line 108
    .restart local v0    # "detail":Lorg/simpleframework/xml/core/Detail;
    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->details:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-object v0
.end method

.method public getFields(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v2, p0, Lorg/simpleframework/xml/core/DetailExtractor;->fields:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/ContactList;

    .line 126
    .local v1, "list":Lorg/simpleframework/xml/core/ContactList;
    if-nez v1, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v0

    .line 129
    .local v0, "detail":Lorg/simpleframework/xml/core/Detail;
    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/DetailExtractor;->getFields(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v1

    .line 133
    .end local v0    # "detail":Lorg/simpleframework/xml/core/Detail;
    :cond_0
    return-object v1
.end method

.method public getMethods(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v2, p0, Lorg/simpleframework/xml/core/DetailExtractor;->methods:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/ContactList;

    .line 168
    .local v1, "list":Lorg/simpleframework/xml/core/ContactList;
    if-nez v1, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v0

    .line 171
    .local v0, "detail":Lorg/simpleframework/xml/core/Detail;
    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/DetailExtractor;->getMethods(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v1

    .line 175
    .end local v0    # "detail":Lorg/simpleframework/xml/core/Detail;
    :cond_0
    return-object v1
.end method
