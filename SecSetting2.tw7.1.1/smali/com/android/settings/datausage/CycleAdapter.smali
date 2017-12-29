.class public Lcom/android/settings/datausage/CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CycleAdapter$CycleItem;,
        Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/datausage/CycleAdapter$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsSettedDate:Z

.field private final mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSettedEndTime:J

.field private mSettedStartTime:J

.field private final mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spinner"    # Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;
    .param p3, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;
    .param p4, "isHeader"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 40
    if-eqz p4, :cond_0

    const v0, 0x7f040109

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    .line 35
    iput-wide v2, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    .line 36
    iput-wide v2, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    .line 42
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CycleAdapter;->setDropDownViewResource(I)V

    .line 43
    iput-object p2, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    .line 44
    iput-object p3, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 45
    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v0, p0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    iget-object v1, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, v1}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 39
    return-void

    .line 41
    :cond_0
    const v0, 0x7f0400b4

    goto :goto_0
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I
    .locals 5
    .param p1, "target"    # Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .prologue
    const/4 v4, 0x0

    .line 66
    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v0

    .line 68
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 69
    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 70
    .local v2, "item":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    invoke-virtual {v2, p1}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 71
    return v1

    .line 68
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 75
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    :cond_1
    return v4
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    .line 57
    return-void
.end method

.method public setIsSettedDate(Z)V
    .locals 0
    .param p1, "isSetted"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    .line 49
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    .line 53
    return-void
.end method

.method public updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z
    .locals 29
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "chartData"    # Lcom/android/settingslib/net/ChartData;

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v4}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->getSelectedItem()Ljava/lang/Object;

    move-result-object v25

    .line 85
    check-cast v25, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 87
    .local v25, "previousItem":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->clear()V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 90
    .local v13, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 92
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide v22, 0x7fffffffffffffffL

    .line 93
    .local v22, "historyStart":J
    const-wide/high16 v20, -0x8000000000000000L

    .line 94
    .local v20, "historyEnd":J
    if-eqz p2, :cond_0

    .line 95
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v22

    .line 96
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v20

    .line 99
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 100
    .local v26, "now":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v22, v4

    if-nez v4, :cond_1

    move-wide/from16 v22, v26

    .line 101
    :cond_1
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v20, v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x1

    add-long v20, v26, v4

    .line 103
    :cond_2
    const/4 v11, 0x0

    .line 104
    .local v11, "hasCycles":Z
    if-eqz p1, :cond_6

    .line 106
    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 109
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v8, "cycleEnd":J
    :goto_0
    cmp-long v4, v8, v22

    if-lez v4, :cond_6

    .line 110
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 113
    .local v6, "cycleStart":J
    if-eqz p2, :cond_5

    .line 114
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 115
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v14

    const-wide/16 v14, 0x0

    cmp-long v4, v4, v14

    if-lez v4, :cond_4

    const/16 v24, 0x1

    .line 120
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v24, "includeCycle":Z
    :goto_1
    if-eqz v24, :cond_3

    .line 121
    new-instance v4, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v5, v13

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    .line 122
    const/4 v11, 0x1

    .line 124
    :cond_3
    move-wide v8, v6

    goto :goto_0

    .line 115
    .end local v24    # "includeCycle":Z
    .restart local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_4
    const/16 v24, 0x0

    .restart local v24    # "includeCycle":Z
    goto :goto_1

    .line 117
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v24    # "includeCycle":Z
    :cond_5
    const/16 v24, 0x1

    .restart local v24    # "includeCycle":Z
    goto :goto_1

    .line 128
    .end local v6    # "cycleStart":J
    .end local v8    # "cycleEnd":J
    .end local v24    # "includeCycle":Z
    :cond_6
    if-nez v11, :cond_a

    .line 130
    move-wide/from16 v8, v20

    .line 131
    .restart local v8    # "cycleEnd":J
    :goto_2
    cmp-long v4, v8, v22

    if-lez v4, :cond_a

    .line 132
    const-wide v4, 0x90321000L

    sub-long v6, v8, v4

    .line 135
    .restart local v6    # "cycleStart":J
    if-eqz p2, :cond_9

    .line 136
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 137
    .restart local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v14

    const-wide/16 v14, 0x0

    cmp-long v4, v4, v14

    if-lez v4, :cond_8

    const/16 v24, 0x1

    .line 142
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v24    # "includeCycle":Z
    :goto_3
    if-eqz v24, :cond_7

    .line 143
    new-instance v4, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v5, v13

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    .line 145
    :cond_7
    move-wide v8, v6

    goto :goto_2

    .line 137
    .end local v24    # "includeCycle":Z
    .restart local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_8
    const/16 v24, 0x0

    .restart local v24    # "includeCycle":Z
    goto :goto_3

    .line 139
    .end local v10    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v24    # "includeCycle":Z
    :cond_9
    const/16 v24, 0x1

    .restart local v24    # "includeCycle":Z
    goto :goto_3

    .line 150
    .end local v6    # "cycleStart":J
    .end local v8    # "cycleEnd":J
    .end local v24    # "includeCycle":Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_c

    .line 151
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNDataRank()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 152
    new-instance v4, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-direct {v4, v13}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    .line 153
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    if-eqz v4, :cond_b

    .line 154
    new-instance v12, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    invoke-direct/range {v12 .. v18}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    .line 157
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v17

    .line 158
    .local v17, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setSelection(I)V

    .line 162
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 163
    .local v28, "selectedItem":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const-wide/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v19}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 165
    const/4 v4, 0x0

    return v4

    .line 168
    .end local v17    # "position":I
    .end local v28    # "selectedItem":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    :cond_c
    const/4 v4, 0x1

    return v4
.end method
