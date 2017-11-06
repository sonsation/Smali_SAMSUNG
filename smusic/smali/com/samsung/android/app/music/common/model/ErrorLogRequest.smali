.class public Lcom/samsung/android/app/music/common/model/ErrorLogRequest;
.super Ljava/lang/Object;
.source "ErrorLogRequest.java"


# instance fields
.field private errorLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/ErrorLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/ErrorLogRequest;->errorLogs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addLog(Lcom/samsung/android/app/music/common/model/ErrorLog;)V
    .locals 1
    .param p1, "log"    # Lcom/samsung/android/app/music/common/model/ErrorLog;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/ErrorLogRequest;->errorLogs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/ErrorLogRequest;->errorLogs:Ljava/util/ArrayList;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/ErrorLogRequest;->errorLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method
