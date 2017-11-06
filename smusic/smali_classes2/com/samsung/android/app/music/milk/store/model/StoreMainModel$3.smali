.class Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$3;
.super Ljava/lang/Object;
.source "StoreMainModel.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->registerUpdateTopChartAlarm()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Long;",
        "Lrx/Observable",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

.field final synthetic val$interval:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$3;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$3;->val$interval:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 645
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$3;->call(Ljava/lang/Long;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Long;)Lrx/Observable;
    .locals 3
    .param p1, "aLong"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    const-string v0, "StoreMainModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerUpdateTopChartAlarm:interval : in -- interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$3;->val$interval:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$3;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->requestTopGroup()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
