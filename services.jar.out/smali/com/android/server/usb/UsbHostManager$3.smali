.class Lcom/android/server/usb/UsbHostManager$3;
.super Landroid/os/UEventObserver;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbHostManager;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 21
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->-get3(Lcom/android/server/usb/UsbHostManager;)Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19

    .line 610
    :try_start_0
    const-string/jumbo v1, "DEVPATH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 611
    .local v10, "devPath":Ljava/lang/String;
    const-string/jumbo v1, "ACTION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v1, "DEVTYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 613
    .local v12, "devtype":Ljava/lang/String;
    const-string/jumbo v1, "DEVICE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 614
    .local v11, "device":Ljava/lang/String;
    const-string/jumbo v1, "PRODUCT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 615
    .local v16, "product":Ljava/lang/String;
    const-string/jumbo v1, "TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 616
    .local v18, "type":Ljava/lang/String;
    const-string/jumbo v1, "INTERFACE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 618
    .local v15, "interfac":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/usb/UsbHostManager;->-get0(Lcom/android/server/usb/UsbHostManager;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v20, "onUEvent(device) :: action = "

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 619
    const-string/jumbo v20, ", devtype = "

    .line 618
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 619
    const-string/jumbo v20, ", device = "

    .line 618
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 619
    const-string/jumbo v20, ", product = "

    .line 618
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 620
    const-string/jumbo v20, ", type = "

    .line 618
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 620
    const-string/jumbo v20, ", interface = "

    .line 618
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 620
    const-string/jumbo v20, ", devpath = "

    .line 618
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    :try_start_1
    const-string/jumbo v1, "/"

    invoke-virtual {v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 625
    .local v17, "tok":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v7, v17, v1

    .line 626
    .local v7, "Class":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v9, v17, v1

    .line 627
    .local v9, "SubClass":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v8, v17, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 629
    .local v8, "Protocal":Ljava/lang/String;
    if-eqz v7, :cond_0

    if-nez v9, :cond_1

    :cond_0
    monitor-exit v19

    return-void

    :cond_1
    if-eqz v8, :cond_0

    .line 631
    const/4 v1, 0x0

    :try_start_2
    aget-object v1, v17, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 632
    .local v3, "iClass":I
    const/4 v1, 0x1

    aget-object v1, v17, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 633
    .local v4, "iSubClass":I
    const/4 v1, 0x2

    aget-object v1, v17, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 635
    .local v5, "iProtocal":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;IIIZ)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "iClass":I
    .end local v4    # "iSubClass":I
    .end local v5    # "iProtocal":I
    .end local v7    # "Class":Ljava/lang/String;
    .end local v8    # "Protocal":Ljava/lang/String;
    .end local v9    # "SubClass":Ljava/lang/String;
    .end local v17    # "tok":[Ljava/lang/String;
    :goto_0
    monitor-exit v19

    .line 606
    return-void

    .line 638
    :catch_0
    move-exception v13

    .line 639
    .local v13, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/usb/UsbHostManager;->-get0(Lcom/android/server/usb/UsbHostManager;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v20, "ArrayIndexOutOfBoundsException "

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 609
    .end local v2    # "action":Ljava/lang/String;
    .end local v10    # "devPath":Ljava/lang/String;
    .end local v11    # "device":Ljava/lang/String;
    .end local v12    # "devtype":Ljava/lang/String;
    .end local v13    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v15    # "interfac":Ljava/lang/String;
    .end local v16    # "product":Ljava/lang/String;
    .end local v18    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v19

    throw v1

    .line 636
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v10    # "devPath":Ljava/lang/String;
    .restart local v11    # "device":Ljava/lang/String;
    .restart local v12    # "devtype":Ljava/lang/String;
    .restart local v15    # "interfac":Ljava/lang/String;
    .restart local v16    # "product":Ljava/lang/String;
    .restart local v18    # "type":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 637
    .local v14, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/usb/UsbHostManager;->-get0(Lcom/android/server/usb/UsbHostManager;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v20, "Could not parse state or devPath from event "

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
