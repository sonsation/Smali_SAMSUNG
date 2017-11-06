.class final Lcom/samsung/android/app/music/common/util/SmartStationUtils$2;
.super Ljava/lang/Object;
.source "SmartStationUtils.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/util/SmartStationUtils;->createSmartStationSeedAsync(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$seedBelongs:Ljava/lang/String;

.field final synthetic val$seeds:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/SmartStationUtils$2;->val$seeds:Ljava/util/Collection;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/SmartStationUtils$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/common/util/SmartStationUtils$2;->val$seedBelongs:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/SmartStationUtils$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 86
    .local v0, "added":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/SmartStationUtils$2;->val$seeds:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 87
    .local v1, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isExplicit()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/SmartStationUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->access$000(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    const-string v3, "SmartStationUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSmartStationSeedAsync. do not add explicit track. track - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/SmartStationUtils$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/util/SmartStationUtils$2;->val$seedBelongs:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->fromTrack(Lcom/samsung/android/app/music/common/model/SimpleTrack;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->access$100(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 97
    return-void
.end method
