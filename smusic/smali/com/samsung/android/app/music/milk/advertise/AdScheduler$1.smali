.class Lcom/samsung/android/app/music/milk/advertise/AdScheduler$1;
.super Ljava/lang/Object;
.source "AdScheduler.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->loadPattern()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkstore/StoreData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/advertise/AdScheduler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/advertise/AdScheduler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler$1;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    const-string v0, "Advert.AdScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onNext(Lcom/samsung/android/app/music/common/model/milkstore/StoreData;)V
    .locals 3
    .param p1, "storeData"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreData;

    .prologue
    .line 112
    const-string v0, "Advert.AdScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNext : adInterval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getAdInterval()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler$1;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getAdInterval()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->parsePattern(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler$1;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->getVideoAdIntervalTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->videoAdIntervalTime:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler$1;->onNext(Lcom/samsung/android/app/music/common/model/milkstore/StoreData;)V

    return-void
.end method
