.class Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;
.super Ljava/lang/Object;
.source "EditStationFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 636
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    .line 639
    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 640
    const-string v3, "EditStationFragment"

    const-string/jumbo v4, "onEditorAction : Station Name - Press Done"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "stationRename":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    .line 644
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 645
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .line 646
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->access$000(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getMyStationCountByStationName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 647
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->access$100(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a02cc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->access$200(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0386

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .line 653
    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "Edit_DuplicatedNameDialog"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 658
    .end local v0    # "desc":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->forceHideKeypad(Landroid/view/View;)V

    .line 659
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->clearFocus()V

    .line 660
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    if-eqz v3, :cond_1

    .line 661
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;->updateOptionMenu()V

    .line 664
    .end local v1    # "stationRename":Ljava/lang/String;
    :cond_1
    return v6

    .line 655
    .restart local v1    # "stationRename":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    iput-object v1, v3, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->mCurrentStationName:Ljava/lang/String;

    goto :goto_0
.end method
