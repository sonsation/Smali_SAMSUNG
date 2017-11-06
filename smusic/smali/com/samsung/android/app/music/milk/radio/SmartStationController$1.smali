.class Lcom/samsung/android/app/music/milk/radio/SmartStationController$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SmartStationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/SmartStationController;->enableIfAvailable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber",
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
    .line 168
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$1;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "showTipsBanner"    # Ljava/lang/Boolean;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$1;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$000(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$1;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$000(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->showTipsBanner(Z)V

    .line 174
    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 168
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$1;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method
