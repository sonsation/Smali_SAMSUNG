.class Lcom/mapps/android/view/AdInterstitialView$21;
.super Ljava/lang/Object;
.source "AdInterstitialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->sSPView(IZLcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$bnext:Z

.field private final synthetic val$data:Lcom/mezzo/common/network/data/DataNTSSP;

.field private final synthetic val$mediatype:I

.field private final synthetic val$type:I

.field private final synthetic val$viewinfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;Lcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;IIZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$21;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$21;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    iput-object p3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->val$viewinfo:Ljava/lang/String;

    iput p4, p0, Lcom/mapps/android/view/AdInterstitialView$21;->val$type:I

    iput p5, p0, Lcom/mapps/android/view/AdInterstitialView$21;->val$mediatype:I

    iput-boolean p6, p0, Lcom/mapps/android/view/AdInterstitialView$21;->val$bnext:Z

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 710
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$21;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdInterstitialView;->getInterCustomActivity()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    const-class v1, Lcom/mapps/android/view/InterstitialView;

    .line 711
    .local v1, "inter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$21;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 712
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "sspdata"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 713
    const-string/jumbo v2, "viewinfo"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->val$viewinfo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v2, "a_publisher"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$18(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-string v2, "a_section"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$20(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    const-string/jumbo v2, "type"

    iget v3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->val$type:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 717
    const-string v2, "mediatype"

    iget v3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->val$mediatype:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    const-string v2, "bnext"

    iget-boolean v3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->val$bnext:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 719
    const-string v2, "in_right"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$39(Lcom/mapps/android/view/AdInterstitialView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 720
    const-string/jumbo v2, "out_right"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$40(Lcom/mapps/android/view/AdInterstitialView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 721
    const-string v2, "in_left"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$41(Lcom/mapps/android/view/AdInterstitialView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    const-string/jumbo v2, "out_left"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$42(Lcom/mapps/android/view/AdInterstitialView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 723
    const-string v2, "isdialog"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v3}, Lcom/mapps/android/view/AdInterstitialView;->getViewStyle()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 724
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$21;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdInterstitialView;->getViewStyle()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 731
    const-string/jumbo v2, "width"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getWidth()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 732
    const-string v2, "height"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$21;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 735
    :goto_1
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$21;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v2, v0}, Lcom/mapps/android/view/AdInterstitialView;->access$38(Lcom/mapps/android/view/AdInterstitialView;Landroid/content/Intent;)V

    .line 736
    return-void

    .line 710
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "inter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$21;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdInterstitialView;->getInterCustomActivity()Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_0

    .line 726
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "inter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :pswitch_0
    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 727
    const-string v2, "height"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
