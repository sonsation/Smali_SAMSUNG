.class Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;
.super Ljava/lang/Object;
.source "DmrPlayerController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 8
    .param p1, "avPlayerState"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 638
    const-string v2, "SV-PlayerDMR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AV player onStateChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    packed-switch p1, :pswitch_data_0

    .line 716
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)V

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 643
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)I

    move-result v1

    .line 644
    .local v1, "state":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)V

    goto :goto_0

    .line 647
    .end local v1    # "state":I
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v3

    invoke-static {v2, v3, v7}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 653
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)V

    goto :goto_0

    .line 656
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)V

    .line 657
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)V

    goto :goto_0

    .line 660
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v3

    const/16 v4, 0x12

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)I

    move-result v1

    .line 662
    .restart local v1    # "state":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)V

    .line 663
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)V

    goto :goto_0

    .line 666
    .end local v1    # "state":I
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v4

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)I

    goto :goto_0

    .line 669
    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 670
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 671
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)Z

    goto :goto_0

    .line 673
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v4

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)I

    goto/16 :goto_0

    .line 677
    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v0

    .line 680
    .local v0, "originState":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)V

    .line 682
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$800(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    .line 683
    invoke-static {v2, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 684
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$802(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)I

    .line 685
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 686
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 687
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v4

    const/16 v5, 0x20

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)I

    .line 694
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1102(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)Z

    .line 695
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onPrepared(Z)V

    .line 697
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 698
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1300(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_CONNECTED:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;->send(I)V

    .line 699
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1400(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 700
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1400(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->initializeMute()V

    .line 702
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2, v7}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1202(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)Z

    .line 710
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2, v7}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)V

    .line 711
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 712
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0

    .line 690
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->pause()V

    goto/16 :goto_0

    .line 704
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    const/16 v3, 0x8

    invoke-static {v2, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 705
    const-string v2, "SMUSIC-SV-PlayerDMR"

    const-string v3, "AV player onSeekCompleted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onSeekComplete()V

    goto :goto_1

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
