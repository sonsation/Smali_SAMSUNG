.class Lcom/samsung/android/app/music/milk/radio/SmartStationController$4;
.super Ljava/lang/Object;
.source "SmartStationController.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/SmartStationController;->createSmartStationObservable()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Integer;",
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
    .line 300
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$4;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 303
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 312
    :goto_0
    :pswitch_0
    return-void

    .line 305
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$4;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->launchLoginDialog()V

    goto :goto_0

    .line 309
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/SmartStationController$4;->this$0:Lcom/samsung/android/app/music/milk/radio/SmartStationController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/SmartStationController;->launchSeedWarningDialog()V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 300
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/SmartStationController$4;->call(Ljava/lang/Integer;)V

    return-void
.end method
