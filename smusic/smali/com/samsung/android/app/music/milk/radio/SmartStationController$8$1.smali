.class Lcom/samsung/android/app/music/milk/radio/SmartStationController$8$1;
.super Lcom/samsung/android/app/music/milk/radio/animation/SimpleAnimatorListener;
.source "SmartStationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->onNext(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8$1;->this$1:Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/animation/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 382
    const-string v0, "SmartStationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd. creating station animation done. so invoke callback to dial. station - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8$1;->this$1:Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    .line 384
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$200(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8$1;->this$1:Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8$1;->this$1:Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$200(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8$1;->this$1:Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/radio/SmartStationController$8;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$500(Lcom/samsung/android/app/music/milk/radio/SmartStationController;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->access$600(Lcom/samsung/android/app/music/milk/radio/SmartStationController;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 386
    return-void
.end method
