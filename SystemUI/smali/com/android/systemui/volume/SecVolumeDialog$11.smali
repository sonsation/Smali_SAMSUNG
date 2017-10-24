.class Lcom/android/systemui/volume/SecVolumeDialog$11;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;->initRow(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;

.field final synthetic val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

.field final synthetic val$stream:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p2, "val$row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p3, "val$stream"    # I

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iput-object p2, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    iput p3, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$stream:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 1138
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get11(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x7

    invoke-static {v4, v6, v5}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1139
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/volume/VolumeDialogController;->setActiveStream(I)V

    .line 1140
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    if-eq v4, v7, :cond_0

    .line 1141
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get40(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    .line 1142
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/volume/VolumeDialogController;->hasVibrator()Z

    move-result v0

    .line 1143
    .local v0, "hasVibrator":Z
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get39(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v4, v7, :cond_6

    .line 1144
    if-eqz v0, :cond_2

    .line 1145
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4, v8, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 1168
    .end local v0    # "hasVibrator":Z
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set20(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;J)J

    .line 1137
    return-void

    .line 1146
    .restart local v0    # "hasVibrator":Z
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get40(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1147
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    goto :goto_0

    .line 1149
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_5

    const/4 v2, 0x1

    .line 1150
    .local v2, "wasZero":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$stream:I

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    :cond_4
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .line 1149
    .end local v2    # "wasZero":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "wasZero":Z
    goto :goto_1

    .line 1153
    .end local v2    # "wasZero":Z
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 1154
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v3, :cond_1

    .line 1155
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$stream:I

    invoke-virtual {v3, v4, v8}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .line 1158
    .end local v0    # "hasVibrator":Z
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_8

    .line 1159
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-get15(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/hardware/display/DisplayManager;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v3, :cond_1

    .line 1160
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "STREAM_SMART_VIEW onClick : mute/unmute set by toggle"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-get15(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/hardware/display/DisplayManager;

    move-result-object v3

    const-string/jumbo v4, "vkev"

    invoke-virtual {v3, v4, v7}, Landroid/hardware/display/DisplayManager;->semSetWifiDisplayConfiguration(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 1165
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_a

    const/4 v1, 0x1

    .line 1166
    .local v1, "vmute":Z
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$stream:I

    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$11;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    :cond_9
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto/16 :goto_0

    .line 1165
    .end local v1    # "vmute":Z
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "vmute":Z
    goto :goto_2
.end method
