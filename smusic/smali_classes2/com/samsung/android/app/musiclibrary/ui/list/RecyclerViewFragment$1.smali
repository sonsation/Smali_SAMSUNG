.class Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;
.super Ljava/lang/Object;
.source "RecyclerViewFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

.field final synthetic val$itemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 365
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;->val$itemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationsFinished()V
    .locals 1

    .prologue
    .line 368
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;->val$itemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->isDeleteRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->finishActionMode()V

    .line 371
    :cond_0
    return-void
.end method
