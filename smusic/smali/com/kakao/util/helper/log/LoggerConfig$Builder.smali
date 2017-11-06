.class public Lcom/kakao/util/helper/log/LoggerConfig$Builder;
.super Ljava/lang/Object;
.source "LoggerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/util/helper/log/LoggerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private defaultTag:Lcom/kakao/util/helper/log/Tag;

.field private ignoreStackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private printLoggerLevel:I

.field private stackPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->printLoggerLevel:I

    .line 101
    sget-object v0, Lcom/kakao/util/helper/log/Tag;->DEFAULT:Lcom/kakao/util/helper/log/Tag;

    iput-object v0, p0, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->defaultTag:Lcom/kakao/util/helper/log/Tag;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->ignoreStackSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public build()Lcom/kakao/util/helper/log/LoggerConfig;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-direct {v0}, Lcom/kakao/util/helper/log/LoggerConfig;-><init>()V

    .line 132
    .local v0, "loggerConfig":Lcom/kakao/util/helper/log/LoggerConfig;
    iget-object v1, p0, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->defaultTag:Lcom/kakao/util/helper/log/Tag;

    invoke-static {v0, v1}, Lcom/kakao/util/helper/log/LoggerConfig;->access$002(Lcom/kakao/util/helper/log/LoggerConfig;Lcom/kakao/util/helper/log/Tag;)Lcom/kakao/util/helper/log/Tag;

    .line 133
    iget v1, p0, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->printLoggerLevel:I

    invoke-static {v0, v1}, Lcom/kakao/util/helper/log/LoggerConfig;->access$102(Lcom/kakao/util/helper/log/LoggerConfig;I)I

    .line 134
    iget-object v1, p0, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->stackPrefix:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kakao/util/helper/log/LoggerConfig;->access$202(Lcom/kakao/util/helper/log/LoggerConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->ignoreStackSet:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/kakao/util/helper/log/LoggerConfig;->access$302(Lcom/kakao/util/helper/log/LoggerConfig;Ljava/util/Set;)Ljava/util/Set;

    .line 136
    return-object v0
.end method

.method public setDefaultTag(Lcom/kakao/util/helper/log/Tag;)Lcom/kakao/util/helper/log/LoggerConfig$Builder;
    .locals 0
    .param p1, "tag"    # Lcom/kakao/util/helper/log/Tag;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->defaultTag:Lcom/kakao/util/helper/log/Tag;

    .line 109
    return-object p0
.end method

.method public setIgnoreSet(Ljava/util/Set;)Lcom/kakao/util/helper/log/LoggerConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kakao/util/helper/log/LoggerConfig$Builder;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return-object p0

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->ignoreStackSet:Ljava/util/Set;

    goto :goto_0
.end method

.method public setPrintLoggerLevel(I)Lcom/kakao/util/helper/log/LoggerConfig$Builder;
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->printLoggerLevel:I

    .line 114
    return-object p0
.end method

.method public setStackPrefix(Ljava/lang/String;)Lcom/kakao/util/helper/log/LoggerConfig$Builder;
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->stackPrefix:Ljava/lang/String;

    .line 127
    return-object p0
.end method
