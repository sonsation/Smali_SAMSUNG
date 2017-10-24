.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field lastTime:J

.field oldAp_temp:I

.field oldBat_temp:I

.field oldChargeMAh:I

.field oldChg_temp:I

.field oldCurrent:I

.field oldHealth:I

.field oldLevel:I

.field oldPa_temp:I

.field oldPlug:I

.field oldPst_temp:I

.field oldSecEvent:I

.field oldState:I

.field oldState2:I

.field oldStatus:I

.field oldTemp:I

.field oldVolt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 4722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4723
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 4724
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    .line 4725
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 4726
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 4727
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 4728
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 4729
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 4730
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 4732
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    .line 4733
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    .line 4734
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    .line 4735
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    .line 4736
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    .line 4737
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    .line 4739
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    .line 4740
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 4741
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    .line 4722
    return-void
.end method

.method private printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    .prologue
    .line 5139
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 5140
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 5141
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5142
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 5143
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5144
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 5138
    return-void
.end method

.method private printStepCpuUidDetails(Ljava/io/PrintWriter;III)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    .prologue
    .line 5130
    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5131
    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5132
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 5133
    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5134
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 5135
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5129
    return-void
.end method


# virtual methods
.method public printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "baseTime"    # J
    .param p5, "checkin"    # Z
    .param p6, "verbose"    # Z

    .prologue
    .line 4765
    if-nez p5, :cond_1

    .line 4766
    const-string/jumbo v2, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4767
    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v2, v2, p3

    const/16 v4, 0x13

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 4768
    const-string/jumbo v2, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4769
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4770
    const-string/jumbo v2, ") "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4781
    :goto_0
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 4782
    if-eqz p5, :cond_0

    .line 4783
    const-string/jumbo v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4785
    :cond_0
    const-string/jumbo v2, "START"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4786
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    .line 4764
    :goto_1
    return-void

    .line 4772
    :cond_1
    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 4773
    const-string/jumbo v2, "h"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 4774
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 4775
    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v2, v2, p3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 4779
    :goto_2
    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    goto :goto_0

    .line 4777
    :cond_2
    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_2

    .line 4787
    :cond_3
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    .line 4788
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    .line 4789
    :cond_4
    if-eqz p5, :cond_5

    .line 4790
    const-string/jumbo v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4792
    :cond_5
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 4793
    const-string/jumbo v2, "RESET:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4794
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    .line 4796
    :cond_6
    const-string/jumbo v2, "TIME:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4797
    if-eqz p5, :cond_7

    .line 4798
    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    goto/16 :goto_1

    .line 4800
    :cond_7
    const-string/jumbo v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4801
    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    .line 4802
    move-object/from16 v0, p2

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 4801
    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4804
    :cond_8
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    .line 4805
    if-eqz p5, :cond_9

    .line 4806
    const-string/jumbo v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4808
    :cond_9
    const-string/jumbo v2, "SHUTDOWN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4809
    :cond_a
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x6

    if-ne v2, v3, :cond_c

    .line 4810
    if-eqz p5, :cond_b

    .line 4811
    const-string/jumbo v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4813
    :cond_b
    const-string/jumbo v2, "*OVERFLOW*"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4815
    :cond_c
    if-nez p5, :cond_2d

    .line 4816
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v3, 0xa

    if-ge v2, v3, :cond_26

    const-string/jumbo v2, "00"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4818
    :cond_d
    :goto_3
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4819
    if-eqz p6, :cond_f

    .line 4820
    const-string/jumbo v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4821
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ltz v2, :cond_e

    .line 4822
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_27

    const-string/jumbo v2, "0000000"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4829
    :cond_e
    :goto_4
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4837
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-eq v2, v3, :cond_10

    .line 4838
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 4839
    if-eqz p5, :cond_2e

    const-string/jumbo v2, ",Bs="

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4840
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch v2, :pswitch_data_0

    .line 4857
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4861
    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v2, v3, :cond_11

    .line 4862
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 4863
    if-eqz p5, :cond_34

    const-string/jumbo v2, ",Bh="

    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4864
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v2, :pswitch_data_1

    .line 4887
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4891
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v2, v3, :cond_12

    .line 4892
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 4893
    if-eqz p5, :cond_3c

    const-string/jumbo v2, ",Bp="

    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4894
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    packed-switch v2, :pswitch_data_2

    .line 4908
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4912
    :cond_12
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    move-object/from16 v0, p2

    iget-short v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq v2, v3, :cond_13

    .line 4913
    move-object/from16 v0, p2

    iget-short v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 4914
    if-eqz p5, :cond_41

    const-string/jumbo v2, ",Bt="

    :goto_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4915
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4917
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    move-object/from16 v0, p2

    iget-char v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq v2, v3, :cond_14

    .line 4918
    move-object/from16 v0, p2

    iget-char v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 4919
    if-eqz p5, :cond_42

    const-string/jumbo v2, ",Bv="

    :goto_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4920
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4923
    :cond_14
    if-nez p5, :cond_1b

    .line 4924
    const/4 v11, 0x0

    .line 4925
    .local v11, "mChanged":Z
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    move-object/from16 v0, p2

    iget-short v3, v0, Landroid/os/BatteryStats$HistoryItem;->current:S

    if-eq v2, v3, :cond_15

    .line 4926
    move-object/from16 v0, p2

    iget-short v2, v0, Landroid/os/BatteryStats$HistoryItem;->current:S

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    .line 4927
    const/4 v11, 0x1

    .line 4929
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    if-eq v2, v3, :cond_16

    .line 4930
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    .line 4931
    const/4 v11, 0x1

    .line 4933
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    if-eq v2, v3, :cond_17

    .line 4934
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    .line 4935
    const/4 v11, 0x1

    .line 4937
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->bat_temp:B

    if-eq v2, v3, :cond_18

    .line 4938
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->bat_temp:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    .line 4939
    const/4 v11, 0x1

    .line 4941
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->chg_temp:B

    if-eq v2, v3, :cond_19

    .line 4942
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->chg_temp:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    .line 4943
    const/4 v11, 0x1

    .line 4945
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-eq v2, v3, :cond_1a

    .line 4946
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    .line 4947
    const/4 v11, 0x1

    .line 4949
    :cond_1a
    if-eqz v11, :cond_1b

    .line 4950
    const-string/jumbo v2, " current="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4951
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4952
    const-string/jumbo v2, " ap_temp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4953
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4954
    const-string/jumbo v2, " pst_temp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4955
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4956
    const-string/jumbo v2, " bat_temp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4957
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4958
    const-string/jumbo v2, " chg_temp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4959
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4960
    const-string/jumbo v2, " pa_temp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4961
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4966
    .end local v11    # "mChanged":Z
    :cond_1b
    if-nez p5, :cond_1d

    .line 4967
    const/4 v11, 0x0

    .line 4968
    .restart local v11    # "mChanged":Z
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:B

    if-eq v2, v3, :cond_1c

    .line 4969
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    .line 4970
    const/4 v11, 0x1

    .line 4973
    :cond_1c
    if-eqz v11, :cond_1d

    .line 4974
    const-string/jumbo v2, " misc_event="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4975
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4979
    .end local v11    # "mChanged":Z
    :cond_1d
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    div-int/lit16 v8, v2, 0x3e8

    .line 4980
    .local v8, "chargeMAh":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eq v2, v8, :cond_1e

    .line 4981
    move-object/from16 v0, p0

    iput v8, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 4982
    if-eqz p5, :cond_43

    const-string/jumbo v2, ",Bcc="

    :goto_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4983
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4985
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 4986
    sget-object v6, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    if-eqz p5, :cond_44

    const/4 v7, 0x0

    :goto_f
    move-object/from16 v2, p1

    .line 4985
    invoke-static/range {v2 .. v7}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 4987
    move-object/from16 v0, p0

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 4988
    sget-object v6, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    if-eqz p5, :cond_45

    const/4 v7, 0x0

    .line 4987
    :goto_10
    const/4 v5, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 4989
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v2, :cond_1f

    .line 4990
    if-eqz p5, :cond_46

    .line 4991
    const-string/jumbo v2, ",wr="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4992
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v2, v2, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5001
    :cond_1f
    :goto_11
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v2, :cond_20

    .line 5002
    if-eqz p5, :cond_47

    sget-object v9, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    .line 5004
    .local v9, "eventNames":[Ljava/lang/String;
    :goto_12
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v3, -0xc001

    and-int v10, v2, v3

    .line 5006
    .local v10, "idx":I
    if-eqz p5, :cond_48

    const/16 v2, 0x13

    if-lt v10, v2, :cond_48

    .line 5032
    .end local v9    # "eventNames":[Ljava/lang/String;
    .end local v10    # "idx":I
    :cond_20
    :goto_13
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5033
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v2, :cond_25

    .line 5034
    if-nez p5, :cond_4f

    .line 5035
    const-string/jumbo v2, "                 Details: cpu="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5036
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5037
    const-string/jumbo v2, "u+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5038
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5039
    const-string/jumbo v2, "s"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5040
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v2, :cond_23

    .line 5041
    const-string/jumbo v2, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5042
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 5043
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 5042
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    .line 5044
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v2, :cond_21

    .line 5045
    const-string/jumbo v2, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5046
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 5047
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 5046
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    .line 5049
    :cond_21
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v2, :cond_22

    .line 5050
    const-string/jumbo v2, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5051
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 5052
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 5051
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    .line 5054
    :cond_22
    const/16 v2, 0x29

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 5056
    :cond_23
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5057
    const-string/jumbo v2, "                          /proc/stat="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5058
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5059
    const-string/jumbo v2, " usr, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5060
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5061
    const-string/jumbo v2, " sys, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5062
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5063
    const-string/jumbo v2, " io, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5064
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5065
    const-string/jumbo v2, " irq, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5066
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5067
    const-string/jumbo v2, " sirq, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5068
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5069
    const-string/jumbo v2, " idle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5070
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    add-int/2addr v2, v3

    .line 5071
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    .line 5070
    add-int/2addr v2, v3

    .line 5071
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    .line 5070
    add-int/2addr v2, v3

    .line 5072
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    .line 5070
    add-int v15, v2, v3

    .line 5073
    .local v15, "totalRun":I
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int v14, v15, v2

    .line 5074
    .local v14, "total":I
    if-lez v14, :cond_24

    .line 5075
    const-string/jumbo v2, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5076
    int-to-float v2, v15

    int-to-float v3, v14

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v12, v2, v3

    .line 5077
    .local v12, "perc":F
    const-string/jumbo v2, "%.1f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5078
    const-string/jumbo v2, " of "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5079
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5080
    .local v13, "sb":Ljava/lang/StringBuilder;
    mul-int/lit8 v2, v14, 0xa

    int-to-long v2, v2

    invoke-static {v13, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5081
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5082
    const-string/jumbo v2, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5084
    .end local v12    # "perc":F
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :cond_24
    const-string/jumbo v2, ", PlatformIdleStat "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5085
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5086
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5124
    .end local v14    # "total":I
    .end local v15    # "totalRun":I
    :cond_25
    :goto_14
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 5125
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    goto/16 :goto_1

    .line 4817
    .end local v8    # "chargeMAh":I
    :cond_26
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v3, 0x64

    if-ge v2, v3, :cond_d

    const-string/jumbo v2, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4823
    :cond_27
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v3, 0x100

    if-ge v2, v3, :cond_28

    const-string/jumbo v2, "000000"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4824
    :cond_28
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v3, 0x1000

    if-ge v2, v3, :cond_29

    const-string/jumbo v2, "00000"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4825
    :cond_29
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_2a

    const-string/jumbo v2, "0000"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4826
    :cond_2a
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x100000

    if-ge v2, v3, :cond_2b

    const-string/jumbo v2, "000"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4827
    :cond_2b
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x1000000

    if-ge v2, v3, :cond_2c

    const-string/jumbo v2, "00"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4828
    :cond_2c
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x10000000

    if-ge v2, v3, :cond_e

    const-string/jumbo v2, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4832
    :cond_2d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v2, v3, :cond_f

    .line 4833
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 4834
    const-string/jumbo v2, ",Bl="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    goto/16 :goto_5

    .line 4839
    :cond_2e
    const-string/jumbo v2, " status="

    goto/16 :goto_6

    .line 4842
    :pswitch_1
    if-eqz p5, :cond_2f

    const-string/jumbo v2, "?"

    :goto_15
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2f
    const-string/jumbo v2, "unknown"

    goto :goto_15

    .line 4845
    :pswitch_2
    if-eqz p5, :cond_30

    const-string/jumbo v2, "c"

    :goto_16
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_30
    const-string/jumbo v2, "charging"

    goto :goto_16

    .line 4848
    :pswitch_3
    if-eqz p5, :cond_31

    const-string/jumbo v2, "d"

    :goto_17
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_31
    const-string/jumbo v2, "discharging"

    goto :goto_17

    .line 4851
    :pswitch_4
    if-eqz p5, :cond_32

    const-string/jumbo v2, "n"

    :goto_18
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_32
    const-string/jumbo v2, "not-charging"

    goto :goto_18

    .line 4854
    :pswitch_5
    if-eqz p5, :cond_33

    const-string/jumbo v2, "f"

    :goto_19
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_33
    const-string/jumbo v2, "full"

    goto :goto_19

    .line 4863
    :cond_34
    const-string/jumbo v2, " health="

    goto/16 :goto_8

    .line 4866
    :pswitch_6
    if-eqz p5, :cond_35

    const-string/jumbo v2, "?"

    :goto_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_35
    const-string/jumbo v2, "unknown"

    goto :goto_1a

    .line 4869
    :pswitch_7
    if-eqz p5, :cond_36

    const-string/jumbo v2, "g"

    :goto_1b
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_36
    const-string/jumbo v2, "good"

    goto :goto_1b

    .line 4872
    :pswitch_8
    if-eqz p5, :cond_37

    const-string/jumbo v2, "h"

    :goto_1c
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_37
    const-string/jumbo v2, "overheat"

    goto :goto_1c

    .line 4875
    :pswitch_9
    if-eqz p5, :cond_38

    const-string/jumbo v2, "d"

    :goto_1d
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_38
    const-string/jumbo v2, "dead"

    goto :goto_1d

    .line 4878
    :pswitch_a
    if-eqz p5, :cond_39

    const-string/jumbo v2, "v"

    :goto_1e
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_39
    const-string/jumbo v2, "over-voltage"

    goto :goto_1e

    .line 4881
    :pswitch_b
    if-eqz p5, :cond_3a

    const-string/jumbo v2, "f"

    :goto_1f
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_3a
    const-string/jumbo v2, "failure"

    goto :goto_1f

    .line 4884
    :pswitch_c
    if-eqz p5, :cond_3b

    const-string/jumbo v2, "c"

    :goto_20
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_3b
    const-string/jumbo v2, "cold"

    goto :goto_20

    .line 4893
    :cond_3c
    const-string/jumbo v2, " plug="

    goto/16 :goto_a

    .line 4896
    :pswitch_d
    if-eqz p5, :cond_3d

    const-string/jumbo v2, "n"

    :goto_21
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_3d
    const-string/jumbo v2, "none"

    goto :goto_21

    .line 4899
    :pswitch_e
    if-eqz p5, :cond_3e

    const-string/jumbo v2, "a"

    :goto_22
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_3e
    const-string/jumbo v2, "ac"

    goto :goto_22

    .line 4902
    :pswitch_f
    if-eqz p5, :cond_3f

    const-string/jumbo v2, "u"

    :goto_23
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_3f
    const-string/jumbo v2, "usb"

    goto :goto_23

    .line 4905
    :pswitch_10
    if-eqz p5, :cond_40

    const-string/jumbo v2, "w"

    :goto_24
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_40
    const-string/jumbo v2, "wireless"

    goto :goto_24

    .line 4914
    :cond_41
    const-string/jumbo v2, " temp="

    goto/16 :goto_c

    .line 4919
    :cond_42
    const-string/jumbo v2, " volt="

    goto/16 :goto_d

    .line 4982
    .restart local v8    # "chargeMAh":I
    :cond_43
    const-string/jumbo v2, " charge="

    goto/16 :goto_e

    .line 4986
    :cond_44
    const/4 v7, 0x1

    goto/16 :goto_f

    .line 4988
    :cond_45
    const/4 v7, 0x1

    goto/16 :goto_10

    .line 4994
    :cond_46
    const-string/jumbo v2, " wake_reason="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4995
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v2, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4996
    const-string/jumbo v2, ":\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4997
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4998
    const-string/jumbo v2, "\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 5003
    :cond_47
    sget-object v9, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .restart local v9    # "eventNames":[Ljava/lang/String;
    goto/16 :goto_12

    .line 5009
    .restart local v10    # "idx":I
    :cond_48
    if-eqz p5, :cond_4a

    const-string/jumbo v2, ","

    :goto_25
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5010
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_4b

    .line 5011
    const-string/jumbo v2, "+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5015
    :cond_49
    :goto_26
    if-ltz v10, :cond_4c

    array-length v2, v9

    if-ge v10, v2, :cond_4c

    .line 5016
    aget-object v2, v9, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5021
    :goto_27
    const-string/jumbo v2, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5022
    if-eqz p5, :cond_4e

    .line 5023
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v2, v2, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    goto/16 :goto_13

    .line 5009
    :cond_4a
    const-string/jumbo v2, " "

    goto :goto_25

    .line 5012
    :cond_4b
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_49

    .line 5013
    const-string/jumbo v2, "-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_26

    .line 5018
    :cond_4c
    if-eqz p5, :cond_4d

    const-string/jumbo v2, "Ev"

    :goto_28
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5019
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_27

    .line 5018
    :cond_4d
    const-string/jumbo v2, "event"

    goto :goto_28

    .line 5025
    :cond_4e
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v2, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5026
    const-string/jumbo v2, ":\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5027
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5028
    const-string/jumbo v2, "\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 5088
    .end local v9    # "eventNames":[Ljava/lang/String;
    .end local v10    # "idx":I
    :cond_4f
    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 5089
    const-string/jumbo v2, "h"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, ",0,Dcpu="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5090
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5091
    const-string/jumbo v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5092
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5093
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v2, :cond_51

    .line 5094
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 5095
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 5094
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    .line 5096
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v2, :cond_50

    .line 5097
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 5098
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 5097
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    .line 5100
    :cond_50
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v2, :cond_51

    .line 5101
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 5102
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 5101
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    .line 5105
    :cond_51
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5106
    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 5107
    const-string/jumbo v2, "h"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, ",0,Dpst="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5108
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5109
    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 5110
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5111
    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 5112
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5113
    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 5114
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5115
    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 5116
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5117
    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 5118
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5119
    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 5120
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5121
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_14

    .line 4840
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 4864
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 4894
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 4744
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 4745
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 4746
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 4747
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 4748
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 4749
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 4750
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 4752
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    .line 4753
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    .line 4754
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    .line 4755
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    .line 4756
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    .line 4757
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    .line 4759
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    .line 4760
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 4743
    return-void
.end method
