.class Lcom/android/systemui/qs/customize/SecQSCustomizer$4;
.super Ljava/lang/Object;
.source "SecQSCustomizer.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/SecQSCustomizer;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v7, 0x1

    .line 555
    const/4 v3, 0x1

    .line 556
    .local v3, "retVal":Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 557
    .local v0, "dragEvent":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 558
    .local v2, "pos":I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 559
    .local v1, "parent":Landroid/view/View;
    packed-switch v0, :pswitch_data_0

    .line 599
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 561
    :pswitch_1
    const-string/jumbo v4, "SecQSCustomizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_DROP mWhereAmI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v6}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get9(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4, v7}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set1(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    .line 564
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap3(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    goto :goto_0

    .line 567
    :pswitch_2
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f1303a0

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get9(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v4

    const/16 v5, 0x1388

    if-ne v4, v5, :cond_1

    .line 569
    const-string/jumbo v4, "SecQSCustomizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTIVE TO AVAILABLE mWhereAmI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v6}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get9(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v5, 0x3e8

    invoke-static {v4, v5, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap0(Lcom/android/systemui/qs/customize/SecQSCustomizer;II)V

    goto :goto_0

    .line 571
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f13039c

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get9(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v4

    const/16 v5, 0x1770

    if-ne v4, v5, :cond_2

    .line 573
    const-string/jumbo v4, "SecQSCustomizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AVAILABLE TO ACTIVEmWhereAmI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v6}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get9(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v5, 0x7d0

    invoke-static {v4, v5, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap0(Lcom/android/systemui/qs/customize/SecQSCustomizer;II)V

    goto/16 :goto_0

    .line 575
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f13039d

    if-ne v4, v5, :cond_3

    .line 576
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v5, 0xcc

    invoke-static {v4, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap2(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V

    goto/16 :goto_0

    .line 578
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f13039b

    if-ne v4, v5, :cond_4

    .line 579
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v5, 0xcb

    invoke-static {v4, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap2(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V

    goto/16 :goto_0

    .line 581
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap1(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V

    goto/16 :goto_0

    .line 585
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set1(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    .line 587
    :pswitch_4
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap6(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    goto/16 :goto_0

    .line 590
    :pswitch_5
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get5(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 591
    const-string/jumbo v4, "SecQSCustomizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_DRAG_ENDED mWhereAmI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v6}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get9(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap3(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    .line 593
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4, v7}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set1(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    goto/16 :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
