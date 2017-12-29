.class public abstract Ljava/util/logging/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
.end method

.method public declared-synchronized formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 6
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "format":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 116
    .local v0, "catalog":Ljava/util/ResourceBundle;
    if-eqz v0, :cond_0

    .line 118
    :try_start_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 126
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v4

    .line 127
    .local v4, "parameters":[Ljava/lang/Object;
    if-eqz v4, :cond_1

    array-length v5, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_2

    :cond_1
    monitor-exit p0

    .line 129
    return-object v3

    .line 119
    .end local v4    # "parameters":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 121
    .local v2, "ex":Ljava/util/MissingResourceException;
    :try_start_3
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 136
    .end local v2    # "ex":Ljava/util/MissingResourceException;
    .restart local v4    # "parameters":[Ljava/lang/Object;
    :cond_2
    :try_start_4
    const-string v5, "{0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    const-string v5, "{1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_4

    .line 138
    :cond_3
    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 137
    :cond_4
    :try_start_5
    const-string v5, "{2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    const-string v5, "{3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    if-gez v5, :cond_3

    monitor-exit p0

    .line 140
    return-object v3

    .line 142
    .end local v4    # "parameters":[Ljava/lang/Object;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    monitor-exit p0

    .line 144
    return-object v3

    .end local v0    # "catalog":Ljava/util/ResourceBundle;
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "format":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 75
    const-string v0, ""

    return-object v0
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 88
    const-string v0, ""

    return-object v0
.end method