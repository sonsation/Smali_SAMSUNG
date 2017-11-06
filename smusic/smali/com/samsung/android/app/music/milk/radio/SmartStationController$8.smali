.class Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SmartStationController.java"


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
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber",
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
    .line 371
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 371
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 4
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 374
    const-string v0, "SmartStationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSmartStation. onNext - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$300(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$200(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$500(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$600(Lcom/samsung/android/app/music/milk/radio/SmartStationController;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 392
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$000(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$000(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8$1;-><init>(Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->startProgressAnimation(Lcom/samsung/android/app/music/milk/radio/animation/SmartStationCreateAnimation$CreateCondition;Landroid/animation/Animator$AnimatorListener;)V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$700(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)V

    goto :goto_0
.end method
