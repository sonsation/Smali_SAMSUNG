.class Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;
.super Ljava/lang/Object;
.source "RecyclerViewFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionModeListenerImpl"
.end annotation


# instance fields
.field private mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

.field private mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 1019
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>.ActionModeListenerImpl;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1082
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>.ActionModeListenerImpl;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$1100(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$1100(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;->onOptionsItemSelected(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>.ActionModeListenerImpl;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1027
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    .line 1028
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setActionModeEnabled(Z)V

    .line 1030
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getValidItemCount()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1031
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setItemCheckedAll(Z)V

    .line 1034
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$500(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 1035
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1038
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1040
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$800(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1041
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$800(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v5

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v6, v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$900(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->showCheckBox(Landroid/view/View;Z)V

    .line 1043
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$902(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Z)Z

    .line 1044
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->clickArea:Landroid/view/View;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$1100(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1057
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$1100(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    invoke-interface {v2, p1, p2, v5}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;->onCreateOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1058
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 1059
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2, p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->newInstance(Landroid/app/Activity;Landroid/view/Menu;Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    .line 1062
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$1200(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    .line 1063
    .local v1, "enabler":Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;
    invoke-interface {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;->setViewEnabled(Z)V

    goto :goto_1

    .end local v1    # "enabler":Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;
    :cond_3
    move v2, v4

    .line 1041
    goto :goto_0

    .line 1066
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$1300(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1067
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$1300(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;->onListActionModeStarted(Landroid/view/ActionMode;)V

    .line 1069
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_6

    .line 1070
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->notifyDataSetChanged()V

    .line 1072
    :cond_6
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1087
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>.ActionModeListenerImpl;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    if-eqz v1, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->onDestroy()V

    .line 1091
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$800(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1093
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$800(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->hideCheckBox(Landroid/view/View;)V

    .line 1094
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$800(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->addCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1105
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$1200(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    .line 1106
    .local v0, "enabler":Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;->setViewEnabled(Z)V

    goto :goto_1

    .line 1102
    .end local v0    # "enabler":Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setActionModeEnabled(Z)V

    goto :goto_0

    .line 1109
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$1300(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1110
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$1300(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;->onListActionModeFinished(Landroid/view/ActionMode;)V

    .line 1112
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 1113
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->notifyDataSetChanged()V

    .line 1115
    :cond_4
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1119
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>.ActionModeListenerImpl;"
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v0

    .line 1120
    .local v0, "checkedItemCount":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getValidItemCount()I

    move-result v1

    .line 1122
    .local v1, "validItemCount":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    if-nez v0, :cond_1

    .line 1124
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->finishActionMode()V

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$500(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v3, v4, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 1129
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$1100(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1130
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$1100(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    if-nez v2, :cond_3

    .line 1131
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 1130
    :goto_2
    invoke-interface {v3, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;->onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    goto :goto_0

    .line 1126
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1131
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    .line 1132
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->getMenu()Landroid/view/Menu;

    move-result-object v2

    goto :goto_2
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1077
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>.ActionModeListenerImpl;"
    const/4 v0, 0x1

    return v0
.end method
