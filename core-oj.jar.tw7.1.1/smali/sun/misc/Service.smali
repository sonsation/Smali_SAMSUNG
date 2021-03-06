.class public final Lsun/misc/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/Service$LazyIterator;
    }
.end annotation


# static fields
.field private static final prefix:Ljava/lang/String; = "META-INF/services/"


# direct methods
.method static synthetic -wrap0(Ljava/lang/Class;Ljava/net/URL;Ljava/util/Set;)Ljava/util/Iterator;
    .locals 1
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "returned"    # Ljava/util/Set;

    .prologue
    invoke-static {p0, p1, p2}, Lsun/misc/Service;->parse(Ljava/lang/Class;Ljava/net/URL;Ljava/util/Set;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0, p1, p2}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lsun/misc/ServiceConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/misc/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lsun/misc/ServiceConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/misc/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "sce":Lsun/misc/ServiceConfigurationError;
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 140
    throw v0
.end method

.method private static fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V
    .locals 2
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "line"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static installedProviders(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 3
    .param p0, "service"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    .line 425
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 426
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 427
    :goto_0
    if-eqz v0, :cond_0

    .line 428
    move-object v1, v0

    .line 429
    .local v1, "prev":Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 431
    .end local v1    # "prev":Ljava/lang/ClassLoader;
    :cond_0
    invoke-static {p0, v1}, Lsun/misc/Service;->providers(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method private static parse(Ljava/lang/Class;Ljava/net/URL;Ljava/util/Set;)Ljava/util/Iterator;
    .locals 10
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "returned"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v6, 0x0

    .line 218
    .local v6, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 219
    .local v7, "r":Ljava/io/BufferedReader;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v4, "names":Ljava/util/ArrayList;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 222
    .local v6, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "utf-8"

    invoke-direct {v0, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v7    # "r":Ljava/io/BufferedReader;
    .local v2, "r":Ljava/io/BufferedReader;
    const/4 v3, 0x1

    .local v3, "lc":I
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 224
    :try_start_1
    invoke-static/range {v0 .. v5}, Lsun/misc/Service;->parseLine(Ljava/lang/Class;Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/List;Ljava/util/Set;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-gez v3, :cond_0

    .line 229
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 230
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 235
    .end local v3    # "lc":I
    .end local v6    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 231
    .restart local v3    # "lc":I
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    .line 232
    .local v9, "y":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v2    # "r":Ljava/io/BufferedReader;
    .end local v3    # "lc":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "y":Ljava/io/IOException;
    .restart local v7    # "r":Ljava/io/BufferedReader;
    :catch_1
    move-exception v8

    .local v8, "x":Ljava/io/IOException;
    move-object v2, v7

    .line 226
    .end local v7    # "r":Ljava/io/BufferedReader;
    .restart local v2    # "r":Ljava/io/BufferedReader;
    :goto_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 229
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 230
    :cond_3
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 231
    :catch_2
    move-exception v9

    .line 232
    .restart local v9    # "y":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    .end local v2    # "r":Ljava/io/BufferedReader;
    .end local v8    # "x":Ljava/io/IOException;
    .end local v9    # "y":Ljava/io/IOException;
    .restart local v7    # "r":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    move-object v2, v7

    .line 229
    .end local v7    # "r":Ljava/io/BufferedReader;
    .restart local v2    # "r":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 230
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 227
    :cond_5
    :goto_3
    throw v0

    .line 231
    :catch_3
    move-exception v9

    .line 232
    .restart local v9    # "y":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_3

    .line 227
    .end local v9    # "y":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 225
    .restart local v3    # "lc":I
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v8

    .restart local v8    # "x":Ljava/io/IOException;
    goto :goto_1
.end method

.method private static parseLine(Ljava/lang/Class;Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/List;Ljava/util/Set;)I
    .locals 7
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "r"    # Ljava/io/BufferedReader;
    .param p3, "lc"    # I
    .param p4, "names"    # Ljava/util/List;
    .param p5, "returned"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 164
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "ln":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 166
    const/4 v5, -0x1

    return v5

    .line 168
    :cond_0
    const/16 v5, 0x23

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 169
    .local v0, "ci":I
    if-ltz v0, :cond_1

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 170
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 172
    .local v4, "n":I
    if-eqz v4, :cond_7

    .line 173
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_2

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_3

    .line 174
    :cond_2
    const-string v5, "Illegal configuration-file syntax"

    invoke-static {p0, p1, p3, v5}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 175
    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 176
    .local v1, "cp":I
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal provider-class name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, p3, v5}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 178
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 179
    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 180
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v5

    if-nez v5, :cond_5

    const/16 v5, 0x2e

    if-eq v1, v5, :cond_5

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal provider-class name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, p3, v5}, Lsun/misc/Service;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 178
    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 183
    :cond_6
    invoke-interface {p5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 184
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-interface {p5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v1    # "cp":I
    .end local v2    # "i":I
    :cond_7
    add-int/lit8 v5, p3, 0x1

    return v5
.end method

.method public static providers(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 2
    .param p0, "service"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 389
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {p0, v0}, Lsun/misc/Service;->providers(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public static providers(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Iterator;
    .locals 2
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Lsun/misc/Service$LazyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lsun/misc/Service$LazyIterator;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Lsun/misc/Service$LazyIterator;)V

    return-object v0
.end method
