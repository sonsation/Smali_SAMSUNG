.class Lcom/mapps/android/view/AdInterstitialView$19;
.super Ljava/lang/Object;
.source "AdInterstitialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->StartinterstitialView(IZLjava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$bnext:Z

.field private final synthetic val$h:I

.field private final synthetic val$mediatype:I

.field private final synthetic val$type:I

.field private final synthetic val$viewinfo:Ljava/lang/String;

.field private final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;IIZII)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$viewinfo:Ljava/lang/String;

    iput p3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$type:I

    iput p4, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$mediatype:I

    iput-boolean p5, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$bnext:Z

    iput p6, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$w:I

    iput p7, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$h:I

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 637
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdInterstitialView;->getInterCustomActivity()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    const-class v1, Lcom/mapps/android/view/InterstitialView;

    .line 638
    .local v1, "inter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 639
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "viewinfo"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$viewinfo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    const-string v2, "a_publisher"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$18(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v2, "a_section"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$20(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const-string/jumbo v2, "type"

    iget v3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$type:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    const-string v2, "mediatype"

    iget v3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$mediatype:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    const-string v2, "bnext"

    iget-boolean v3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$bnext:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    const-string v2, "in_right"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$39(Lcom/mapps/android/view/AdInterstitialView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    const-string/jumbo v2, "out_right"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$40(Lcom/mapps/android/view/AdInterstitialView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    const-string v2, "in_left"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$41(Lcom/mapps/android/view/AdInterstitialView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    const-string/jumbo v2, "out_left"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$42(Lcom/mapps/android/view/AdInterstitialView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    const-string v2, "isdialog"

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v3}, Lcom/mapps/android/view/AdInterstitialView;->getViewStyle()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdInterstitialView;->getViewStyle()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 658
    const-string/jumbo v2, "width"

    iget v3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$w:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 659
    const-string v2, "height"

    iget v3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$h:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 662
    :goto_1
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v2, v0}, Lcom/mapps/android/view/AdInterstitialView;->access$38(Lcom/mapps/android/view/AdInterstitialView;Landroid/content/Intent;)V

    .line 663
    return-void

    .line 637
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "inter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdInterstitialView;->getInterCustomActivity()Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_0

    .line 653
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "inter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :pswitch_0
    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 654
    const-string v2, "height"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
