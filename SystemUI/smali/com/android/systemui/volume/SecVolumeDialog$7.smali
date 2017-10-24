.class Lcom/android/systemui/volume/SecVolumeDialog$7;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/hardware/display/SemDisplayVolumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;-><init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/SecVolumeDialog$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(IIIZ)V
    .locals 6
    .param p1, "minVol"    # I
    .param p2, "maxVol"    # I
    .param p3, "curVol"    # I
    .param p4, "isMute"    # Z

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 681
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-get28(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v3

    if-eq v3, p1, :cond_6

    .line 682
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-get32(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "row$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 683
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 684
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 697
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v2    # "row$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-get37(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v3

    if-eq v3, p4, :cond_5

    .line 698
    if-eqz p4, :cond_8

    const v0, 0x7f02071d

    .line 700
    .local v0, "iconRes":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-get32(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "row$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 701
    .restart local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 702
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get2(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 703
    invoke-static {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set2(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 704
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 706
    :cond_3
    if-nez p4, :cond_4

    if-nez p3, :cond_a

    .line 707
    :cond_4
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get22(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 708
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 719
    .end local v0    # "iconRes":I
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v2    # "row$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3, p3}, Lcom/android/systemui/volume/SecVolumeDialog;->-set7(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    .line 720
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set16(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    .line 721
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set15(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    .line 722
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3, p4}, Lcom/android/systemui/volume/SecVolumeDialog;->-set20(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    .line 680
    return-void

    .line 688
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-get27(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 689
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-get32(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "row$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 690
    .restart local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    if-ne v3, v4, :cond_7

    .line 691
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/SeekBar;->setMax(I)V

    goto/16 :goto_0

    .line 699
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v2    # "row$iterator":Ljava/util/Iterator;
    :cond_8
    if-nez p3, :cond_9

    const v0, 0x7f02071d

    .restart local v0    # "iconRes":I
    goto/16 :goto_1

    .end local v0    # "iconRes":I
    :cond_9
    const v0, 0x7f02071b

    .restart local v0    # "iconRes":I
    goto/16 :goto_1

    .line 711
    .restart local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .restart local v2    # "row$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->-get21(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 712
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2
.end method
