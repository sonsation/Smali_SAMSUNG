.class Lcom/samsung/android/app/music/milk/radio/SmartStationController$7;
.super Ljava/lang/Object;
.source "SmartStationController.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/SmartStationController;->createSmartStationIfAvailable()I
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
        "Ljava/lang/Void;",
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
    .line 341
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$7;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 341
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$7;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$7;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$000(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$7;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$000(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->stopGlowAnimation()V

    .line 348
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 349
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 350
    return-void
.end method
