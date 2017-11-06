.class Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;
.super Ljava/lang/Object;
.source "DexListInputController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    .line 44
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown keyCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    .line 46
    .local v1, "musicRecyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 59
    :cond_1
    :goto_0
    return v0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    .local v0, "handled":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$202(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;Z)Z

    .line 53
    invoke-virtual {v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setCtrlkeyPressed(Z)V

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$302(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;Z)Z

    .line 57
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onKeyUp keyCode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    .line 66
    .local v2, "musicRecyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v1, v5

    .line 120
    :cond_1
    :goto_0
    return v1

    .line 70
    :cond_2
    const/4 v1, 0x0

    .line 71
    .local v1, "handled":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 72
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 107
    :cond_3
    :goto_1
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x8c

    if-ne v6, v7, :cond_4

    .line 108
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    .line 109
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 110
    invoke-virtual {v4}, Landroid/view/View;->showContextMenu()Z

    .line 114
    .end local v4    # "view":Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$200(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 115
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$202(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;Z)Z

    .line 116
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setCtrlkeyPressed(Z)V

    goto :goto_0

    .line 74
    :sswitch_1
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->isActionMode()Z

    move-result v6

    if-nez v6, :cond_5

    .line 75
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 77
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->startActionMode()V

    .line 79
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setItemCheckedAll(Z)V

    .line 80
    const/4 v1, 0x1

    .line 81
    goto :goto_1

    .line 86
    :sswitch_2
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->isActionMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 87
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->deleteItems()V

    .line 89
    :cond_6
    const/4 v1, 0x1

    .line 90
    goto :goto_1

    .line 92
    :sswitch_3
    const/4 v3, 0x0

    .line 93
    .local v3, "searchLaunchable":Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, "activity":Landroid/app/Activity;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v6

    instance-of v6, v6, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v6, :cond_9

    .line 95
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v3

    .end local v3    # "searchLaunchable":Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;
    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    .line 99
    .restart local v3    # "searchLaunchable":Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;
    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    .line 100
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->launchSearch()V

    .line 102
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 96
    :cond_9
    instance-of v6, v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v6, :cond_7

    move-object v3, v0

    .line 97
    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    goto :goto_2

    .line 117
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v3    # "searchLaunchable":Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 118
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$302(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;Z)Z

    goto/16 :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_1
        0x20 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2f -> :sswitch_0
    .end sparse-switch
.end method
