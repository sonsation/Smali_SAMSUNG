.class public abstract Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.super Landroid/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected mBaseTag:Ljava/lang/String;

.field private mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

.field protected mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

.field private final mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

.field protected mLifeCycleLogEnabled:Z

.field protected mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

.field private mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

.field protected mUiType:I

.field private toString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    return-void
.end method


# virtual methods
.method public final addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->addCallbacks(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 325
    return-void
.end method

.method protected final getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 520
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_BIXBY:Z

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 527
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onActivityCreated() - savedInstanceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 116
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " onAttach() - activity: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->reset()V

    .line 74
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 220
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onContextItemSelected item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 224
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 227
    :cond_1
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onContextItemSelected() - item id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " handled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_2
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 78
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mUiType:I

    .line 81
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v1, :cond_0

    .line 82
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " onCreate() - savedInstanceState: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | uiType: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mUiType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 87
    return-void

    .line 82
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 208
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreateContextMenu View : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " menu : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 215
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 216
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 237
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreateOptionsMenu menu : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 243
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 244
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreateView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onDestroy()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->destroy()V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentDestroyed(Landroid/app/Fragment;)V

    .line 194
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 195
    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onDestroyView()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentViewDestroyed(Landroid/app/Fragment;)V

    .line 174
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 175
    return-void
.end method

.method public onDetach()V
    .locals 4

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onDetach()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 203
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onHiddenChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 183
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 291
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    .line 292
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->isLaunchSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->launchSearch()V

    .line 294
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 258
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onOptionsItemSelected item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    const/4 v0, 0x0

    .line 262
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 265
    :cond_1
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onOptionsItemSelected() - item id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " handled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_2
    return v0
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 145
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v1, :cond_0

    .line 146
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onPause()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 149
    .local v0, "a":Landroid/app/Activity;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-eqz v1, :cond_1

    .line 150
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    .end local v0    # "a":Landroid/app/Activity;
    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->removeOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->disable()V

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentPaused(Landroid/app/Fragment;)V

    .line 156
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 157
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 248
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPrepareOptionsMenu menu : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 254
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 130
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v1, :cond_0

    .line 131
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onResume()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 134
    .local v0, "a":Landroid/app/Activity;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-eqz v1, :cond_1

    .line 135
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    .end local v0    # "a":Landroid/app/Activity;
    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->enable()V

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentResumed(Landroid/app/Fragment;)V

    .line 141
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onSaveInstanceState outState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 64
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 121
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onStart()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentStarted(Landroid/app/Fragment;)V

    .line 125
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onStop()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentStopped(Landroid/app/Fragment;)V

    .line 165
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 166
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onViewCreated view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " savedInstanceState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method protected final setSearchLauchable(Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;)V
    .locals 0
    .param p1, "searchLaunchable"    # Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    .line 307
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 4
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mBaseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setUserVisibleHint isVisibleToUser : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_1

    .line 279
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->enable()V

    .line 285
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mLifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->setFragmentUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 286
    invoke-super {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 287
    return-void

    .line 281
    :cond_2
    if-nez p1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->mCommandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->disable()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->toString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 318
    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->toString:Ljava/lang/String;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->toString:Ljava/lang/String;

    return-object v0
.end method
