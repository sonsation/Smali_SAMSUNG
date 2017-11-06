.class Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;
.super Ljava/lang/Object;
.source "EditStationFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->initStationNameArea(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const v7, 0x7f110134

    const v6, 0x7f110133

    const v5, 0x7f110132

    const/4 v4, 0x0

    const/16 v3, 0x17

    .line 677
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameLine:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 678
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez p2, :cond_2

    .line 679
    const-string v1, "EditStationFragment"

    const-string/jumbo v2, "onFocusChange : Station Name - Focus is changed"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    .line 681
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    .line 682
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->access$300(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 683
    invoke-virtual {v2, v6, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 682
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setTextColor(I)V

    .line 688
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    .line 689
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameLine:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 690
    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 689
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 695
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->access$700(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d05b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 697
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameLine:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 712
    :goto_2
    return-void

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->access$400(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 686
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 685
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setTextColor(I)V

    goto :goto_0

    .line 692
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameLine:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->access$600(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 693
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 692
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 699
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    .line 700
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->access$800(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 701
    invoke-virtual {v2, v7, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 700
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setTextColor(I)V

    .line 707
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameLine:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getPrimaryColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 708
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->access$1000(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d05b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 710
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameLine:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 703
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->access$900(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 704
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 703
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setTextColor(I)V

    goto :goto_3
.end method
