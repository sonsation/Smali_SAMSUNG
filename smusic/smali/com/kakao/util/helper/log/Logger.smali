.class public Lcom/kakao/util/helper/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/util/helper/log/Logger$DeployPhase;
    }
.end annotation


# static fields
.field private static loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

.field private static withStack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/kakao/util/helper/log/Logger;->initLogConfig()Lcom/kakao/util/helper/log/LoggerConfig;

    move-result-object v0

    sput-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kakao/util/helper/log/Logger;->withStack:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 239
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kakao/util/helper/log/Logger;->dt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 235
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kakao/util/helper/log/Logger;->dt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static dt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static varargs dt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x3

    .line 217
    sget-object v1, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v1, v2}, Lcom/kakao/util/helper/log/LoggerConfig;->isPrintLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "message":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 220
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    invoke-static {p0, v2, v0}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v1

    .line 226
    .end local v0    # "message":Ljava/lang/String;
    :goto_1
    return v1

    .line 222
    .restart local v0    # "message":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0

    .line 226
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 165
    if-nez p0, :cond_0

    const-string v0, ""

    .line 166
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static initLogConfig()Lcom/kakao/util/helper/log/LoggerConfig;
    .locals 6

    .prologue
    .line 37
    const/4 v3, 0x0

    .line 39
    .local v3, "showLogs":Z
    const/4 v1, 0x3

    .line 40
    .local v1, "printLogLevel":I
    if-nez v3, :cond_0

    invoke-static {}, Lcom/kakao/util/helper/log/Logger$DeployPhase;->current()Lcom/kakao/util/helper/log/Logger$DeployPhase;

    move-result-object v4

    sget-object v5, Lcom/kakao/util/helper/log/Logger$DeployPhase;->Release:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    if-ne v4, v5, :cond_0

    .line 41
    const/4 v1, 0x5

    .line 44
    :cond_0
    const-string v4, "1.1.25"

    const-string v5, "SNAPSHOT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    const/4 v4, 0x1

    sput-boolean v4, Lcom/kakao/util/helper/log/Logger;->withStack:Z

    .line 47
    :cond_1
    new-instance v0, Lcom/kakao/util/helper/log/LoggerConfig$Builder;

    invoke-direct {v0}, Lcom/kakao/util/helper/log/LoggerConfig$Builder;-><init>()V

    .line 48
    .local v0, "builder":Lcom/kakao/util/helper/log/LoggerConfig$Builder;
    sget-object v4, Lcom/kakao/util/helper/log/Tag;->DEFAULT:Lcom/kakao/util/helper/log/Tag;

    invoke-virtual {v0, v4}, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->setDefaultTag(Lcom/kakao/util/helper/log/Tag;)Lcom/kakao/util/helper/log/LoggerConfig$Builder;

    move-result-object v4

    const-string v5, "com.kakao.sdk"

    invoke-virtual {v4, v5}, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->setStackPrefix(Ljava/lang/String;)Lcom/kakao/util/helper/log/LoggerConfig$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->setPrintLoggerLevel(I)Lcom/kakao/util/helper/log/LoggerConfig$Builder;

    move-result-object v0

    .line 50
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 51
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v4, Lcom/kakao/util/helper/log/Logger;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v0, v2}, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->setIgnoreSet(Ljava/util/Set;)Lcom/kakao/util/helper/log/LoggerConfig$Builder;

    .line 53
    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->build()Lcom/kakao/util/helper/log/LoggerConfig;

    move-result-object v4

    return-object v4
.end method

.method private static printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I
    .locals 10
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "logLevel"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 57
    if-nez p2, :cond_1

    .line 85
    :cond_0
    return v7

    .line 60
    :cond_1
    sget-object v8, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    sget-boolean v9, Lcom/kakao/util/helper/log/Logger;->withStack:Z

    invoke-virtual {v8, v9, p2}, Lcom/kakao/util/helper/log/LoggerConfig;->getMessage(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "message":Ljava/lang/String;
    sget-object v8, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v8, p1}, Lcom/kakao/util/helper/log/LoggerConfig;->isPrintLoggable(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 64
    if-nez v3, :cond_2

    .line 65
    sget-object v8, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    sget-boolean v9, Lcom/kakao/util/helper/log/Logger;->withStack:Z

    invoke-virtual {v8, v9, p2}, Lcom/kakao/util/helper/log/LoggerConfig;->getMessage(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    :cond_2
    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/kakao/util/helper/log/Tag;->tag()Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "tagMsg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 73
    .local v4, "messageLen":I
    const/4 v0, 0x0

    .local v0, "curIdx":I
    const/4 v1, 0x0

    .line 75
    .local v1, "depth":I
    const/4 v7, 0x0

    .local v7, "totalPrintLen":I
    move v2, v1

    .line 76
    .end local v1    # "depth":I
    .local v2, "depth":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 77
    sub-int v5, v4, v0

    .line 78
    .local v5, "remainLen":I
    const/16 v8, 0x7d0

    if-le v5, v8, :cond_3

    .line 79
    const/16 v5, 0x7d0

    .line 82
    :cond_3
    add-int v8, v0, v5

    invoke-virtual {v3, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "depth":I
    .restart local v1    # "depth":I
    invoke-static {p1, v6, v8, v2}, Lcom/kakao/util/helper/log/Logger;->printLogPartially(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    add-int/2addr v7, v8

    .line 83
    add-int/2addr v0, v5

    move v2, v1

    .line 84
    .end local v1    # "depth":I
    .restart local v2    # "depth":I
    goto :goto_0
.end method

.method private static printLogPartially(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p0, "logLevel"    # I
    .param p1, "tagMsg"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .prologue
    const/16 v8, 0x7d0

    const/4 v7, 0x0

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 91
    .local v0, "msgLen":I
    const/4 v3, 0x0

    .line 92
    .local v3, "writtenLen":I
    const-string v1, ""

    .line 93
    .local v1, "prefix":Ljava/lang/String;
    if-lez p3, :cond_0

    .line 94
    const-string v4, "Cont(%d) "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_0
    if-le v0, v8, :cond_1

    .line 99
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "printMsg":Ljava/lang/String;
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 130
    :goto_1
    :pswitch_0
    return v3

    .line 101
    .end local v2    # "printMsg":Ljava/lang/String;
    :cond_1
    move-object v2, p2

    .restart local v2    # "printMsg":Ljava/lang/String;
    goto :goto_0

    .line 106
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 107
    goto :goto_1

    .line 110
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 111
    goto :goto_1

    .line 114
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 115
    goto :goto_1

    .line 118
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 119
    goto :goto_1

    .line 122
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 123
    goto :goto_1

    .line 126
    :pswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static w(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 318
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kakao/util/helper/log/Logger;->wt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static wt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 306
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static wt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 289
    invoke-static {p1}, Lcom/kakao/util/helper/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kakao/util/helper/log/Logger;->wt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
