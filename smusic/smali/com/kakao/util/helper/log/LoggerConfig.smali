.class public Lcom/kakao/util/helper/log/LoggerConfig;
.super Ljava/lang/Object;
.source "LoggerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/util/helper/log/LoggerConfig$Builder;
    }
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
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/kakao/util/helper/log/LoggerConfig;Lcom/kakao/util/helper/log/Tag;)Lcom/kakao/util/helper/log/Tag;
    .locals 0
    .param p0, "x0"    # Lcom/kakao/util/helper/log/LoggerConfig;
    .param p1, "x1"    # Lcom/kakao/util/helper/log/Tag;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/kakao/util/helper/log/LoggerConfig;->defaultTag:Lcom/kakao/util/helper/log/Tag;

    return-object p1
.end method

.method static synthetic access$102(Lcom/kakao/util/helper/log/LoggerConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kakao/util/helper/log/LoggerConfig;
    .param p1, "x1"    # I

    .prologue
    .line 9
    iput p1, p0, Lcom/kakao/util/helper/log/LoggerConfig;->printLoggerLevel:I

    return p1
.end method

.method static synthetic access$202(Lcom/kakao/util/helper/log/LoggerConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/kakao/util/helper/log/LoggerConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/kakao/util/helper/log/LoggerConfig;->stackPrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/kakao/util/helper/log/LoggerConfig;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/kakao/util/helper/log/LoggerConfig;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/kakao/util/helper/log/LoggerConfig;->ignoreStackSet:Ljava/util/Set;

    return-object p1
.end method

.method private getMessageWithTrace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/kakao/util/helper/log/LoggerConfig;->getTraceInfo()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "traceInfo":Ljava/lang/String;
    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "traceInfo":Ljava/lang/String;
    :cond_0
    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTraceInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 35
    .local v0, "stacks":[Ljava/lang/StackTraceElement;
    invoke-direct {p0, v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getTraceInfo([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTraceInfo([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 11
    .param p1, "stacks"    # [Ljava/lang/StackTraceElement;

    .prologue
    const/4 v8, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    .local v5, "stack":Ljava/lang/StackTraceElement;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "loggerName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 42
    .local v0, "className":Ljava/lang/String;
    array-length v9, p1

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v6, p1, v7

    .line 43
    .local v6, "stack1":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v10, p0, Lcom/kakao/util/helper/log/LoggerConfig;->ignoreStackSet:Ljava/util/Set;

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 42
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/kakao/util/helper/log/LoggerConfig;->stackPrefix:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/kakao/util/helper/log/LoggerConfig;->stackPrefix:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 48
    :cond_2
    move-object v5, v6

    .line 53
    .end local v6    # "stack1":Ljava/lang/StackTraceElement;
    :cond_3
    if-nez v5, :cond_4

    .line 54
    const/4 v7, 0x0

    .line 60
    :goto_1
    return-object v7

    .line 57
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "klass":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "method":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    .line 60
    .local v2, "line":I
    const-string v7, "[%s:%s():%d]"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v8

    const/4 v8, 0x1

    aput-object v4, v9, v8

    const/4 v8, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method


# virtual methods
.method public getDefaultTag()Lcom/kakao/util/helper/log/Tag;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kakao/util/helper/log/LoggerConfig;->defaultTag:Lcom/kakao/util/helper/log/Tag;

    return-object v0
.end method

.method public getMessage(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "withStack"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 142
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/kakao/util/helper/log/LoggerConfig;->getMessageWithTrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "msg":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public isPrintLoggable(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 94
    iget v0, p0, Lcom/kakao/util/helper/log/LoggerConfig;->printLoggerLevel:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
