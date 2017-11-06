.class Lcom/samsung/android/app/music/milk/radio/SmartStationController$3;
.super Ljava/lang/Object;
.source "SmartStationController.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/SmartStationController;->checkBannerTipsObservable()Lrx/Observable;
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
        "Ljava/lang/Boolean;",
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
    .line 268
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$3;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 268
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$3;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    .line 271
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$3;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$100(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.radio.smart_station_guide_show"

    invoke-static {v2, v3, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 272
    .local v1, "showTipCount":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$3;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$100(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.radio.smart_station_guide_url"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "linkUrl":Ljava/lang/String;
    const-string v2, "SmartStationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Banner Tips : Showing count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", link url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$3;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$100(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.radio.smart_station_guide_show"

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 278
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 282
    :goto_0
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 283
    return-void

    .line 280
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method
