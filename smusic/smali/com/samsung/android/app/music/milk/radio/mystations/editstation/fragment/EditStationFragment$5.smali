.class Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$5;
.super Ljava/lang/Object;
.source "EditStationFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->initStationNameArea(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field beforeCount:I

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$5;->beforeCount:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x32

    .line 731
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 732
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "after_text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_0

    if-eqz v1, :cond_0

    .line 734
    const v3, 0x7f0a03f8

    .line 735
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 736
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 734
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 738
    .local v2, "msg":Ljava/lang/String;
    invoke-static {v1, v2, v7}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 739
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {p1, v6, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 741
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 726
    iput p2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$5;->beforeCount:I

    .line 727
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$5;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;->updateOptionMenu()V

    .line 722
    :cond_0
    return-void
.end method
