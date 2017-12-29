.class public Lcom/samsung/android/rlc/util/XMLUtil;
.super Ljava/lang/Object;
.source "XMLUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/samsung/android/rlc/util/XMLUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/XMLUtil;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lcom/samsung/android/rlc/util/XMLUtil;, "Lcom/samsung/android/rlc/util/XMLUtil<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "xmlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/samsung/android/rlc/util/XMLUtil;, "Lcom/samsung/android/rlc/util/XMLUtil<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v3, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v3}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    .line 56
    .local v3, "serializer":Lorg/simpleframework/xml/Serializer;
    const/4 v2, 0x0

    .line 60
    .local v2, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 61
    .local v1, "input":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 62
    const/4 v4, 0x0

    invoke-interface {v3, p2, v1, v4}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;

    move-result-object v2

    .line 64
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-object v2

    .line 67
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/rlc/util/XMLUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v2
.end method

.method public getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/samsung/android/rlc/util/XMLUtil;, "Lcom/samsung/android/rlc/util/XMLUtil<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v2, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v2}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    .line 35
    .local v2, "serializer":Lorg/simpleframework/xml/Serializer;
    const/4 v3, 0x0

    .line 38
    .local v3, "serializeredString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v2, p1, v1}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 41
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .local v4, "serializeredString":Ljava/lang/String;
    :try_start_1
    sget-object v5, Lcom/samsung/android/rlc/util/XMLUtil;->TAG:Ljava/lang/String;

    .end local v3    # "serializeredString":Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 45
    .end local v4    # "serializeredString":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 46
    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "serializeredString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 47
    .end local v3    # "serializeredString":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    return-object v3

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "serializeredString":Ljava/lang/String;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "serializeredString":Ljava/lang/String;
    .local v3, "serializeredString":Ljava/lang/String;
    goto :goto_0
.end method
