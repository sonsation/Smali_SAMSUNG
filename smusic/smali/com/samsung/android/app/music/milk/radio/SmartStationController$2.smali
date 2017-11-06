.class Lcom/samsung/android/app/music/milk/radio/SmartStationController$2;
.super Ljava/lang/Object;
.source "SmartStationController.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/SmartStationController;->loadTodaySmartStation()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$2;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 204
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v1

    .line 208
    .local v1, "today":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$2;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .line 209
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$100(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.radio.date_of_latest_create_smart_station"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 210
    .local v0, "createdDay":I
    if-eq v1, v0, :cond_1

    .line 211
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$2;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$202(Lcom/samsung/android/app/music/milk/radio/SmartStationController;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    :cond_0
    :goto_0
    const-string v2, "SmartStationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadTodaySmartStation. today - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", created - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", station - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$2;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .line 217
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$200(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$2;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$200(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 220
    return-void

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$2;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$300(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$2;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$2;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$100(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->getSmartStationIdInGenre(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$202(Lcom/samsung/android/app/music/milk/radio/SmartStationController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
