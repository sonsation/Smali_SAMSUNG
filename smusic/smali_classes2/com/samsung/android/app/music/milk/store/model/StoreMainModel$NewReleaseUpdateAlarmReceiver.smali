.class public Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$NewReleaseUpdateAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StoreMainModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewReleaseUpdateAlarmReceiver"
.end annotation


# instance fields
.field mSubscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;
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
    .line 861
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$NewReleaseUpdateAlarmReceiver;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 862
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$NewReleaseUpdateAlarmReceiver;->mSubscriber:Lrx/Subscriber;

    .line 863
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 867
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$NewReleaseUpdateAlarmReceiver;->mSubscriber:Lrx/Subscriber;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 868
    return-void
.end method
