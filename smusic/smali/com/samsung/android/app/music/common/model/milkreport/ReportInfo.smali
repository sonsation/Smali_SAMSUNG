.class public Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;
.super Ljava/lang/Object;
.source "ReportInfo.java"


# instance fields
.field reportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addReport(Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;)V
    .locals 1
    .param p1, "report"    # Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;->reportList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;->reportList:Ljava/util/ArrayList;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;->reportList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public setReport(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "reportArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;->reportList:Ljava/util/ArrayList;

    goto :goto_0
.end method
