.class Lcom/samsung/android/mateservice/common/Logger$Node;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mateservice/common/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field msg:Ljava/lang/String;

.field timeStamp:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mateservice/common/Logger$Node;->timeStamp:J

    .line 95
    iput-object p1, p0, Lcom/samsung/android/mateservice/common/Logger$Node;->msg:Ljava/lang/String;

    .line 93
    return-void
.end method

.method constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/samsung/android/mateservice/common/Logger$Node;->msg:Ljava/lang/String;

    .line 100
    iput-wide p2, p0, Lcom/samsung/android/mateservice/common/Logger$Node;->timeStamp:J

    .line 98
    return-void
.end method
