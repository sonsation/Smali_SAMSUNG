.class Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$5;
.super Ljava/lang/Object;
.source "StoreMainModel.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->registerUpdateNewReleaseAlarm()Lrx/Observable;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$5;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 659
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$5;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$5;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->access$300(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;)Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 663
    .local v1, "context":Landroid/content/Context;
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.milk.alarm.store.main.update_new_release"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 664
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    new-instance v7, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$NewReleaseUpdateAlarmReceiver;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$5;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-direct {v7, v0, p1}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$NewReleaseUpdateAlarmReceiver;-><init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Lrx/Subscriber;)V

    .line 666
    .local v7, "receiver":Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$NewReleaseUpdateAlarmReceiver;
    invoke-virtual {v1, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 668
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$5;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$5;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->getNewReleaseBaseUpdateTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$5;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    .line 669
    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->getNewReleaseUpdateInterval()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    .line 668
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->access$400(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Landroid/content/Context;JJ)V

    .line 670
    return-void
.end method
