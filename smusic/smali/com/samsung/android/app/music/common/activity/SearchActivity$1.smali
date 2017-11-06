.class Lcom/samsung/android/app/music/common/activity/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/SearchActivity;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    .line 335
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->setFullPlayerEnterEnabled(Z)V

    .line 337
    return-void
.end method

.method public onListActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    .line 328
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->setFullPlayerEnterEnabled(Z)V

    .line 330
    return-void
.end method
